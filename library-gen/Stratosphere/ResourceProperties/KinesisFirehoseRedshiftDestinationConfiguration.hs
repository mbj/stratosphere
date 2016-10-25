{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | RedshiftDestinationConfiguration is a property of the
-- AWS::KinesisFirehose::DeliveryStream resource that specifies an Amazon
-- Redshift cluster to which Amazon Kinesis Firehose (Firehose) delivers data.

module Stratosphere.ResourceProperties.KinesisFirehoseRedshiftDestinationConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisFirehoseCloudWatchLoggingOptions
import Stratosphere.ResourceProperties.KinesisFirehoseRedshiftCopyCommand
import Stratosphere.ResourceProperties.KinesisFirehoseS3DestinationConfiguration

-- | Full data type definition for
-- KinesisFirehoseRedshiftDestinationConfiguration. See
-- 'kinesisFirehoseRedshiftDestinationConfiguration' for a more convenient
-- constructor.
data KinesisFirehoseRedshiftDestinationConfiguration =
  KinesisFirehoseRedshiftDestinationConfiguration
  { _kinesisFirehoseRedshiftDestinationConfigurationCloudWatchLoggingOptions :: Maybe KinesisFirehoseCloudWatchLoggingOptions
  , _kinesisFirehoseRedshiftDestinationConfigurationClusterJDBCURL :: Val Text
  , _kinesisFirehoseRedshiftDestinationConfigurationCopyCommand :: KinesisFirehoseRedshiftCopyCommand
  , _kinesisFirehoseRedshiftDestinationConfigurationPassword :: Val Text
  , _kinesisFirehoseRedshiftDestinationConfigurationRoleARN :: Val Text
  , _kinesisFirehoseRedshiftDestinationConfigurationS3Configuration :: KinesisFirehoseS3DestinationConfiguration
  , _kinesisFirehoseRedshiftDestinationConfigurationUsername :: Val Text
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseRedshiftDestinationConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 48, omitNothingFields = True }

instance FromJSON KinesisFirehoseRedshiftDestinationConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 48, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseRedshiftDestinationConfiguration'
-- containing required fields as arguments.
kinesisFirehoseRedshiftDestinationConfiguration
  :: Val Text -- ^ 'kfrdcClusterJDBCURL'
  -> KinesisFirehoseRedshiftCopyCommand -- ^ 'kfrdcCopyCommand'
  -> Val Text -- ^ 'kfrdcPassword'
  -> Val Text -- ^ 'kfrdcRoleARN'
  -> KinesisFirehoseS3DestinationConfiguration -- ^ 'kfrdcS3Configuration'
  -> Val Text -- ^ 'kfrdcUsername'
  -> KinesisFirehoseRedshiftDestinationConfiguration
kinesisFirehoseRedshiftDestinationConfiguration clusterJDBCURLarg copyCommandarg passwordarg roleARNarg s3Configurationarg usernamearg =
  KinesisFirehoseRedshiftDestinationConfiguration
  { _kinesisFirehoseRedshiftDestinationConfigurationCloudWatchLoggingOptions = Nothing
  , _kinesisFirehoseRedshiftDestinationConfigurationClusterJDBCURL = clusterJDBCURLarg
  , _kinesisFirehoseRedshiftDestinationConfigurationCopyCommand = copyCommandarg
  , _kinesisFirehoseRedshiftDestinationConfigurationPassword = passwordarg
  , _kinesisFirehoseRedshiftDestinationConfigurationRoleARN = roleARNarg
  , _kinesisFirehoseRedshiftDestinationConfigurationS3Configuration = s3Configurationarg
  , _kinesisFirehoseRedshiftDestinationConfigurationUsername = usernamearg
  }

-- | The Amazon CloudWatch Logs logging options for the delivery stream.
kfrdcCloudWatchLoggingOptions :: Lens' KinesisFirehoseRedshiftDestinationConfiguration (Maybe KinesisFirehoseCloudWatchLoggingOptions)
kfrdcCloudWatchLoggingOptions = lens _kinesisFirehoseRedshiftDestinationConfigurationCloudWatchLoggingOptions (\s a -> s { _kinesisFirehoseRedshiftDestinationConfigurationCloudWatchLoggingOptions = a })

-- | The connection string that Firehose uses to connect to the Amazon
-- Redshift cluster.
kfrdcClusterJDBCURL :: Lens' KinesisFirehoseRedshiftDestinationConfiguration (Val Text)
kfrdcClusterJDBCURL = lens _kinesisFirehoseRedshiftDestinationConfigurationClusterJDBCURL (\s a -> s { _kinesisFirehoseRedshiftDestinationConfigurationClusterJDBCURL = a })

-- | Configures the Amazon Redshift COPY command that Firehose uses to load
-- data into the cluster from the S3 bucket.
kfrdcCopyCommand :: Lens' KinesisFirehoseRedshiftDestinationConfiguration KinesisFirehoseRedshiftCopyCommand
kfrdcCopyCommand = lens _kinesisFirehoseRedshiftDestinationConfigurationCopyCommand (\s a -> s { _kinesisFirehoseRedshiftDestinationConfigurationCopyCommand = a })

-- | The password for the Amazon Redshift user that you specified in the
-- Username property.
kfrdcPassword :: Lens' KinesisFirehoseRedshiftDestinationConfiguration (Val Text)
kfrdcPassword = lens _kinesisFirehoseRedshiftDestinationConfigurationPassword (\s a -> s { _kinesisFirehoseRedshiftDestinationConfigurationPassword = a })

-- | The ARN of the AWS Identity and Access Management (IAM) role that grants
-- Firehose access to your S3 bucket and AWS KMS (if you enable data
-- encryption). For more information, see Grant Firehose Access to an Amazon
-- Redshift Destination in the Amazon Kinesis Firehose Developer Guide.
kfrdcRoleARN :: Lens' KinesisFirehoseRedshiftDestinationConfiguration (Val Text)
kfrdcRoleARN = lens _kinesisFirehoseRedshiftDestinationConfigurationRoleARN (\s a -> s { _kinesisFirehoseRedshiftDestinationConfigurationRoleARN = a })

-- | The S3 bucket where Firehose first delivers data. After the data is in
-- the bucket, Firehose uses the COPY command to load the data into the Amazon
-- Redshift cluster. For the S3 bucket's compression format, don't specify
-- SNAPPY or ZIP because the Amazon Redshift COPY command doesn't support
-- them.
kfrdcS3Configuration :: Lens' KinesisFirehoseRedshiftDestinationConfiguration KinesisFirehoseS3DestinationConfiguration
kfrdcS3Configuration = lens _kinesisFirehoseRedshiftDestinationConfigurationS3Configuration (\s a -> s { _kinesisFirehoseRedshiftDestinationConfigurationS3Configuration = a })

-- | The Amazon Redshift user that has permission to access the Amazon
-- Redshift cluster. This user must have INSERT privileges for copying data
-- from the S3 bucket to the cluster.
kfrdcUsername :: Lens' KinesisFirehoseRedshiftDestinationConfiguration (Val Text)
kfrdcUsername = lens _kinesisFirehoseRedshiftDestinationConfigurationUsername (\s a -> s { _kinesisFirehoseRedshiftDestinationConfigurationUsername = a })