module Spec.LambdaS3Copy (testTree) where

import Data.Aeson (Object, Value (..), object)
import Data.Text (Text)
import Spec.Golden (runGoldenTest)
import Stratosphere (Template (..))
import qualified Stratosphere
import Stratosphere.IAM.Role (Role (..))
import qualified Stratosphere.IAM.Role
import qualified Stratosphere.IAM.Role.PolicyProperty
import Stratosphere.Lambda.Function (CodeProperty (..), Function (..))
import qualified Stratosphere.Lambda.Function
import Stratosphere.Lambda.Permission
import Stratosphere.S3.Bucket (Bucket (..), NotificationConfigurationProperty (..))
import qualified Stratosphere.S3.Bucket
import Test.Tasty (TestTree)
import Prelude (Maybe (..), ($))

template :: Stratosphere.Template
template =
  ( Stratosphere.mkTemplate
      [ role,
        lambda,
        permission,
        incomingS3Bucket,
        outgoingS3Bucket
      ]
  )
    { description = Just "Event triggered S3 bucket to bucket copy example",
      formatVersion = Just "2010-09-09"
    }

lambda :: Stratosphere.Resource
lambda =
  Stratosphere.resource
    "CopyS3ObjectLambda"
    ( ( Stratosphere.Lambda.Function.mkFunction
          lambdaCode
          (Stratosphere.GetAtt "IAMRole" "Arn")
      )
        { code = lambdaCode,
          functionName = Just "copyS3Object",
          handler = Just "index.handler",
          role = Stratosphere.GetAtt "IAMRole" "Arn",
          runtime = Just "nodejs12.x"
        }
    )
  where
    lambdaCode :: Stratosphere.Lambda.Function.CodeProperty
    lambdaCode =
      Stratosphere.Lambda.Function.mkCodeProperty
        { zipFile = Just code
        }

    code :: Stratosphere.Value Text
    code =
      "\
      \ var AWS = require('aws-sdk'); \
      \ var s3 = new AWS.S3({apiVersion: '2006-03-01'}); \
      \ exports.handler = function(event, context, callback) { \
      \  console.log(JSON.stringify(event)); \
      \  var rec = event.Records[0]; \
      \  var bucket = rec.s3.bucket.name; \
      \  var key = rec.s3.object.key; \
      \  s3.copyObject({Bucket: \"stratosphere-s3-copy-outgoing\", Key: key, CopySource: \"stratosphere-s3-copy-incoming/\"+key}, function(err){ \
      \    callback(null, \"copied s3 object\"); \
      \  }); \
      \ } \
      \ "

role :: Stratosphere.Resource
role =
  Stratosphere.resource
    "IAMRole"
    ( (Stratosphere.IAM.Role.mkRole rolePolicyDocumentObject)
        { policies = Just [executePolicy],
          roleName = Just "LambdaBasicExecutionRole",
          path = Just "/"
        }
    )
  where
    rolePolicyDocumentObject :: Object
    rolePolicyDocumentObject =
      [ ("Version", "2012-10-17"),
        ( "Statement",
          object
            [ ("Effect", "Allow"),
              ("Principal", object [("Service", "lambda.amazonaws.com")]),
              ("Action", "sts:AssumeRole")
            ]
        )
      ]

    executePolicy :: Stratosphere.IAM.Role.PolicyProperty.PolicyProperty
    executePolicy =
      Stratosphere.IAM.Role.mkPolicyProperty
        [ ("Version", "2012-10-12"),
          ( "Statement",
            object
              [ ("Effect", "Allow"),
                ("Resource", "*"),
                ( "Action",
                  Array
                    [ "logs:CreateLogGrou",
                      "logs:CreateLogStream",
                      "logs:PutLogEvents",
                      "s3:PutObject",
                      "s3:GetObject"
                    ]
                )
              ]
          )
        ]
        "LabmdaExecutionPolicy"

incomingS3Bucket :: Stratosphere.Resource
incomingS3Bucket =
  Stratosphere.resource
    "IncomingBucket"
    ( Stratosphere.S3.Bucket.mkBucket
        { bucketName = Just "stratosphere-s3-copy-incoming",
          notificationConfiguration =
            Just $
              Stratosphere.S3.Bucket.mkNotificationConfigurationProperty
                { lambdaConfigurations =
                    Just
                      [ Stratosphere.S3.Bucket.mkLambdaConfigurationProperty
                          "s3:ObjectCreated:*"
                          (Stratosphere.GetAtt "CopyS3ObjectLambda" "Arn")
                      ]
                }
        }
    )

outgoingS3Bucket :: Stratosphere.Resource
outgoingS3Bucket =
  Stratosphere.resource
    "OutgoingBucket"
    ( Stratosphere.S3.Bucket.mkBucket
        { bucketName = Just "stratosphere-s3-copy-outgoing"
        }
    )

permission :: Stratosphere.Resource
permission =
  Stratosphere.resource
    "LambdaPermission"
    ( Stratosphere.Lambda.Permission.mkPermission
        "lambda:*"
        (Stratosphere.GetAtt "CopyS3ObjectLambda" "Arn")
        "s3.amazonaws.com"
    )

testTree :: TestTree
testTree = runGoldenTest "lambda-s3-copy.json" template
