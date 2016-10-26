{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | ElasticsearchDestinationConfiguration is a property of the
-- AWS::KinesisFirehose::DeliveryStream resource that specifies an Amazon
-- Elasticsearch Service (Amazon ES) domain that Amazon Kinesis Firehose
-- (Firehose) delivers data to.

module Stratosphere.ResourceProperties.KinesisFirehoseElasticsearchDestinationConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisFirehoseBufferingHints
import Stratosphere.ResourceProperties.KinesisFirehoseCloudWatchLoggingOptions
import Stratosphere.ResourceProperties.KinesisFirehoseS3DestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseElasticsearchRetryOptions
import Stratosphere.Types

-- | Full data type definition for
-- KinesisFirehoseElasticsearchDestinationConfiguration. See
-- 'kinesisFirehoseElasticsearchDestinationConfiguration' for a more
-- convenient constructor.
data KinesisFirehoseElasticsearchDestinationConfiguration =
  KinesisFirehoseElasticsearchDestinationConfiguration
  { _kinesisFirehoseElasticsearchDestinationConfigurationBufferingHints :: KinesisFirehoseBufferingHints
  , _kinesisFirehoseElasticsearchDestinationConfigurationCloudWatchLoggingOptions :: Maybe KinesisFirehoseCloudWatchLoggingOptions
  , _kinesisFirehoseElasticsearchDestinationConfigurationDomainARN :: Val Text
  , _kinesisFirehoseElasticsearchDestinationConfigurationIndexName :: Val Text
  , _kinesisFirehoseElasticsearchDestinationConfigurationIndexRotationPeriod :: Val Text
  , _kinesisFirehoseElasticsearchDestinationConfigurationRetryOptions :: Maybe KinesisFirehoseElasticsearchRetryOptions
  , _kinesisFirehoseElasticsearchDestinationConfigurationRoleARN :: Val Text
  , _kinesisFirehoseElasticsearchDestinationConfigurationS3BackupMode :: KinesisFirehoseElasticsearchS3BackupMode
  , _kinesisFirehoseElasticsearchDestinationConfigurationS3Configuration :: Maybe KinesisFirehoseS3DestinationConfiguration
  , _kinesisFirehoseElasticsearchDestinationConfigurationTypeName :: Val Text
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseElasticsearchDestinationConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 53, omitNothingFields = True }

instance FromJSON KinesisFirehoseElasticsearchDestinationConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 53, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseElasticsearchDestinationConfiguration'
-- containing required fields as arguments.
kinesisFirehoseElasticsearchDestinationConfiguration
  :: KinesisFirehoseBufferingHints -- ^ 'kfedcBufferingHints'
  -> Val Text -- ^ 'kfedcDomainARN'
  -> Val Text -- ^ 'kfedcIndexName'
  -> Val Text -- ^ 'kfedcIndexRotationPeriod'
  -> Val Text -- ^ 'kfedcRoleARN'
  -> KinesisFirehoseElasticsearchS3BackupMode -- ^ 'kfedcS3BackupMode'
  -> Val Text -- ^ 'kfedcTypeName'
  -> KinesisFirehoseElasticsearchDestinationConfiguration
kinesisFirehoseElasticsearchDestinationConfiguration bufferingHintsarg domainARNarg indexNamearg indexRotationPeriodarg roleARNarg s3BackupModearg typeNamearg =
  KinesisFirehoseElasticsearchDestinationConfiguration
  { _kinesisFirehoseElasticsearchDestinationConfigurationBufferingHints = bufferingHintsarg
  , _kinesisFirehoseElasticsearchDestinationConfigurationCloudWatchLoggingOptions = Nothing
  , _kinesisFirehoseElasticsearchDestinationConfigurationDomainARN = domainARNarg
  , _kinesisFirehoseElasticsearchDestinationConfigurationIndexName = indexNamearg
  , _kinesisFirehoseElasticsearchDestinationConfigurationIndexRotationPeriod = indexRotationPeriodarg
  , _kinesisFirehoseElasticsearchDestinationConfigurationRetryOptions = Nothing
  , _kinesisFirehoseElasticsearchDestinationConfigurationRoleARN = roleARNarg
  , _kinesisFirehoseElasticsearchDestinationConfigurationS3BackupMode = s3BackupModearg
  , _kinesisFirehoseElasticsearchDestinationConfigurationS3Configuration = Nothing
  , _kinesisFirehoseElasticsearchDestinationConfigurationTypeName = typeNamearg
  }

-- | Configures how Firehose buffers incoming data while delivering it to the
-- Amazon ES domain.
kfedcBufferingHints :: Lens' KinesisFirehoseElasticsearchDestinationConfiguration KinesisFirehoseBufferingHints
kfedcBufferingHints = lens _kinesisFirehoseElasticsearchDestinationConfigurationBufferingHints (\s a -> s { _kinesisFirehoseElasticsearchDestinationConfigurationBufferingHints = a })

-- | The Amazon CloudWatch Logs logging options for the delivery stream.
kfedcCloudWatchLoggingOptions :: Lens' KinesisFirehoseElasticsearchDestinationConfiguration (Maybe KinesisFirehoseCloudWatchLoggingOptions)
kfedcCloudWatchLoggingOptions = lens _kinesisFirehoseElasticsearchDestinationConfigurationCloudWatchLoggingOptions (\s a -> s { _kinesisFirehoseElasticsearchDestinationConfigurationCloudWatchLoggingOptions = a })

-- | The Amazon Resource Name (ARN) of the Amazon ES domain that Firehose
-- delivers data to.
kfedcDomainARN :: Lens' KinesisFirehoseElasticsearchDestinationConfiguration (Val Text)
kfedcDomainARN = lens _kinesisFirehoseElasticsearchDestinationConfigurationDomainARN (\s a -> s { _kinesisFirehoseElasticsearchDestinationConfigurationDomainARN = a })

-- | The name of the Elasticsearch index to which Firehose adds data for
-- indexing.
kfedcIndexName :: Lens' KinesisFirehoseElasticsearchDestinationConfiguration (Val Text)
kfedcIndexName = lens _kinesisFirehoseElasticsearchDestinationConfigurationIndexName (\s a -> s { _kinesisFirehoseElasticsearchDestinationConfigurationIndexName = a })

-- | The frequency of Elasticsearch index rotation. If you enable index
-- rotation, Firehose appends a portion of the UTC arrival timestamp to the
-- specified index name, and rotates the appended timestamp accordingly. For
-- more information, see Index Rotation for the Amazon ES Destination in the
-- Amazon Kinesis Firehose Developer Guide.
kfedcIndexRotationPeriod :: Lens' KinesisFirehoseElasticsearchDestinationConfiguration (Val Text)
kfedcIndexRotationPeriod = lens _kinesisFirehoseElasticsearchDestinationConfigurationIndexRotationPeriod (\s a -> s { _kinesisFirehoseElasticsearchDestinationConfigurationIndexRotationPeriod = a })

-- | The retry behavior when Firehose is unable to deliver data to Amazon ES.
-- Type: Amazon Kinesis Firehose DeliveryStream
-- ElasticsearchDestinationConfiguration RetryOptions Type: String
kfedcRetryOptions :: Lens' KinesisFirehoseElasticsearchDestinationConfiguration (Maybe KinesisFirehoseElasticsearchRetryOptions)
kfedcRetryOptions = lens _kinesisFirehoseElasticsearchDestinationConfigurationRetryOptions (\s a -> s { _kinesisFirehoseElasticsearchDestinationConfigurationRetryOptions = a })

-- | The ARN of the AWS Identity and Access Management (IAM) role that grants
-- Firehose access to your S3 bucket, AWS KMS (if you enable data encryption),
-- and Amazon CloudWatch Logs (if you enable logging). For more information,
-- see Grant Firehose Access to an Amazon Elasticsearch Service Destination in
-- the Amazon Kinesis Firehose Developer Guide.
kfedcRoleARN :: Lens' KinesisFirehoseElasticsearchDestinationConfiguration (Val Text)
kfedcRoleARN = lens _kinesisFirehoseElasticsearchDestinationConfigurationRoleARN (\s a -> s { _kinesisFirehoseElasticsearchDestinationConfigurationRoleARN = a })

-- | The condition under which Firehose delivers data to Amazon Simple Storage
-- Service (Amazon S3). You can send Amazon S3 all documents (all data) or
-- only the documents that Firehose could not deliver to the Amazon ES
-- destination. For more information and valid values, see the S3BackupMode
-- content for the ElasticsearchDestinationConfiguration data type in the
-- Amazon Kinesis Firehose API Reference.
kfedcS3BackupMode :: Lens' KinesisFirehoseElasticsearchDestinationConfiguration KinesisFirehoseElasticsearchS3BackupMode
kfedcS3BackupMode = lens _kinesisFirehoseElasticsearchDestinationConfigurationS3BackupMode (\s a -> s { _kinesisFirehoseElasticsearchDestinationConfigurationS3BackupMode = a })

-- | The S3 bucket where Firehose backs up incoming data. Type: Amazon Kinesis
-- Firehose DeliveryStream S3DestinationConfiguration Type: String
kfedcS3Configuration :: Lens' KinesisFirehoseElasticsearchDestinationConfiguration (Maybe KinesisFirehoseS3DestinationConfiguration)
kfedcS3Configuration = lens _kinesisFirehoseElasticsearchDestinationConfigurationS3Configuration (\s a -> s { _kinesisFirehoseElasticsearchDestinationConfigurationS3Configuration = a })

-- | The Elasticsearch type name that Amazon ES adds to documents when
-- indexing data.
kfedcTypeName :: Lens' KinesisFirehoseElasticsearchDestinationConfiguration (Val Text)
kfedcTypeName = lens _kinesisFirehoseElasticsearchDestinationConfigurationTypeName (\s a -> s { _kinesisFirehoseElasticsearchDestinationConfigurationTypeName = a })