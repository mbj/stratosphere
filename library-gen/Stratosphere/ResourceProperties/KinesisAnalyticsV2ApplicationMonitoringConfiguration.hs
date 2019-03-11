{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationMonitoringConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationMonitoringConfiguration. See
-- 'kinesisAnalyticsV2ApplicationMonitoringConfiguration' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationMonitoringConfiguration =
  KinesisAnalyticsV2ApplicationMonitoringConfiguration
  { _kinesisAnalyticsV2ApplicationMonitoringConfigurationConfigurationType :: Val Text
  , _kinesisAnalyticsV2ApplicationMonitoringConfigurationLogLevel :: Maybe (Val Text)
  , _kinesisAnalyticsV2ApplicationMonitoringConfigurationMetricsLevel :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationMonitoringConfiguration where
  toJSON KinesisAnalyticsV2ApplicationMonitoringConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("ConfigurationType",) . toJSON) _kinesisAnalyticsV2ApplicationMonitoringConfigurationConfigurationType
    , fmap (("LogLevel",) . toJSON) _kinesisAnalyticsV2ApplicationMonitoringConfigurationLogLevel
    , fmap (("MetricsLevel",) . toJSON) _kinesisAnalyticsV2ApplicationMonitoringConfigurationMetricsLevel
    ]

instance FromJSON KinesisAnalyticsV2ApplicationMonitoringConfiguration where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationMonitoringConfiguration <$>
      (obj .: "ConfigurationType") <*>
      (obj .:? "LogLevel") <*>
      (obj .:? "MetricsLevel")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationMonitoringConfiguration'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationMonitoringConfiguration
  :: Val Text -- ^ 'kavamcConfigurationType'
  -> KinesisAnalyticsV2ApplicationMonitoringConfiguration
kinesisAnalyticsV2ApplicationMonitoringConfiguration configurationTypearg =
  KinesisAnalyticsV2ApplicationMonitoringConfiguration
  { _kinesisAnalyticsV2ApplicationMonitoringConfigurationConfigurationType = configurationTypearg
  , _kinesisAnalyticsV2ApplicationMonitoringConfigurationLogLevel = Nothing
  , _kinesisAnalyticsV2ApplicationMonitoringConfigurationMetricsLevel = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html#cfn-kinesisanalyticsv2-application-monitoringconfiguration-configurationtype
kavamcConfigurationType :: Lens' KinesisAnalyticsV2ApplicationMonitoringConfiguration (Val Text)
kavamcConfigurationType = lens _kinesisAnalyticsV2ApplicationMonitoringConfigurationConfigurationType (\s a -> s { _kinesisAnalyticsV2ApplicationMonitoringConfigurationConfigurationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html#cfn-kinesisanalyticsv2-application-monitoringconfiguration-loglevel
kavamcLogLevel :: Lens' KinesisAnalyticsV2ApplicationMonitoringConfiguration (Maybe (Val Text))
kavamcLogLevel = lens _kinesisAnalyticsV2ApplicationMonitoringConfigurationLogLevel (\s a -> s { _kinesisAnalyticsV2ApplicationMonitoringConfigurationLogLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html#cfn-kinesisanalyticsv2-application-monitoringconfiguration-metricslevel
kavamcMetricsLevel :: Lens' KinesisAnalyticsV2ApplicationMonitoringConfiguration (Maybe (Val Text))
kavamcMetricsLevel = lens _kinesisAnalyticsV2ApplicationMonitoringConfigurationMetricsLevel (\s a -> s { _kinesisAnalyticsV2ApplicationMonitoringConfigurationMetricsLevel = a })
