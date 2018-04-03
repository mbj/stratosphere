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
import Data.Text (Text, unpack)
import GHC.Generics


data EnabledState
  = ENABLED
  | DISABLED
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)

-- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-type
data AuthorizerType
  = TOKEN_AUTH
  | COGNITO_USER_POOLS_AUTH
  deriving (Show, Read, Eq)

instance FromJSON AuthorizerType where
  parseJSON = withText "AuthorizerType" parse
    where
      parse "TOKEN"               = pure TOKEN_AUTH
      parse "COGNITO_USER_POOLS"  = pure COGNITO_USER_POOLS_AUTH
      parse authorizerType = fail ("Unexpected authorizer type " ++ unpack authorizerType)

instance ToJSON AuthorizerType where
  toJSON TOKEN_AUTH               = String "TOKEN"
  toJSON COGNITO_USER_POOLS_AUTH  = String "COGNITO_USER_POOLS"


data AuthorizationType
  = NONE
  | AWS_IAM
  | CUSTOM
  | COGNITO_USER_POOLS
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)

data HttpMethod
  = GET
  | POST
  | PUT
  | HEAD
  | DELETE
  | OPTIONS
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)

data LoggingLevel
  = OFF
  | ERROR
  | INFO
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)

data ApiBackendType
  = HTTP
  | AWS
  | MOCK
  | HTTP_PROXY
  | AWS_PROXY
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)

data Period
  = DAY
  | WEEK
  | MONTH
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)

data AttributeType
  = S
  | N
  | B
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)

data KeyType
  = HASH
  | RANGE
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)


data ProjectionType
  = ProjectKeysOnly
  | ProjectIncluded
  | ProjectAll
  deriving (Show, Read, Eq, Generic)

instance FromJSON ProjectionType where
  parseJSON = withText "ProjectionType" parse
    where
      parse "KEYS_ONLY"     = pure ProjectKeysOnly
      parse "INCLUDE"       = pure ProjectIncluded
      parse "ALL"           = pure ProjectAll
      parse projectionType  = fail ("Unexpected projection type " ++ unpack projectionType)

instance ToJSON ProjectionType where
  toJSON ProjectKeysOnly = String "KEYS_ONLY"
  toJSON ProjectIncluded = String "INCLUDE"
  toJSON ProjectAll      = String "ALL"


data StreamViewType
  = KEYS_ONLY
  | NEW_IMAGE
  | OLD_IMAGE
  | NEW_AND_OLD_IMAGES
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)

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


instance FromJSON SNSProtocol where
  parseJSON = withText "SNSProtocol" parse
    where
      parse "http"        = pure SnsHttp
      parse "https"       = pure SnsHttps
      parse "email"       = pure SnsEmail
      parse "email-json"  = pure SnsEmailJson
      parse "sms"         = pure SnsSms
      parse "sqs"         = pure SnsSqs
      parse "application" = pure SnsApplication
      parse "lambda"      = pure SnsLambda
      parse protocol = fail ("Unexpected SNS protocol " ++ unpack protocol)

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
  = NodeJS
  | NodeJS43
  | NodeJS43Edge
  | NodeJS610
  | NodeJS810
  | Java8
  | Python27
  | Python36
  | DotNetCore10
  | DotNetCore20
  | Go1X
  | OtherRuntime Text
  deriving (Show, Read, Eq, Generic)

instance FromJSON Runtime where
  parseJSON = withText "Runtime" parse
    where
      parse "nodejs" = pure NodeJS
      parse "nodejs4.3" = pure NodeJS43
      parse "nodejs4.3-edge" = pure NodeJS43Edge
      parse "nodejs6.10" = pure NodeJS610
      parse "nodejs8.10" = pure NodeJS810
      parse "java8" = pure Java8
      parse "python2.7" = pure Python27
      parse "python3.6" = pure Python36
      parse "dotnetcore1.0" = pure DotNetCore10
      parse "dotnetcore2.0" = pure DotNetCore20
      parse "go1.x" = pure Go1X
      parse runtime = pure $ OtherRuntime runtime

instance ToJSON Runtime where
  toJSON NodeJS = String "nodejs"
  toJSON NodeJS43 = String "nodejs4.3"
  toJSON NodeJS43Edge = String "nodejs4.3-edge"
  toJSON NodeJS610 = String "nodejs6.10"
  toJSON NodeJS810 = String "nodejs8.10"
  toJSON Java8 = String "java8"
  toJSON Python27 = String "python2.7"
  toJSON Python36 = String "python3.6"
  toJSON DotNetCore10 = String "dotnetcore1.0"
  toJSON DotNetCore20 = String "dotnetcore2.0"
  toJSON Go1X = String "go1.x"
  toJSON (OtherRuntime other) = String other

-- | See:
-- https://docs.aws.amazon.com/apigateway/api-reference/link-relation/integration-put/#passthroughBehavior
data PassthroughBehavior
  = WHEN_NO_MATCH
  | WHEN_NO_TEMPLATES
  | NEVER
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)

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
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)

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


instance FromJSON KinesisFirehoseS3CompressionFormat where
  parseJSON = withText "KinesisFirehoseS3CompressionFormat" parse
    where
      parse "UNCOMPRESSED" = pure KFS3Uncompressed
      parse "GZIP"         = pure KFS3Gzip
      parse "ZIP"          = pure KFS3Zip
      parse "SNAPPY"       = pure KFS3Snappy
      parse fmt            = fail ("Unexpected compression format " ++ unpack fmt)


-- | See:
-- http://docs.aws.amazon.com/firehose/latest/APIReference/API_ElasticsearchDestinationConfiguration.html
data KinesisFirehoseElasticsearchS3BackupMode
  = KFS3FailedDocumentsOnly
  | KFS3AllDocuments
  deriving (Show, Read, Eq, Generic)


instance ToJSON KinesisFirehoseElasticsearchS3BackupMode where
  toJSON KFS3FailedDocumentsOnly = String "FailedDocumentsOnly"
  toJSON KFS3AllDocuments        = String "AllDocuments"


instance FromJSON KinesisFirehoseElasticsearchS3BackupMode where
  parseJSON = withText "KinesisFirehoseElasticsearchS3BackupMode" parse
    where
      parse "FailedDocumentsOnly" = pure KFS3FailedDocumentsOnly
      parse "AllDocuments"        = pure KFS3AllDocuments
      parse t                     = fail ("Unexpected S3 backup mode " ++ unpack t)


-- | See:
-- http://docs.aws.amazon.com/firehose/latest/APIReference/API_EncryptionConfiguration.html
data KinesisFirehoseNoEncryptionConfig = KinesisFirehoseNoEncryptionConfig
     deriving (Show, Read, Eq, Generic)


instance ToJSON KinesisFirehoseNoEncryptionConfig where
  toJSON _ = String "NoEncryption"


instance FromJSON KinesisFirehoseNoEncryptionConfig where
  parseJSON = withText "KinesisFirehoseNoEncryptionConfig" parse
    where
      parse "NoEncryption" = pure KinesisFirehoseNoEncryptionConfig
      parse t              = fail ("Unexpected no encryption config value " ++ unpack t)
