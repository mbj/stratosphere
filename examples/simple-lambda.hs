module Main where

import Control.Lens
import Data.Aeson (Value (Array), object)
import Data.Text (Text)
import Prelude
import Stratosphere

import qualified Data.Aeson                 as JSON
import qualified Data.ByteString.Lazy.Char8 as B

main :: IO ()
main = B.putStrLn $ encodeTemplate myTemplate

myTemplate :: Template
myTemplate =
  template
  [ role', lambda ]
  & templateDescription ?~ "Lambda example"
  & templateFormatVersion ?~ "2010-09-09"

lambda :: Resource
lambda = (
  resource "LambdaFunction" $
  lambdaFunction
    lambdaCode
    "index.handler"
    (GetAtt "IAMRole" "Arn")
    "nodejs12.x"
  )
  & resourceDependsOn ?~ [ role' ^. resourceName ]

lambdaCode :: LambdaFunctionCode
lambdaCode = lambdaFunctionCode
  & lfcZipFile ?~ code

code :: Val Text
code = "\
\ exports.handler = function(event, context, callback) { \
\  console.log(\"value1 = \" + event.key1); \
\  console.log(\"value2 = \" + event.key2); \
\  callback(null, \"some success message\"); \
\ } \
\ "


role' :: Resource
role' =
  resource "IAMRole" $
  iamRole
  rolePolicyDocumentObject
  & iamrPolicies ?~ [ executePolicy ]
  & iamrRoleName ?~ "MyLambdaBasicExecutionRole"
  & iamrPath ?~ "/"

  where
    executePolicy =
      iamRolePolicy
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
          ]

    rolePolicyDocumentObject :: JSON.Object
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
