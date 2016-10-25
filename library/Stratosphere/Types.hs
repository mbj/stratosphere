{-# LANGUAGE DeriveAnyClass    #-}
{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Module for hand-written types that are used in generated modules.

module Stratosphere.Types
  ( CannedACL (..)
  , KinesisFirehoseS3CompressionFormat(..)
  , KinesisFirehoseElasticsearchS3BackupMode(..)
  , KinesisFirehoseNoEncryptionConfig(..)
  ) where

import           Data.Aeson
import           Data.Text    (unpack)
import           GHC.Generics

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
  = Uncompressed
  | Gzip
  | Zip
  | Snappy
  deriving (Show, Read, Eq, Generic)


instance ToJSON KinesisFirehoseS3CompressionFormat where
  toJSON Uncompressed = String "UNCOMPRESSED"
  toJSON Gzip         = String "GZIP"
  toJSON Zip          = String "ZIP"
  toJSON Snappy       = String "SNAPPY"


instance FromJSON KinesisFirehoseS3CompressionFormat where
  parseJSON = withText "KinesisFirehoseS3CompressionFormat" parse
    where
      parse "UNCOMPRESSED" = pure Uncompressed
      parse "GZIP"         = pure Gzip
      parse "ZIP"          = pure Zip
      parse "SNAPPY"       = pure Snappy
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
