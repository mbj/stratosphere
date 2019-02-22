{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationCheckpointConfiguration
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationMonitoringConfiguration
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationParallelismConfiguration

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration. See
-- 'kinesisAnalyticsV2ApplicationFlinkApplicationConfiguration' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration =
  KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration
  { _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationCheckpointConfiguration :: Maybe KinesisAnalyticsV2ApplicationCheckpointConfiguration
  , _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationMonitoringConfiguration :: Maybe KinesisAnalyticsV2ApplicationMonitoringConfiguration
  , _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationParallelismConfiguration :: Maybe KinesisAnalyticsV2ApplicationParallelismConfiguration
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration where
  toJSON KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CheckpointConfiguration",) . toJSON) _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationCheckpointConfiguration
    , fmap (("MonitoringConfiguration",) . toJSON) _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationMonitoringConfiguration
    , fmap (("ParallelismConfiguration",) . toJSON) _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationParallelismConfiguration
    ]

instance FromJSON KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration <$>
      (obj .:? "CheckpointConfiguration") <*>
      (obj .:? "MonitoringConfiguration") <*>
      (obj .:? "ParallelismConfiguration")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationFlinkApplicationConfiguration
  :: KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration
kinesisAnalyticsV2ApplicationFlinkApplicationConfiguration  =
  KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration
  { _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationCheckpointConfiguration = Nothing
  , _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationMonitoringConfiguration = Nothing
  , _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationParallelismConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-checkpointconfiguration
kavafacCheckpointConfiguration :: Lens' KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration (Maybe KinesisAnalyticsV2ApplicationCheckpointConfiguration)
kavafacCheckpointConfiguration = lens _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationCheckpointConfiguration (\s a -> s { _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationCheckpointConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-monitoringconfiguration
kavafacMonitoringConfiguration :: Lens' KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration (Maybe KinesisAnalyticsV2ApplicationMonitoringConfiguration)
kavafacMonitoringConfiguration = lens _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationMonitoringConfiguration (\s a -> s { _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationMonitoringConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-parallelismconfiguration
kavafacParallelismConfiguration :: Lens' KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration (Maybe KinesisAnalyticsV2ApplicationParallelismConfiguration)
kavafacParallelismConfiguration = lens _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationParallelismConfiguration (\s a -> s { _kinesisAnalyticsV2ApplicationFlinkApplicationConfigurationParallelismConfiguration = a })
