{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Lens
import Data.Aeson (Value (Array), object)
import Data.Aeson.Text
import qualified Data.ByteString.Lazy.Char8 as B
import Data.Text (Text)
import qualified Data.Text.Lazy as TL
import Stratosphere


-- to curl the endpoints: (substitute your APIGW deployment URL)
-- curl -v -X POST -H "Content-Type: application/json" -d "{\"property\": 3}" "https://k99jn3an8a.execute-api.us-east-1.amazonaws.com/v1/thing"
-- curl -v "https://k99jn3an8a.execute-api.us-east-1.amazonaws.com/v1/thing"

main :: IO ()
main = B.putStrLn $ encodeTemplate myTemplate

myTemplate :: Template
myTemplate = template
  [ readLambdaRole
  , writeLambdaRole
  , readLambda
  , writeLambda
  , readLambdaPermission
  , writeLambdaPermission
  , dynamoDbTable
  , apiGWRestApi
  , apiGWResource
  , getMethod
  , postMethod
  , apiGWDeployment
  ]
  & description ?~ "Simple restful API gateway attached to a Lambda that reads from and writes the request body to a DynamoDB table"
  & formatVersion ?~ "2010-09-09"

apiGWRestApi :: Resource
apiGWRestApi =
  resource "ApiGWRestApi" $
  ApiGatewayRestApiProperties $
  apiGatewayRestApi
  & agraName ?~ "myApi"

apiGWResource :: Resource
apiGWResource =
  resource "ApiGWResource" $
  ApiGatewayResourceProperties $
  apiGatewayResource
    (GetAtt "ApiGWRestApi" "RootResourceId")
    "thing"
    (toRef apiGWRestApi)


getMethod :: Resource
getMethod = (
  resource "ApiGWGetMethod" $
  ApiGatewayMethodProperties $
  apiGatewayMethod
    (Literal GET)
    & agmeAuthorizationType ?~ Literal NONE
    & agmeResourceId ?~ toRef apiGWResource
    & agmeAuthorizerId ?~ toRef apiGWRestApi
    & agmeIntegration ?~ integration
    & agmeMethodResponses ?~ [ methodResponse ]
  )
  & dependsOn ?~ deps [readLambdaPermission]

  where
    integration =
      apiGatewayMethodIntegration
      & agmiType ?~ Literal AWS
      & agmiIntegrationHttpMethod ?~ Literal POST
      & agmiUri ?~ Join "" [
          "arn:aws:apigateway:"
        , Ref "AWS::Region"
        , ":lambda:path/2015-03-31/functions/"
        , GetAtt "ReadTableLambda" "Arn"
        , "/invocations"]
      & agmiIntegrationResponses ?~ [ integrationResponse ]
      & agmiPassthroughBehavior ?~ Literal WHEN_NO_TEMPLATES
      & agmiRequestTemplates ?~ [ ]

    integrationResponse =
      apiGatewayMethodIntegrationResponse
      & agmirResponseTemplates ?~ [ ("application/json", "$input.json('$.body')") ]
      & agmirStatusCode ?~ "200"

    methodResponse =
      apiGatewayMethodMethodResponse
      & agmmrStatusCode ?~ "200"


postMethod :: Resource
postMethod = (
  resource "ApiGWPutMethod" $
  ApiGatewayMethodProperties $
  apiGatewayMethod
    (Literal POST)
    & agmeAuthorizationType ?~ Literal NONE
    & agmeResourceId ?~ toRef apiGWResource
    & agmeAuthorizerId ?~ toRef apiGWRestApi
    & agmeIntegration ?~ integration
    & agmeMethodResponses ?~ [ methodResponse ]
  )
  & dependsOn ?~ deps [writeLambdaPermission]

  where
    integration =
      apiGatewayMethodIntegration
      & agmiType ?~ Literal AWS
      & agmiIntegrationHttpMethod ?~ Literal POST
      & agmiUri ?~ Join "" [
          "arn:aws:apigateway:"
        , Ref "AWS::Region"
        , ":lambda:path/2015-03-31/functions/"
        , GetAtt "WriteTableLambda" "Arn"
        , "/invocations"]
      & agmiIntegrationResponses ?~ [integrationResponse]
      & agmiPassthroughBehavior ?~ Literal WHEN_NO_TEMPLATES
      & agmiRequestTemplates ?~ [ ("application/json", "{\"body\": $input.body}") ]

    integrationResponse =
      apiGatewayMethodIntegrationResponse
      & agmirResponseTemplates ?~ [ ("application/json", "$input.json('$.body')") ]
      & agmirStatusCode ?~ "200"

    methodResponse =
      apiGatewayMethodMethodResponse
      & agmmrStatusCode ?~ "200"

apiGWDeployment :: Resource
apiGWDeployment = (resource "ApiGWDeployment" $
  ApiGatewayDeploymentProperties $
  apiGatewayDeployment
    (toRef apiGWRestApi)
    & agdStageName ?~ "v1"
  )
  & dependsOn ?~ deps [
      apiGWResource
    , getMethod
    , postMethod
    ]

readLambda :: Resource
readLambda = (resource "ReadTableLambda" $
  LambdaFunctionProperties $
  lambdaFunction
    lambdaCode
    "index.handler"
    (GetAtt "ReadLambdaRole" "Arn")
    (Literal NodeJS43)
    & lfFunctionName ?~ "readTable"
  )

  where
    lambdaCode :: LambdaFunctionCode
    lambdaCode = lambdaFunctionCode
      & lfcZipFile ?~ code

    code :: Val Text
    code = "\
    \ var AWS = require('aws-sdk');\n\
    \ var awsConfig = { region: 'us-east-1' }; \n\
    \ AWS.config.apiVersions = { dynamodb: '2012-08-10' }; \n\
    \ var dynamoDoc = new AWS.DynamoDB.DocumentClient(awsConfig); \n\
    \ exports.handler = function(event, context, callback) {\n\
    \   console.log(JSON.stringify(event));\n\
    \   var params = { TableName : 'stratosphere-dynamodb-table', Key: { Id: 'abc123' } }; \n\
    \   dynamoDoc.get(params, function(err, data) { \n\
    \     if (err) { \n\
    \       console.log(\"Error:\", err); \n\
    \       callback(err) \n\
    \     } else { \n\
    \       callback(null, {\"body\": data.Item.Data});\n\
    \     } \n\
    \   });\n\
    \ }\n\
    \ "


writeLambda :: Resource
writeLambda =
  resource "WriteTableLambda" $
  LambdaFunctionProperties $
  lambdaFunction
    lambdaCode
    "index.handler"
    (GetAtt "WriteLambdaRole" "Arn")
    (Literal NodeJS43)
    & lfFunctionName ?~ "writeTable"

  where
    lambdaCode :: LambdaFunctionCode
    lambdaCode = lambdaFunctionCode
      & lfcZipFile ?~ code

    code :: Val Text
    code = "\
    \ var AWS = require('aws-sdk');\n\
    \ var awsConfig = { region: 'us-east-1' }; \n\
    \ AWS.config.apiVersions = { dynamodb: '2012-08-10' }; \n\
    \ var dynamoDoc = new AWS.DynamoDB.DocumentClient(awsConfig); \n\
    \ exports.handler = function(event, context, callback) {\n\
    \   console.log(JSON.stringify(event));\n\
    \   var params = { TableName : 'stratosphere-dynamodb-table', Item: { Id: 'abc123', Data: event.body } }; \n\
    \   dynamoDoc.put(params, function(err, data) { \n\
    \     if (err) { \n\
    \       console.log(\"Error:\", err); \n\
    \       callback(err) \n\
    \     } else { \n\
    \       callback(null, {\"body\": 'success!'});\n\
    \     } \n\
    \   });\n\
    \ }\n\
    \ "

readLambdaRole :: Resource
readLambdaRole = resource "ReadLambdaRole" $
  IAMRoleProperties $
  iamRole
  (Literal $ TL.toStrict $ encodeToLazyText rolePolicyDocumentObject)
  & iamrPolicies ?~ [ executePolicy ]
  & iamrRoleName ?~ "ReadLambdaRole"
  & iamrPath ?~ "/"

  where
    executePolicy =
      iamRolePolicy
      & iamrpPolicyName ?~ "MyLambdaExecutionPolicy"
      & iamrpPolicyDocument ?~
        [ ("Version", "2012-10-17")
        , ("Statement", statement)
        ]

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
          , "dynamodb:GetItem"
          ]

    rolePolicyDocumentObject =
      object
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

