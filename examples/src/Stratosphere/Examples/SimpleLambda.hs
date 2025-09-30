module Stratosphere.Examples.SimpleLambda (template) where

import Prelude
import Stratosphere

import qualified Data.Aeson                   as JSON
import qualified Stratosphere.IAM.Role        as IAM
import qualified Stratosphere.Lambda.Function as Lambda

template :: Template
template
  = mkTemplate [role, lambda]
  & set @"Description" "Lambda example"

lambda :: Resource
lambda
  = set @"DependsOn" [role.logicalName]
  . resource "LambdaFunction"
  $ Lambda.mkFunction lambdaCode (GetAtt "IAMRole" "Arn")
  & set @"Handler" "index.handler"
  & set @"Runtime" "nodejs12.x"
  where
    lambdaCode
      = Lambda.mkCodeProperty
      & set @"ZipFile" code

    code :: Value Text
    code = "\
    \ exports.handler = function(event, context, callback) { \
    \  console.log(\"value1 = \" + event.key1); \
    \  console.log(\"value2 = \" + event.key2); \
    \  callback(null, \"some success message\"); \
    \ } \
    \ "

role :: Resource
role
  = resource "IAMRole"
  $ IAM.mkRole rolePolicyDocumentObject
  & set @"Policies" [executePolicy]
  & set @"RoleName" "MyLambdaBasicExecutionRole"
  & set @"Path"     "/"
  where
    executePolicy
      = IAM.mkPolicyProperty
      [ ("Version", "2012-10-17")
      , ("Statement", statement)
      ]
      "MyLambdaExecutionPolicy"

      where
        statement = JSON.object
          [ ("Effect", "Allow")
          , ("Action", actions)
          , ("Resource", "*")
          ]

        actions = JSON.Array
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
        statement = JSON.object
          [ ("Effect", "Allow")
          , ("Principal", JSON.Object [("Service", "lambda.amazonaws.com")])
          , ("Action", "sts:AssumeRole")
          ]

