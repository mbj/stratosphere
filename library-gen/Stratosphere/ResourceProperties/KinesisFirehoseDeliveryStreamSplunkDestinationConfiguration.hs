{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessingConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamSplunkRetryOptions
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamS3DestinationConfiguration

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration. See
-- 'kinesisFirehoseDeliveryStreamSplunkDestinationConfiguration' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration =
  KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration
  { _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationCloudWatchLoggingOptions :: Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECAcknowledgmentTimeoutInSeconds :: Maybe (Val Integer)
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECEndpoint :: Val Text
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECEndpointType :: Val Text
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECToken :: Val Text
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationProcessingConfiguration :: Maybe KinesisFirehoseDeliveryStreamProcessingConfiguration
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationRetryOptions :: Maybe KinesisFirehoseDeliveryStreamSplunkRetryOptions
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationS3BackupMode :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationS3Configuration :: KinesisFirehoseDeliveryStreamS3DestinationConfiguration
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration where
  toJSON KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchLoggingOptions",) . toJSON) _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationCloudWatchLoggingOptions
    , fmap (("HECAcknowledgmentTimeoutInSeconds",) . toJSON . fmap Integer') _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECAcknowledgmentTimeoutInSeconds
    , (Just . ("HECEndpoint",) . toJSON) _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECEndpoint
    , (Just . ("HECEndpointType",) . toJSON) _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECEndpointType
    , (Just . ("HECToken",) . toJSON) _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECToken
    , fmap (("ProcessingConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationProcessingConfiguration
    , fmap (("RetryOptions",) . toJSON) _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationRetryOptions
    , fmap (("S3BackupMode",) . toJSON) _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationS3BackupMode
    , (Just . ("S3Configuration",) . toJSON) _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationS3Configuration
    ]

-- | Constructor for
-- 'KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamSplunkDestinationConfiguration
  :: Val Text -- ^ 'kfdsspdcHECEndpoint'
  -> Val Text -- ^ 'kfdsspdcHECEndpointType'
  -> Val Text -- ^ 'kfdsspdcHECToken'
  -> KinesisFirehoseDeliveryStreamS3DestinationConfiguration -- ^ 'kfdsspdcS3Configuration'
  -> KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration
kinesisFirehoseDeliveryStreamSplunkDestinationConfiguration hECEndpointarg hECEndpointTypearg hECTokenarg s3Configurationarg =
  KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration
  { _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationCloudWatchLoggingOptions = Nothing
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECAcknowledgmentTimeoutInSeconds = Nothing
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECEndpoint = hECEndpointarg
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECEndpointType = hECEndpointTypearg
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECToken = hECTokenarg
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationProcessingConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationRetryOptions = Nothing
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationS3BackupMode = Nothing
  , _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationS3Configuration = s3Configurationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-cloudwatchloggingoptions
kfdsspdcCloudWatchLoggingOptions :: Lens' KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions)
kfdsspdcCloudWatchLoggingOptions = lens _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationCloudWatchLoggingOptions (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationCloudWatchLoggingOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-hecacknowledgmenttimeoutinseconds
kfdsspdcHECAcknowledgmentTimeoutInSeconds :: Lens' KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration (Maybe (Val Integer))
kfdsspdcHECAcknowledgmentTimeoutInSeconds = lens _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECAcknowledgmentTimeoutInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECAcknowledgmentTimeoutInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-hecendpoint
kfdsspdcHECEndpoint :: Lens' KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration (Val Text)
kfdsspdcHECEndpoint = lens _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECEndpoint (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-hecendpointtype
kfdsspdcHECEndpointType :: Lens' KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration (Val Text)
kfdsspdcHECEndpointType = lens _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECEndpointType (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECEndpointType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-hectoken
kfdsspdcHECToken :: Lens' KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration (Val Text)
kfdsspdcHECToken = lens _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECToken (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationHECToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-processingconfiguration
kfdsspdcProcessingConfiguration :: Lens' KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamProcessingConfiguration)
kfdsspdcProcessingConfiguration = lens _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationProcessingConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationProcessingConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-retryoptions
kfdsspdcRetryOptions :: Lens' KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamSplunkRetryOptions)
kfdsspdcRetryOptions = lens _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationRetryOptions (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationRetryOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-s3backupmode
kfdsspdcS3BackupMode :: Lens' KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration (Maybe (Val Text))
kfdsspdcS3BackupMode = lens _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationS3BackupMode (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationS3BackupMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-s3configuration
kfdsspdcS3Configuration :: Lens' KinesisFirehoseDeliveryStreamSplunkDestinationConfiguration KinesisFirehoseDeliveryStreamS3DestinationConfiguration
kfdsspdcS3Configuration = lens _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationS3Configuration (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkDestinationConfigurationS3Configuration = a })
