module Spec.SimpleLambda (testTree) where

import Data.Aeson (Object, Value (..), object)
import Spec.Golden (runGoldenTest)
import qualified Stratosphere
import Stratosphere.IAM.Role (Role (..))
import qualified Stratosphere.IAM.Role
import qualified Stratosphere.IAM.Role.PolicyProperty
import Stratosphere.Lambda.Function (CodeProperty (..), Function (..))
import qualified Stratosphere.Lambda.Function
import qualified Stratosphere.Prelude
import Test.Tasty (TestTree)

template :: Stratosphere.Template
template =
  let Stratosphere.Template {..} = Stratosphere.mkTemplate [role, lambda]
   in Stratosphere.Template
        { description = Stratosphere.Prelude.Just "Lambda example",
          ..
        }

lambda :: Stratosphere.Resource
lambda =
  Stratosphere.resource
    "LambdaFunction"
    ( ( Stratosphere.Lambda.Function.mkFunction
          lambdaCode
          (Stratosphere.GetAtt "IAMRole" "Arn")
      )
        { handler = Stratosphere.Prelude.Just "index.handler",
          runtime = Stratosphere.Prelude.Just "nodejs12.x"
        }
    )
  where
    lambdaCode :: Stratosphere.Lambda.Function.CodeProperty
    lambdaCode =
      Stratosphere.Lambda.Function.mkCodeProperty
        { zipFile = Stratosphere.Prelude.Just code
        }

    code :: Stratosphere.Value Stratosphere.Prelude.Text
    code =
      "\
      \ exports.handler = function(event, context, callback) { \
      \  console.log(\"value1 = \" + event.key1); \
      \  console.log(\"value2 = \" + event.key2); \
      \  callback(null, \"some success message\"); \
      \ } \
      \ "

role :: Stratosphere.Resource
role =
  ( Stratosphere.resource
      "IAMRole"
      (Stratosphere.IAM.Role.mkRole rolePolicyDocument)
        { policies = Stratosphere.Prelude.Just [executionPolicy],
          roleName = Stratosphere.Prelude.Just "MyLambdaBasicExecutionRole",
          path = Stratosphere.Prelude.Just "/"
        }
  )
  where
    rolePolicyDocument :: Object
    rolePolicyDocument =
      [ ("Version", "2012-10-17"),
        ( "Statement",
          object
            [ ("Effect", "Allow"),
              ("Principal", Object [("Service", "lambda.amazonaws.com")]),
              ("Action", "sts:AssumeRole")
            ]
        )
      ]

    executionPolicy :: Stratosphere.IAM.Role.PolicyProperty
    executionPolicy =
      Stratosphere.IAM.Role.PolicyProperty.mkPolicyProperty
        [ ("Version", "2012-10-17"),
          ( "Statement",
            object
              [ ("Effect", "Allow"),
                ( "Action",
                  Array
                    [ "logs:CreateLogGroup",
                      "logs:CreateLogStream",
                      "logs:PutLogEvents"
                    ]
                ),
                ("Resource", "*")
              ]
          )
        ]
        "MyLambdaExecutionPolicy"

testTree :: TestTree
testTree = runGoldenTest "simple-lambda.json" template
