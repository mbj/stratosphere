{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamS3DestinationConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.Types
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamBufferingHints
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamEncryptionConfiguration

-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamS3DestinationConfiguration. See
-- | 'kinesisFirehoseDeliveryStreamS3DestinationConfiguration' for a more
-- | convenient constructor.
data KinesisFirehoseDeliveryStreamS3DestinationConfiguration =
  KinesisFirehoseDeliveryStreamS3DestinationConfiguration
  { _kinesisFirehoseDeliveryStreamS3DestinationConfigurationBucketARN :: Val Text
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationBufferingHints :: KinesisFirehoseDeliveryStreamBufferingHints
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationCloudWatchLoggingOptions :: Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationCompressionFormat :: Val KinesisFirehoseS3CompressionFormat
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationEncryptionConfiguration :: Maybe KinesisFirehoseDeliveryStreamEncryptionConfiguration
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationPrefix :: Val Text
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationRoleARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamS3DestinationConfiguration where
  toJSON KinesisFirehoseDeliveryStreamS3DestinationConfiguration{..} =
    object
    [ "BucketARN" .= _kinesisFirehoseDeliveryStreamS3DestinationConfigurationBucketARN
    , "BufferingHints" .= _kinesisFirehoseDeliveryStreamS3DestinationConfigurationBufferingHints
    , "CloudWatchLoggingOptions" .= _kinesisFirehoseDeliveryStreamS3DestinationConfigurationCloudWatchLoggingOptions
    , "CompressionFormat" .= _kinesisFirehoseDeliveryStreamS3DestinationConfigurationCompressionFormat
    , "EncryptionConfiguration" .= _kinesisFirehoseDeliveryStreamS3DestinationConfigurationEncryptionConfiguration
    , "Prefix" .= _kinesisFirehoseDeliveryStreamS3DestinationConfigurationPrefix
    , "RoleARN" .= _kinesisFirehoseDeliveryStreamS3DestinationConfigurationRoleARN
    ]

instance FromJSON KinesisFirehoseDeliveryStreamS3DestinationConfiguration where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamS3DestinationConfiguration <$>
      obj .: "BucketARN" <*>
      obj .: "BufferingHints" <*>
      obj .: "CloudWatchLoggingOptions" <*>
      obj .: "CompressionFormat" <*>
      obj .: "EncryptionConfiguration" <*>
      obj .: "Prefix" <*>
      obj .: "RoleARN"
  parseJSON _ = mempty

-- | Constructor for 'KinesisFirehoseDeliveryStreamS3DestinationConfiguration'
-- | containing required fields as arguments.
kinesisFirehoseDeliveryStreamS3DestinationConfiguration
  :: Val Text -- ^ 'kfdssdcBucketARN'
  -> KinesisFirehoseDeliveryStreamBufferingHints -- ^ 'kfdssdcBufferingHints'
  -> Val KinesisFirehoseS3CompressionFormat -- ^ 'kfdssdcCompressionFormat'
  -> Val Text -- ^ 'kfdssdcPrefix'
  -> Val Text -- ^ 'kfdssdcRoleARN'
  -> KinesisFirehoseDeliveryStreamS3DestinationConfiguration
kinesisFirehoseDeliveryStreamS3DestinationConfiguration bucketARNarg bufferingHintsarg compressionFormatarg prefixarg roleARNarg =
  KinesisFirehoseDeliveryStreamS3DestinationConfiguration
  { _kinesisFirehoseDeliveryStreamS3DestinationConfigurationBucketARN = bucketARNarg
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationBufferingHints = bufferingHintsarg
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationCloudWatchLoggingOptions = Nothing
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationCompressionFormat = compressionFormatarg
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationEncryptionConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationPrefix = prefixarg
  , _kinesisFirehoseDeliveryStreamS3DestinationConfigurationRoleARN = roleARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bucketarn
kfdssdcBucketARN :: Lens' KinesisFirehoseDeliveryStreamS3DestinationConfiguration (Val Text)
kfdssdcBucketARN = lens _kinesisFirehoseDeliveryStreamS3DestinationConfigurationBucketARN (\s a -> s { _kinesisFirehoseDeliveryStreamS3DestinationConfigurationBucketARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bufferinghints
kfdssdcBufferingHints :: Lens' KinesisFirehoseDeliveryStreamS3DestinationConfiguration KinesisFirehoseDeliveryStreamBufferingHints
kfdssdcBufferingHints = lens _kinesisFirehoseDeliveryStreamS3DestinationConfigurationBufferingHints (\s a -> s { _kinesisFirehoseDeliveryStreamS3DestinationConfigurationBufferingHints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-cloudwatchloggingoptions
kfdssdcCloudWatchLoggingOptions :: Lens' KinesisFirehoseDeliveryStreamS3DestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions)
kfdssdcCloudWatchLoggingOptions = lens _kinesisFirehoseDeliveryStreamS3DestinationConfigurationCloudWatchLoggingOptions (\s a -> s { _kinesisFirehoseDeliveryStreamS3DestinationConfigurationCloudWatchLoggingOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-compressionformat
kfdssdcCompressionFormat :: Lens' KinesisFirehoseDeliveryStreamS3DestinationConfiguration (Val KinesisFirehoseS3CompressionFormat)
kfdssdcCompressionFormat = lens _kinesisFirehoseDeliveryStreamS3DestinationConfigurationCompressionFormat (\s a -> s { _kinesisFirehoseDeliveryStreamS3DestinationConfigurationCompressionFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-encryptionconfiguration
kfdssdcEncryptionConfiguration :: Lens' KinesisFirehoseDeliveryStreamS3DestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamEncryptionConfiguration)
kfdssdcEncryptionConfiguration = lens _kinesisFirehoseDeliveryStreamS3DestinationConfigurationEncryptionConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamS3DestinationConfigurationEncryptionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-prefix
kfdssdcPrefix :: Lens' KinesisFirehoseDeliveryStreamS3DestinationConfiguration (Val Text)
kfdssdcPrefix = lens _kinesisFirehoseDeliveryStreamS3DestinationConfigurationPrefix (\s a -> s { _kinesisFirehoseDeliveryStreamS3DestinationConfigurationPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-rolearn
kfdssdcRoleARN :: Lens' KinesisFirehoseDeliveryStreamS3DestinationConfiguration (Val Text)
kfdssdcRoleARN = lens _kinesisFirehoseDeliveryStreamS3DestinationConfigurationRoleARN (\s a -> s { _kinesisFirehoseDeliveryStreamS3DestinationConfigurationRoleARN = a })
