module Stratosphere.Examples.S3Copy (template) where

import Prelude
import Stratosphere

import qualified Data.Aeson                     as JSON
import qualified Stratosphere.IAM.Role          as IAM
import qualified Stratosphere.Lambda.Function   as Lambda
import qualified Stratosphere.Lambda.Permission as Lambda
import qualified Stratosphere.S3.Bucket         as S3

template :: Template
template
  = mkTemplate
  [ role
  , lambda
  , permission
  , incomingS3Bucket
  , outgoingS3Bucket
  ]
  & set @"Description"   "Event triggered S3 bucket to bucket copy example"
  & set @"FormatVersion" "2010-09-09"

lambda :: Resource
lambda
  = set @"DependsOn" [role.name]
  . resource "CopyS3ObjectLambda"
  $ Lambda.mkFunction lambdaCode (GetAtt "IAMRole" "Arn")
  & set @"Code"         lambdaCode
  & set @"FunctionName" "copyS3Object"
  & set @"Handler"      "index.handler"
  & set @"Role"         (GetAtt "IAMRole" "Arn")
  & set @"Runtime"      "nodejs12.x"
  where
    lambdaCode :: Lambda.CodeProperty
    lambdaCode
      = Lambda.mkCodeProperty
      & set @"ZipFile" code

    code :: Value Text
    code = "\
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

role :: Resource
role
  = resource "IAMRole"
  $ IAM.mkRole rolePolicyDocumentObject
  & set @"Policies" [executePolicy]
  & set @"RoleName" "LambdaBasicExecutionRole"
  & set @"Path"     "/"
  where
    executePolicy =
      IAM.mkPolicyProperty
      [ ("Version", "2012-10-17")
      , ("Statement", statement)
      ]
      "LambdaExecutionPolicy"
      where
        statement = JSON.object
          [ ("Effect",   "Allow")
          , ("Action",   actions)
          , ("Resource", "*")
          ]

        actions = JSON.Array
          [ "logs:CreateLogGroup"
          , "logs:CreateLogStream"
          , "logs:PutLogEvents"
          , "s3:PutObject"
          , "s3:GetObject"
          ]

    rolePolicyDocumentObject :: JSON.Object
    rolePolicyDocumentObject =
      [ ("Version",   "2012-10-17")
      , ("Statement", statement)
      ]

      where
        statement = JSON.object
          [ ("Effect",    "Allow")
          , ("Principal", JSON.object [("Service", "lambda.amazonaws.com")])
          , ("Action",    "sts:AssumeRole")
          ]


incomingS3Bucket :: Resource
incomingS3Bucket
  = set @"DependsOn" [lambda.name]
  . resource "IncomingBucket"
  $ S3.mkBucket
  & set @"BucketName"                "stratosphere-s3-copy-incoming"
  & set @"NotificationConfiguration" config
  where
    config
      = S3.mkNotificationConfigurationProperty
      & set @"LambdaConfigurations" [lambdaConfig]

    lambdaConfig
      = S3.mkLambdaConfigurationProperty
        "s3:ObjectCreated:*"
        (GetAtt "CopyS3ObjectLambda" "Arn")

outgoingS3Bucket :: Resource
outgoingS3Bucket
  = resource "OutgoingBucket"
  $ S3.mkBucket
  & set @"BucketName" "stratosphere-s3-copy-outgoing"

permission :: Resource
permission
  = resource "LambdaPermission"
  $ Lambda.mkPermission
    "lambda:*"
    (GetAtt "CopyS3ObjectLambda" "Arn")
    "s3.amazonaws.com"
