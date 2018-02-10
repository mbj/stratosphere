{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamBufferingHints
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamEncryptionConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessingConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamS3DestinationConfiguration

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration. See
-- 'kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration' for a
-- more convenient constructor.
data KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration =
  KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration
  { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationBucketARN :: Val Text
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationBufferingHints :: KinesisFirehoseDeliveryStreamBufferingHints
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationCloudWatchLoggingOptions :: Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationCompressionFormat :: Val Text
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationEncryptionConfiguration :: Maybe KinesisFirehoseDeliveryStreamEncryptionConfiguration
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationPrefix :: Val Text
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationProcessingConfiguration :: Maybe KinesisFirehoseDeliveryStreamProcessingConfiguration
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationRoleARN :: Val Text
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationS3BackupConfiguration :: Maybe KinesisFirehoseDeliveryStreamS3DestinationConfiguration
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationS3BackupMode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration where
  toJSON KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("BucketARN",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationBucketARN
    , (Just . ("BufferingHints",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationBufferingHints
    , fmap (("CloudWatchLoggingOptions",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationCloudWatchLoggingOptions
    , (Just . ("CompressionFormat",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationCompressionFormat
    , fmap (("EncryptionConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationEncryptionConfiguration
    , (Just . ("Prefix",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationPrefix
    , fmap (("ProcessingConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationProcessingConfiguration
    , (Just . ("RoleARN",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationRoleARN
    , fmap (("S3BackupConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationS3BackupConfiguration
    , fmap (("S3BackupMode",) . toJSON) _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationS3BackupMode
    ]

instance FromJSON KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration <$>
      (obj .: "BucketARN") <*>
      (obj .: "BufferingHints") <*>
      (obj .:? "CloudWatchLoggingOptions") <*>
      (obj .: "CompressionFormat") <*>
      (obj .:? "EncryptionConfiguration") <*>
      (obj .: "Prefix") <*>
      (obj .:? "ProcessingConfiguration") <*>
      (obj .: "RoleARN") <*>
      (obj .:? "S3BackupConfiguration") <*>
      (obj .:? "S3BackupMode")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration
  :: Val Text -- ^ 'kfdsesdcBucketARN'
  -> KinesisFirehoseDeliveryStreamBufferingHints -- ^ 'kfdsesdcBufferingHints'
  -> Val Text -- ^ 'kfdsesdcCompressionFormat'
  -> Val Text -- ^ 'kfdsesdcPrefix'
  -> Val Text -- ^ 'kfdsesdcRoleARN'
  -> KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration
kinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration bucketARNarg bufferingHintsarg compressionFormatarg prefixarg roleARNarg =
  KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration
  { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationBucketARN = bucketARNarg
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationBufferingHints = bufferingHintsarg
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationCloudWatchLoggingOptions = Nothing
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationCompressionFormat = compressionFormatarg
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationEncryptionConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationPrefix = prefixarg
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationProcessingConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationRoleARN = roleARNarg
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationS3BackupConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationS3BackupMode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-bucketarn
kfdsesdcBucketARN :: Lens' KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration (Val Text)
kfdsesdcBucketARN = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationBucketARN (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationBucketARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-bufferinghints
kfdsesdcBufferingHints :: Lens' KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration KinesisFirehoseDeliveryStreamBufferingHints
kfdsesdcBufferingHints = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationBufferingHints (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationBufferingHints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-cloudwatchloggingoptions
kfdsesdcCloudWatchLoggingOptions :: Lens' KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions)
kfdsesdcCloudWatchLoggingOptions = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationCloudWatchLoggingOptions (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationCloudWatchLoggingOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-compressionformat
kfdsesdcCompressionFormat :: Lens' KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration (Val Text)
kfdsesdcCompressionFormat = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationCompressionFormat (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationCompressionFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-encryptionconfiguration
kfdsesdcEncryptionConfiguration :: Lens' KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamEncryptionConfiguration)
kfdsesdcEncryptionConfiguration = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationEncryptionConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationEncryptionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-prefix
kfdsesdcPrefix :: Lens' KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration (Val Text)
kfdsesdcPrefix = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationPrefix (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-processingconfiguration
kfdsesdcProcessingConfiguration :: Lens' KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamProcessingConfiguration)
kfdsesdcProcessingConfiguration = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationProcessingConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationProcessingConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-rolearn
kfdsesdcRoleARN :: Lens' KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration (Val Text)
kfdsesdcRoleARN = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationRoleARN (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-s3backupconfiguration
kfdsesdcS3BackupConfiguration :: Lens' KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamS3DestinationConfiguration)
kfdsesdcS3BackupConfiguration = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationS3BackupConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationS3BackupConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-s3backupmode
kfdsesdcS3BackupMode :: Lens' KinesisFirehoseDeliveryStreamExtendedS3DestinationConfiguration (Maybe (Val Text))
kfdsesdcS3BackupMode = lens _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationS3BackupMode (\s a -> s { _kinesisFirehoseDeliveryStreamExtendedS3DestinationConfigurationS3BackupMode = a })
