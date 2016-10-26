{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | S3DestinationConfiguration is a property of the
-- AWS::KinesisFirehose::DeliveryStream resource and the Amazon Kinesis
-- Firehose DeliveryStream ElasticsearchDestinationConfiguration and Amazon
-- Kinesis Firehose DeliveryStream RedshiftDestinationConfiguration properties
-- that specifies an Amazon Simple Storage Service (Amazon S3) destination to
-- which Amazon Kinesis Firehose (Firehose) delivers data.

module Stratosphere.ResourceProperties.KinesisFirehoseS3DestinationConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisFirehoseBufferingHints
import Stratosphere.ResourceProperties.KinesisFirehoseCloudWatchLoggingOptions
import Stratosphere.ResourceProperties.KinesisFirehoseS3EncryptionConfiguration
import Stratosphere.Types

-- | Full data type definition for KinesisFirehoseS3DestinationConfiguration.
-- See 'kinesisFirehoseS3DestinationConfiguration' for a more convenient
-- constructor.
data KinesisFirehoseS3DestinationConfiguration =
  KinesisFirehoseS3DestinationConfiguration
  { _kinesisFirehoseS3DestinationConfigurationBucketARN :: Val Text
  , _kinesisFirehoseS3DestinationConfigurationBufferingHints :: KinesisFirehoseBufferingHints
  , _kinesisFirehoseS3DestinationConfigurationCloudWatchLoggingOptions :: Maybe KinesisFirehoseCloudWatchLoggingOptions
  , _kinesisFirehoseS3DestinationConfigurationCompressionFormat :: KinesisFirehoseS3CompressionFormat
  , _kinesisFirehoseS3DestinationConfigurationEncryptionConfiguration :: Maybe KinesisFirehoseS3EncryptionConfiguration
  , _kinesisFirehoseS3DestinationConfigurationPrefix :: Val Text
  , _kinesisFirehoseS3DestinationConfigurationRoleARN :: Val Text
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseS3DestinationConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 42, omitNothingFields = True }

instance FromJSON KinesisFirehoseS3DestinationConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 42, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseS3DestinationConfiguration' containing
-- required fields as arguments.
kinesisFirehoseS3DestinationConfiguration
  :: Val Text -- ^ 'kfsdcBucketARN'
  -> KinesisFirehoseBufferingHints -- ^ 'kfsdcBufferingHints'
  -> KinesisFirehoseS3CompressionFormat -- ^ 'kfsdcCompressionFormat'
  -> Val Text -- ^ 'kfsdcPrefix'
  -> Val Text -- ^ 'kfsdcRoleARN'
  -> KinesisFirehoseS3DestinationConfiguration
kinesisFirehoseS3DestinationConfiguration bucketARNarg bufferingHintsarg compressionFormatarg prefixarg roleARNarg =
  KinesisFirehoseS3DestinationConfiguration
  { _kinesisFirehoseS3DestinationConfigurationBucketARN = bucketARNarg
  , _kinesisFirehoseS3DestinationConfigurationBufferingHints = bufferingHintsarg
  , _kinesisFirehoseS3DestinationConfigurationCloudWatchLoggingOptions = Nothing
  , _kinesisFirehoseS3DestinationConfigurationCompressionFormat = compressionFormatarg
  , _kinesisFirehoseS3DestinationConfigurationEncryptionConfiguration = Nothing
  , _kinesisFirehoseS3DestinationConfigurationPrefix = prefixarg
  , _kinesisFirehoseS3DestinationConfigurationRoleARN = roleARNarg
  }

-- | The Amazon Resource Name (ARN) of the S3 bucket to send data to.
kfsdcBucketARN :: Lens' KinesisFirehoseS3DestinationConfiguration (Val Text)
kfsdcBucketARN = lens _kinesisFirehoseS3DestinationConfigurationBucketARN (\s a -> s { _kinesisFirehoseS3DestinationConfigurationBucketARN = a })

-- | Configures how Firehose buffers incoming data while delivering it to the
-- S3 bucket.
kfsdcBufferingHints :: Lens' KinesisFirehoseS3DestinationConfiguration KinesisFirehoseBufferingHints
kfsdcBufferingHints = lens _kinesisFirehoseS3DestinationConfigurationBufferingHints (\s a -> s { _kinesisFirehoseS3DestinationConfigurationBufferingHints = a })

-- | The Amazon CloudWatch Logs logging options for the delivery stream.
kfsdcCloudWatchLoggingOptions :: Lens' KinesisFirehoseS3DestinationConfiguration (Maybe KinesisFirehoseCloudWatchLoggingOptions)
kfsdcCloudWatchLoggingOptions = lens _kinesisFirehoseS3DestinationConfigurationCloudWatchLoggingOptions (\s a -> s { _kinesisFirehoseS3DestinationConfigurationCloudWatchLoggingOptions = a })

-- | The type of compression that Firehose uses to compress the data that it
-- delivers to the S3 bucket. For valid values, see the CompressionFormat
-- content for the S3DestinationConfiguration data type in the Amazon Kinesis
-- Firehose API Reference.
kfsdcCompressionFormat :: Lens' KinesisFirehoseS3DestinationConfiguration KinesisFirehoseS3CompressionFormat
kfsdcCompressionFormat = lens _kinesisFirehoseS3DestinationConfigurationCompressionFormat (\s a -> s { _kinesisFirehoseS3DestinationConfigurationCompressionFormat = a })

-- | Configures Amazon Simple Storage Service (Amazon S3) server-side
-- encryption. Firehose uses AWS Key Management Service (AWS KMS) to encrypt
-- the data that it delivers to your S3 bucket.
kfsdcEncryptionConfiguration :: Lens' KinesisFirehoseS3DestinationConfiguration (Maybe KinesisFirehoseS3EncryptionConfiguration)
kfsdcEncryptionConfiguration = lens _kinesisFirehoseS3DestinationConfigurationEncryptionConfiguration (\s a -> s { _kinesisFirehoseS3DestinationConfigurationEncryptionConfiguration = a })

-- | A prefix that Firehose adds to the files that it delivers to the S3
-- bucket. The prefix helps you identify the files that Firehose delivered.
kfsdcPrefix :: Lens' KinesisFirehoseS3DestinationConfiguration (Val Text)
kfsdcPrefix = lens _kinesisFirehoseS3DestinationConfigurationPrefix (\s a -> s { _kinesisFirehoseS3DestinationConfigurationPrefix = a })

-- | The ARN of an AWS Identity and Access Management (IAM) role that grants
-- Firehose access to your S3 bucket and AWS KMS (if you enable data
-- encryption). For more information, see Grant Firehose Access to an Amazon
-- S3 Destination in the Amazon Kinesis Firehose Developer Guide.
kfsdcRoleARN :: Lens' KinesisFirehoseS3DestinationConfiguration (Val Text)
kfsdcRoleARN = lens _kinesisFirehoseS3DestinationConfigurationRoleARN (\s a -> s { _kinesisFirehoseS3DestinationConfigurationRoleARN = a })