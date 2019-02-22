{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationApplicationConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationApplicationCodeConfiguration
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationApplicationSnapshotConfiguration
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationEnvironmentProperties
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationSqlApplicationConfiguration

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationApplicationConfiguration. See
-- 'kinesisAnalyticsV2ApplicationApplicationConfiguration' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationApplicationConfiguration =
  KinesisAnalyticsV2ApplicationApplicationConfiguration
  { _kinesisAnalyticsV2ApplicationApplicationConfigurationApplicationCodeConfiguration :: Maybe KinesisAnalyticsV2ApplicationApplicationCodeConfiguration
  , _kinesisAnalyticsV2ApplicationApplicationConfigurationApplicationSnapshotConfiguration :: Maybe KinesisAnalyticsV2ApplicationApplicationSnapshotConfiguration
  , _kinesisAnalyticsV2ApplicationApplicationConfigurationEnvironmentProperties :: Maybe KinesisAnalyticsV2ApplicationEnvironmentProperties
  , _kinesisAnalyticsV2ApplicationApplicationConfigurationFlinkApplicationConfiguration :: Maybe KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration
  , _kinesisAnalyticsV2ApplicationApplicationConfigurationSqlApplicationConfiguration :: Maybe KinesisAnalyticsV2ApplicationSqlApplicationConfiguration
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationApplicationConfiguration where
  toJSON KinesisAnalyticsV2ApplicationApplicationConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ApplicationCodeConfiguration",) . toJSON) _kinesisAnalyticsV2ApplicationApplicationConfigurationApplicationCodeConfiguration
    , fmap (("ApplicationSnapshotConfiguration",) . toJSON) _kinesisAnalyticsV2ApplicationApplicationConfigurationApplicationSnapshotConfiguration
    , fmap (("EnvironmentProperties",) . toJSON) _kinesisAnalyticsV2ApplicationApplicationConfigurationEnvironmentProperties
    , fmap (("FlinkApplicationConfiguration",) . toJSON) _kinesisAnalyticsV2ApplicationApplicationConfigurationFlinkApplicationConfiguration
    , fmap (("SqlApplicationConfiguration",) . toJSON) _kinesisAnalyticsV2ApplicationApplicationConfigurationSqlApplicationConfiguration
    ]

instance FromJSON KinesisAnalyticsV2ApplicationApplicationConfiguration where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationApplicationConfiguration <$>
      (obj .:? "ApplicationCodeConfiguration") <*>
      (obj .:? "ApplicationSnapshotConfiguration") <*>
      (obj .:? "EnvironmentProperties") <*>
      (obj .:? "FlinkApplicationConfiguration") <*>
      (obj .:? "SqlApplicationConfiguration")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationApplicationConfiguration'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationApplicationConfiguration
  :: KinesisAnalyticsV2ApplicationApplicationConfiguration
kinesisAnalyticsV2ApplicationApplicationConfiguration  =
  KinesisAnalyticsV2ApplicationApplicationConfiguration
  { _kinesisAnalyticsV2ApplicationApplicationConfigurationApplicationCodeConfiguration = Nothing
  , _kinesisAnalyticsV2ApplicationApplicationConfigurationApplicationSnapshotConfiguration = Nothing
  , _kinesisAnalyticsV2ApplicationApplicationConfigurationEnvironmentProperties = Nothing
  , _kinesisAnalyticsV2ApplicationApplicationConfigurationFlinkApplicationConfiguration = Nothing
  , _kinesisAnalyticsV2ApplicationApplicationConfigurationSqlApplicationConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-applicationcodeconfiguration
kavaacApplicationCodeConfiguration :: Lens' KinesisAnalyticsV2ApplicationApplicationConfiguration (Maybe KinesisAnalyticsV2ApplicationApplicationCodeConfiguration)
kavaacApplicationCodeConfiguration = lens _kinesisAnalyticsV2ApplicationApplicationConfigurationApplicationCodeConfiguration (\s a -> s { _kinesisAnalyticsV2ApplicationApplicationConfigurationApplicationCodeConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-applicationsnapshotconfiguration
kavaacApplicationSnapshotConfiguration :: Lens' KinesisAnalyticsV2ApplicationApplicationConfiguration (Maybe KinesisAnalyticsV2ApplicationApplicationSnapshotConfiguration)
kavaacApplicationSnapshotConfiguration = lens _kinesisAnalyticsV2ApplicationApplicationConfigurationApplicationSnapshotConfiguration (\s a -> s { _kinesisAnalyticsV2ApplicationApplicationConfigurationApplicationSnapshotConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-environmentproperties
kavaacEnvironmentProperties :: Lens' KinesisAnalyticsV2ApplicationApplicationConfiguration (Maybe KinesisAnalyticsV2ApplicationEnvironmentProperties)
kavaacEnvironmentProperties = lens _kinesisAnalyticsV2ApplicationApplicationConfigurationEnvironmentProperties (\s a -> s { _kinesisAnalyticsV2ApplicationApplicationConfigurationEnvironmentProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-flinkapplicationconfiguration
kavaacFlinkApplicationConfiguration :: Lens' KinesisAnalyticsV2ApplicationApplicationConfiguration (Maybe KinesisAnalyticsV2ApplicationFlinkApplicationConfiguration)
kavaacFlinkApplicationConfiguration = lens _kinesisAnalyticsV2ApplicationApplicationConfigurationFlinkApplicationConfiguration (\s a -> s { _kinesisAnalyticsV2ApplicationApplicationConfigurationFlinkApplicationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-sqlapplicationconfiguration
kavaacSqlApplicationConfiguration :: Lens' KinesisAnalyticsV2ApplicationApplicationConfiguration (Maybe KinesisAnalyticsV2ApplicationSqlApplicationConfiguration)
kavaacSqlApplicationConfiguration = lens _kinesisAnalyticsV2ApplicationApplicationConfigurationSqlApplicationConfiguration (\s a -> s { _kinesisAnalyticsV2ApplicationApplicationConfigurationSqlApplicationConfiguration = a })
