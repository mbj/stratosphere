{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamS3DestinationConfiguration

-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration. See
-- | 'kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration' for
-- | a more convenient constructor.
data KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration =
  KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
  { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationBufferingHints :: KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationCloudWatchLoggingOptions :: Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationDomainARN :: Val Text
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexName :: Val Text
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexRotationPeriod :: Val Text
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRetryOptions :: KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRoleARN :: Val Text
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3BackupMode :: Val KinesisFirehoseElasticsearchS3BackupMode
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3Configuration :: KinesisFirehoseDeliveryStreamS3DestinationConfiguration
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationTypeName :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 67, omitNothingFields = True }

instance FromJSON KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 67, omitNothingFields = True }

-- | Constructor for
-- | 'KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration'
-- | containing required fields as arguments.
kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
  :: KinesisFirehoseDeliveryStreamElasticsearchBufferingHints -- ^ 'kfdsedcBufferingHints'
  -> Val Text -- ^ 'kfdsedcDomainARN'
  -> Val Text -- ^ 'kfdsedcIndexName'
  -> Val Text -- ^ 'kfdsedcIndexRotationPeriod'
  -> KinesisFirehoseDeliveryStreamElasticsearchRetryOptions -- ^ 'kfdsedcRetryOptions'
  -> Val Text -- ^ 'kfdsedcRoleARN'
  -> Val KinesisFirehoseElasticsearchS3BackupMode -- ^ 'kfdsedcS3BackupMode'
  -> KinesisFirehoseDeliveryStreamS3DestinationConfiguration -- ^ 'kfdsedcS3Configuration'
  -> Val Text -- ^ 'kfdsedcTypeName'
  -> KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration bufferingHintsarg domainARNarg indexNamearg indexRotationPeriodarg retryOptionsarg roleARNarg s3BackupModearg s3Configurationarg typeNamearg =
  KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
  { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationBufferingHints = bufferingHintsarg
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationCloudWatchLoggingOptions = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationDomainARN = domainARNarg
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexName = indexNamearg
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexRotationPeriod = indexRotationPeriodarg
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRetryOptions = retryOptionsarg
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRoleARN = roleARNarg
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3BackupMode = s3BackupModearg
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3Configuration = s3Configurationarg
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationTypeName = typeNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-bufferinghints
kfdsedcBufferingHints :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
kfdsedcBufferingHints = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationBufferingHints (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationBufferingHints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-cloudwatchloggingoptions
kfdsedcCloudWatchLoggingOptions :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions)
kfdsedcCloudWatchLoggingOptions = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationCloudWatchLoggingOptions (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationCloudWatchLoggingOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-domainarn
kfdsedcDomainARN :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Val Text)
kfdsedcDomainARN = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationDomainARN (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationDomainARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-indexname
kfdsedcIndexName :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Val Text)
kfdsedcIndexName = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexName (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-indexrotationperiod
kfdsedcIndexRotationPeriod :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Val Text)
kfdsedcIndexRotationPeriod = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexRotationPeriod (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexRotationPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-retryoptions
kfdsedcRetryOptions :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
kfdsedcRetryOptions = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRetryOptions (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRetryOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-rolearn
kfdsedcRoleARN :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Val Text)
kfdsedcRoleARN = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRoleARN (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-s3backupmode
kfdsedcS3BackupMode :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Val KinesisFirehoseElasticsearchS3BackupMode)
kfdsedcS3BackupMode = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3BackupMode (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3BackupMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-s3configuration
kfdsedcS3Configuration :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration KinesisFirehoseDeliveryStreamS3DestinationConfiguration
kfdsedcS3Configuration = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3Configuration (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3Configuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-elasticsearchdestinationconfiguration-typename
kfdsedcTypeName :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Val Text)
kfdsedcTypeName = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationTypeName (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationTypeName = a })
