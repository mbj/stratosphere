
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.Types
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessingConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamS3DestinationConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamVpcConfiguration

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration. See
-- 'kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration' for
-- a more convenient constructor.
data KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration =
  KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
  { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationBufferingHints :: Maybe KinesisFirehoseDeliveryStreamElasticsearchBufferingHints
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationCloudWatchLoggingOptions :: Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationClusterEndpoint :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationDomainARN :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexName :: Val Text
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexRotationPeriod :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationProcessingConfiguration :: Maybe KinesisFirehoseDeliveryStreamProcessingConfiguration
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRetryOptions :: Maybe KinesisFirehoseDeliveryStreamElasticsearchRetryOptions
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRoleARN :: Val Text
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3BackupMode :: Maybe (Val KinesisFirehoseElasticsearchS3BackupMode)
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3Configuration :: KinesisFirehoseDeliveryStreamS3DestinationConfiguration
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationTypeName :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationVpcConfiguration :: Maybe KinesisFirehoseDeliveryStreamVpcConfiguration
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration where
  toJSON KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration{..} =
    object $
    catMaybes
    [ fmap (("BufferingHints",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationBufferingHints
    , fmap (("CloudWatchLoggingOptions",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationCloudWatchLoggingOptions
    , fmap (("ClusterEndpoint",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationClusterEndpoint
    , fmap (("DomainARN",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationDomainARN
    , (Just . ("IndexName",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexName
    , fmap (("IndexRotationPeriod",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexRotationPeriod
    , fmap (("ProcessingConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationProcessingConfiguration
    , fmap (("RetryOptions",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRetryOptions
    , (Just . ("RoleARN",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRoleARN
    , fmap (("S3BackupMode",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3BackupMode
    , (Just . ("S3Configuration",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3Configuration
    , fmap (("TypeName",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationTypeName
    , fmap (("VpcConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationVpcConfiguration
    ]

-- | Constructor for
-- 'KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
  :: Val Text -- ^ 'kfdsedcIndexName'
  -> Val Text -- ^ 'kfdsedcRoleARN'
  -> KinesisFirehoseDeliveryStreamS3DestinationConfiguration -- ^ 'kfdsedcS3Configuration'
  -> KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
kinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration indexNamearg roleARNarg s3Configurationarg =
  KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration
  { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationBufferingHints = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationCloudWatchLoggingOptions = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationClusterEndpoint = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationDomainARN = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexName = indexNamearg
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexRotationPeriod = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationProcessingConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRetryOptions = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRoleARN = roleARNarg
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3BackupMode = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3Configuration = s3Configurationarg
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationTypeName = Nothing
  , _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationVpcConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-bufferinghints
kfdsedcBufferingHints :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamElasticsearchBufferingHints)
kfdsedcBufferingHints = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationBufferingHints (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationBufferingHints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-cloudwatchloggingoptions
kfdsedcCloudWatchLoggingOptions :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions)
kfdsedcCloudWatchLoggingOptions = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationCloudWatchLoggingOptions (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationCloudWatchLoggingOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-clusterendpoint
kfdsedcClusterEndpoint :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Maybe (Val Text))
kfdsedcClusterEndpoint = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationClusterEndpoint (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationClusterEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-domainarn
kfdsedcDomainARN :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Maybe (Val Text))
kfdsedcDomainARN = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationDomainARN (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationDomainARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-indexname
kfdsedcIndexName :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Val Text)
kfdsedcIndexName = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexName (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-indexrotationperiod
kfdsedcIndexRotationPeriod :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Maybe (Val Text))
kfdsedcIndexRotationPeriod = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexRotationPeriod (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationIndexRotationPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-processingconfiguration
kfdsedcProcessingConfiguration :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamProcessingConfiguration)
kfdsedcProcessingConfiguration = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationProcessingConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationProcessingConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-retryoptions
kfdsedcRetryOptions :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamElasticsearchRetryOptions)
kfdsedcRetryOptions = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRetryOptions (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRetryOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-rolearn
kfdsedcRoleARN :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Val Text)
kfdsedcRoleARN = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRoleARN (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-s3backupmode
kfdsedcS3BackupMode :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Maybe (Val KinesisFirehoseElasticsearchS3BackupMode))
kfdsedcS3BackupMode = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3BackupMode (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3BackupMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-s3configuration
kfdsedcS3Configuration :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration KinesisFirehoseDeliveryStreamS3DestinationConfiguration
kfdsedcS3Configuration = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3Configuration (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationS3Configuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-typename
kfdsedcTypeName :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Maybe (Val Text))
kfdsedcTypeName = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationTypeName (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationTypeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-vpcconfiguration
kfdsedcVpcConfiguration :: Lens' KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamVpcConfiguration)
kfdsedcVpcConfiguration = lens _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationVpcConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamElasticsearchDestinationConfigurationVpcConfiguration = a })
