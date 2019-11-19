{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Module for hand-written types that are used in generated modules.

module Stratosphere.Types
  ( EnabledState (..)
  , AuthorizerType (..)
  , AuthorizationType (..)
  , HttpMethod (..)
  , LoggingLevel (..)
  , ApiBackendType (..)
  , Period (..)
  , AttributeType (..)
  , KeyType (..)
  , ProjectionType (..)
  , StreamViewType (..)
  , SNSProtocol (..)
  , Runtime (..)
  , PassthroughBehavior (..)
  , CannedACL (..)
  , KinesisFirehoseS3CompressionFormat(..)
  , KinesisFirehoseElasticsearchS3BackupMode(..)
  , KinesisFirehoseNoEncryptionConfig(..)
  ) where

import Data.Aeson
import Data.Text (Text)
import GHC.Generics


data EnabledState
  = ENABLED
  | DISABLED
  deriving (Show, Read, Eq, Generic, ToJSON)

-- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-type
data AuthorizerType
  = TOKEN_AUTH
  | COGNITO_USER_POOLS_AUTH
  deriving (Show, Read, Eq)

instance ToJSON AuthorizerType where
  toJSON TOKEN_AUTH               = String "TOKEN"
  toJSON COGNITO_USER_POOLS_AUTH  = String "COGNITO_USER_POOLS"

data AuthorizationType
  = NONE
  | AWS_IAM
  | CUSTOM
  | COGNITO_USER_POOLS
  deriving (Show, Read, Eq, Generic, ToJSON)

data HttpMethod
  = GET
  | POST
  | PUT
  | HEAD
  | DELETE
  | OPTIONS
  | ANY
  deriving (Show, Read, Eq, Generic, ToJSON)

data LoggingLevel
  = OFF
  | ERROR
  | INFO
  deriving (Show, Read, Eq, Generic, ToJSON)

data ApiBackendType
  = HTTP
  | AWS
  | MOCK
  | HTTP_PROXY
  | AWS_PROXY
  deriving (Show, Read, Eq, Generic, ToJSON)

data Period
  = DAY
  | WEEK
  | MONTH
  deriving (Show, Read, Eq, Generic, ToJSON)

data AttributeType
  = S
  | N
  | B
  deriving (Show, Read, Eq, Generic, ToJSON)

data KeyType
  = HASH
  | RANGE
  deriving (Show, Read, Eq, Generic, ToJSON)

data ProjectionType
  = ProjectKeysOnly
  | ProjectIncluded
  | ProjectAll
  deriving (Show, Read, Eq, Generic)

instance ToJSON ProjectionType where
  toJSON ProjectKeysOnly = String "KEYS_ONLY"
  toJSON ProjectIncluded = String "INCLUDE"
  toJSON ProjectAll      = String "ALL"

data StreamViewType
  = KEYS_ONLY
  | NEW_IMAGE
  | OLD_IMAGE
  | NEW_AND_OLD_IMAGES
  deriving (Show, Read, Eq, Generic, ToJSON)

data SNSProtocol
  = SnsHttp
  | SnsHttps
  | SnsEmail
  | SnsEmailJson
  | SnsSms
  | SnsSqs
  | SnsApplication
  | SnsLambda
  deriving (Show, Read, Eq, Generic)

instance ToJSON SNSProtocol where
  toJSON SnsHttp        = String "http"
  toJSON SnsHttps       = String "https"
  toJSON SnsEmail       = String "email"
  toJSON SnsEmailJson   = String "email-json"
  toJSON SnsSms         = String "sms"
  toJSON SnsSqs         = String "sqs"
  toJSON SnsApplication = String "application"
  toJSON SnsLambda      = String "lambda"

-- | Possible values for AWS Lambda Runtimes. Note that if a valid runtime is
-- missing, please open an issue on the Github repo. In the meantime, however,
-- you can use the 'OtherRuntime' constructor.
--
-- Valid values here
-- https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime
data Runtime
  = NodeJS810
  | NodeJS10x
  | NodeJS12x
  | Java8
  | Java11
  | Python27
  | Python36
  | Python37
  | Python38
  | DotNetCore10
  | DotNetCore21
  | Go1X
  | Ruby25
  | OtherRuntime Text
  deriving (Show, Read, Eq, Generic)

instance ToJSON Runtime where
  toJSON NodeJS810 = String "nodejs8.10"
  toJSON NodeJS10x = String "nodejs10.x"
  toJSON NodeJS12x = String "nodejs12.x"
  toJSON Java8 = String "java8"
  toJSON Java11 = String "java11"
  toJSON Python27 = String "python2.7"
  toJSON Python36 = String "python3.6"
  toJSON Python37 = String "python3.7"
  toJSON Python38 = String "python3.8"
  toJSON DotNetCore10 = String "dotnetcore1.0"
  toJSON DotNetCore21 = String "dotnetcore2.1"
  toJSON Go1X = String "go1.x"
  toJSON Ruby25 = String "ruby2.5"
  toJSON (OtherRuntime other) = String other

-- | See:
-- https://docs.aws.amazon.com/apigateway/api-reference/link-relation/integration-put/#passthroughBehavior
data PassthroughBehavior
  = WHEN_NO_MATCH
  | WHEN_NO_TEMPLATES
  | NEVER
  deriving (Show, Read, Eq, Generic, ToJSON)

-- | Amazon S3 supports a set of predefined grants, known as canned ACLs. Each
-- canned ACL has a predefined a set of grantees and permissions. The following
-- table lists the set of canned ACLs and the associated predefined grants.
-- See:
-- http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl
data CannedACL
  = AuthenticatedRead
  | AwsExecRead
  | BucketOwnerRead
  | BucketOwnerFullControl
  | LogDeliveryWrite
  | Private
  | PublicRead
  | PublicReadWrite
  deriving (Show, Read, Eq, Generic, ToJSON)

-- | See:
-- http://docs.aws.amazon.com/firehose/latest/APIReference/API_S3DestinationConfiguration.html
data KinesisFirehoseS3CompressionFormat
  = KFS3Uncompressed
  | KFS3Gzip
  | KFS3Zip
  | KFS3Snappy
  deriving (Show, Read, Eq, Generic)


instance ToJSON KinesisFirehoseS3CompressionFormat where
  toJSON KFS3Uncompressed = String "UNCOMPRESSED"
  toJSON KFS3Gzip         = String "GZIP"
  toJSON KFS3Zip          = String "ZIP"
  toJSON KFS3Snappy       = String "SNAPPY"

-- | See:
-- http://docs.aws.amazon.com/firehose/latest/APIReference/API_ElasticsearchDestinationConfiguration.html
data KinesisFirehoseElasticsearchS3BackupMode
  = KFS3FailedDocumentsOnly
  | KFS3AllDocuments
  deriving (Show, Read, Eq, Generic)


instance ToJSON KinesisFirehoseElasticsearchS3BackupMode where
  toJSON KFS3FailedDocumentsOnly = String "FailedDocumentsOnly"
  toJSON KFS3AllDocuments        = String "AllDocuments"

-- | See:
-- http://docs.aws.amazon.com/firehose/latest/APIReference/API_EncryptionConfiguration.html
data KinesisFirehoseNoEncryptionConfig = KinesisFirehoseNoEncryptionConfig
     deriving (Show, Read, Eq, Generic)


instance ToJSON KinesisFirehoseNoEncryptionConfig where
  toJSON _ = String "NoEncryption"