writeLambdaRole :: Resource
writeLambdaRole = resource "WriteLambdaRole" $
  IAMRoleProperties $
  iamRole
  (Literal $ TL.toStrict $ encodeToLazyText rolePolicyDocumentObject)
  & iamrPolicies ?~ [ executePolicy ]
  & iamrRoleName ?~ "WriteLambdaRole"
  & iamrPath ?~ "/"

  where
    executePolicy =
      iamRolePolicy
      & iamrpPolicyName ?~ "MyLambdaExecutionPolicy"
      & iamrpPolicyDocument ?~
        [ ("Version", "2012-10-17")
        , ("Statement", statement)
        ]

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
          , "dynamodb:PutItem"
          ]


    rolePolicyDocumentObject =
      object
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

readLambdaPermission :: Resource
readLambdaPermission = resource "ReadLambdaPermission" $
  LambdaPermissionProperties $
  lambdaPermission
    "lambda:*"
    (GetAtt "ReadTableLambda" "Arn")
    "apigateway.amazonaws.com"

writeLambdaPermission :: Resource
writeLambdaPermission = resource "WriteLambdaPermission" $
  LambdaPermissionProperties $
  lambdaPermission
    "lambda:*"
    (GetAtt "WriteTableLambda" "Arn")
    "apigateway.amazonaws.com"

dynamoDbTable :: Resource
dynamoDbTable = resource "Table" $
  DynamoDBTableProperties $
  dynamoDBTable
    attributeDefinitions
    keySchema
    provisionedThroughput
  & ddbtTableName ?~ "stratosphere-dynamodb-table"

  where
    attributeDefinitions = [
        dynamoDBTableAttributeDefinition
        (Literal "Id")
        (Literal S)
      ]
    keySchema = [
        dynamoDBTableKeySchema
        (Literal "Id")
        (Literal HASH)
      ]
    provisionedThroughput =
      dynamoDBTableProvisionedThroughput
      (Literal 1)
      (Literal 1)

deps :: [Resource] -> [Text]
deps = map (^. resName)
