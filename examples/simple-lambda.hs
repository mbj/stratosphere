{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Lens
import Data.Aeson (Value (Array), object)
import qualified Data.ByteString.Lazy.Char8 as B
import Data.Text (Text)
import Stratosphere

main :: IO ()
main = B.putStrLn $ encodeTemplate myTemplate

myTemplate :: Template
myTemplate =
  template
  [ role', lambda ]
  & description ?~ "Lambda example"
  & formatVersion ?~ "2010-09-09"

lambda :: Resource
lambda = (
  resource "LambdaFunction" $
  LambdaFunctionProperties $
  lambdaFunction
    lambdaCode
    "index.handler"
    (GetAtt "IAMRole" "Arn")
    (Literal NodeJS43)
  )
  & dependsOn ?~ [ role' ^. resName ]

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
  IAMRoleProperties $
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
