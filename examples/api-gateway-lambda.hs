{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Control.Lens
import           Data.Aeson                 (Value (Array), object)
import qualified Data.ByteString.Lazy.Char8 as B
import           Data.Text                  (Text)
import           Stratosphere


-- to curl the endpoint: (substitute your APIGW deployment URL)
-- curl -v -X POST -H "Content-Type: application/json" -d "{\"description\": \"test task\"}" "https://t04rmwbtgj.execute-api.us-east-1.amazonaws.com/v1/stack"

main :: IO ()
main = B.putStrLn $ encodeTemplate myTemplate

myTemplate :: Template
myTemplate = template
  [ role
  , incomingS3Bucket
  , lambda
  , permission
  , apiGWRestApi
  , apiGWResource
  , apiGWMethod
  , apiGWDeployment
  ]
  & description ?~ "Simple api gateway attached to a lambda that writes the request body to a S3 object"
  & formatVersion ?~ "2010-09-09"

apiGWRestApi :: Resource
apiGWRestApi = (resource "ApiGWRestApi" $
  ApiGatewayRestApiProperties $
  apiGatewayRestApi
    "myApi"
  )

apiGWResource :: Resource
apiGWResource = (resource "ApiGWResource" $
  ApiGatewayResourceProperties $
  apiGatewayResource
    (GetAtt "ApiGWRestApi" "RootResourceId")
    "stack"
    (toRef apiGWRestApi)
  )
  & dependsOn ?~ deps [ apiGWRestApi ]

apiGWMethod :: Resource
apiGWMethod = (resource "ApiGWMethod" $
  ApiGatewayVerbProperties $
  apiGatewayVerb
    "NONE"
    "POST"
    (toRef apiGWResource)
    (toRef apiGWRestApi)
    & agvIntegration ?~ integration
    & agvMethodResponses ?~ [ methodResponse ]
  )
  & dependsOn ?~ deps [
      apiGWRestApi
    , apiGWResource
    , lambda
    ]

  where
    integration = apiGatewayIntegration "AWS"
      & agiIntegrationHttpMethod ?~ "POST"
      & agiUri ?~ (Join "" [
          "arn:aws:apigateway:"
        , Ref "AWS::Region"
        , ":lambda:path/2015-03-31/functions/"
        , GetAtt "WriteS3ObjectLambda" "Arn"
        , "/invocations"])
      & agiIntegrationResponses ?~ [ integrationResponse ]
      & agiPassthroughBehavior ?~ "NEVER"
      & agiRequestTemplates ?~ [ ("application/json", "{\"body\": $input.body}") ]

    integrationResponse = apiGatewayIntegrationResponse
      & agirResponseTemplates ?~ [ ("application/json", "$input.json('$.body')") ]
      & agirStatusCode ?~ "200"

    methodResponse = apiGatewayMethodResponse "200"

apiGWDeployment :: Resource
apiGWDeployment = (resource "ApiGWDeployment" $
  ApiGatewayDeploymentProperties $
  apiGatewayDeployment
    (toRef apiGWRestApi)
    & agdStageName ?~ "v1"
  )
  & dependsOn ?~ deps [
      apiGWRestApi
    , apiGWMethod
    ]

lambda :: Resource
lambda = (resource "WriteS3ObjectLambda" $
  LambdaFunctionProperties $
  lambdaFunction
    lambdaCode
    "index.handler"
    (GetAtt "IAMRole" "Arn")
    "nodejs4.3"
    & lfFunctionName ?~ "writeS3Object"
  )
  & dependsOn ?~ deps [ role ]

  where
    lambdaCode :: LambdaFunctionCode
    lambdaCode = lambdaFunctionCode
      & lfcZipFile ?~ code

    code :: Val Text
    code = "\
    \ var AWS = require('aws-sdk');\n\
    \ var s3 = new AWS.S3({apiVersion: '2006-03-01'});\n\
    \ exports.handler = function(event, context, callback) {\n\
    \   console.log(JSON.stringify(event));\n\
    \   s3.putObject({Bucket: \"stratosphere-api-gateway-lambda-incoming\", Key: \"content.json\", ContentType: \"application/json\", Body: JSON.stringify(event.body)}, function(err){\n\
    \     if (err) { \n\
    \       console.log(\"Error:\", err); \n\
    \       callback(err) \n\
    \     } else { \n\
    \       callback(null, {\"body\": event.body});\n\
    \     } \n\
    \   });\n\
    \ }\n\
    \ "

role :: Resource
role = resource "IAMRole" $
  IAMRoleProperties $
  iamRole rolePolicyDocumentObject
  & iamrPolicies ?~ [ executePolicy ]
  & iamrRoleName ?~ "MyLambdaBasicExecutionRole"
  & iamrPath ?~ "/"

  where
    executePolicy =
      iamPolicies
      [ ("Version", "2012-10-17")
      , ("Statement", statement)
      ]
      "MyLambdaExecutionPolicy"

      where
        statement = object
          [ ("Effect", "Allow")
          , ("Action", actions)
          , ("Resource", "*")
          ]

        actions = Array
          [ "logs:CreateLogGroup"
          , "logs:CreateLogStream"
          , "logs:PutLogEvents"
          , "s3:PutObject"
          ]


    rolePolicyDocumentObject =
      [ ("Version", "2012-10-17")
      , ("Statement", statement)
      ]

      where
        statement = object
          [ ("Effect", "Allow")
          , ("Principal", principal)
          , ("Action", "sts:AssumeRole")
          ]

        principal = object
          [ ("Service", "lambda.amazonaws.com") ]

incomingS3Bucket :: Resource
incomingS3Bucket = resource "IncomingBucket" $
  BucketProperties $
  bucket
  & bBucketName ?~ "stratosphere-api-gateway-lambda-incoming"

permission :: Resource
permission = resource "LambdaPermission" $
  LambdaPermissionProperties $
  lambdaPermission
    "lambda:*"
    (GetAtt "WriteS3ObjectLambda" "Arn")
    "apigateway.amazonaws.com"

deps :: [Resource] -> [Text]
deps = map (\d -> d ^. resName)
