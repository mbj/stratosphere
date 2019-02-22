{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationParallelismConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationParallelismConfiguration. See
-- 'kinesisAnalyticsV2ApplicationParallelismConfiguration' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationParallelismConfiguration =
  KinesisAnalyticsV2ApplicationParallelismConfiguration
  { _kinesisAnalyticsV2ApplicationParallelismConfigurationAutoScalingEnabled :: Maybe (Val Bool)
  , _kinesisAnalyticsV2ApplicationParallelismConfigurationConfigurationType :: Val Text
  , _kinesisAnalyticsV2ApplicationParallelismConfigurationParallelism :: Maybe (Val Integer)
  , _kinesisAnalyticsV2ApplicationParallelismConfigurationParallelismPerKPU :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationParallelismConfiguration where
  toJSON KinesisAnalyticsV2ApplicationParallelismConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AutoScalingEnabled",) . toJSON . fmap Bool') _kinesisAnalyticsV2ApplicationParallelismConfigurationAutoScalingEnabled
    , (Just . ("ConfigurationType",) . toJSON) _kinesisAnalyticsV2ApplicationParallelismConfigurationConfigurationType
    , fmap (("Parallelism",) . toJSON . fmap Integer') _kinesisAnalyticsV2ApplicationParallelismConfigurationParallelism
    , fmap (("ParallelismPerKPU",) . toJSON . fmap Integer') _kinesisAnalyticsV2ApplicationParallelismConfigurationParallelismPerKPU
    ]

instance FromJSON KinesisAnalyticsV2ApplicationParallelismConfiguration where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationParallelismConfiguration <$>
      fmap (fmap (fmap unBool')) (obj .:? "AutoScalingEnabled") <*>
      (obj .: "ConfigurationType") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "Parallelism") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "ParallelismPerKPU")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationParallelismConfiguration'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationParallelismConfiguration
  :: Val Text -- ^ 'kavapcConfigurationType'
  -> KinesisAnalyticsV2ApplicationParallelismConfiguration
kinesisAnalyticsV2ApplicationParallelismConfiguration configurationTypearg =
  KinesisAnalyticsV2ApplicationParallelismConfiguration
  { _kinesisAnalyticsV2ApplicationParallelismConfigurationAutoScalingEnabled = Nothing
  , _kinesisAnalyticsV2ApplicationParallelismConfigurationConfigurationType = configurationTypearg
  , _kinesisAnalyticsV2ApplicationParallelismConfigurationParallelism = Nothing
  , _kinesisAnalyticsV2ApplicationParallelismConfigurationParallelismPerKPU = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-autoscalingenabled
kavapcAutoScalingEnabled :: Lens' KinesisAnalyticsV2ApplicationParallelismConfiguration (Maybe (Val Bool))
kavapcAutoScalingEnabled = lens _kinesisAnalyticsV2ApplicationParallelismConfigurationAutoScalingEnabled (\s a -> s { _kinesisAnalyticsV2ApplicationParallelismConfigurationAutoScalingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-configurationtype
kavapcConfigurationType :: Lens' KinesisAnalyticsV2ApplicationParallelismConfiguration (Val Text)
kavapcConfigurationType = lens _kinesisAnalyticsV2ApplicationParallelismConfigurationConfigurationType (\s a -> s { _kinesisAnalyticsV2ApplicationParallelismConfigurationConfigurationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-parallelism
kavapcParallelism :: Lens' KinesisAnalyticsV2ApplicationParallelismConfiguration (Maybe (Val Integer))
kavapcParallelism = lens _kinesisAnalyticsV2ApplicationParallelismConfigurationParallelism (\s a -> s { _kinesisAnalyticsV2ApplicationParallelismConfigurationParallelism = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-parallelismperkpu
kavapcParallelismPerKPU :: Lens' KinesisAnalyticsV2ApplicationParallelismConfiguration (Maybe (Val Integer))
kavapcParallelismPerKPU = lens _kinesisAnalyticsV2ApplicationParallelismConfigurationParallelismPerKPU (\s a -> s { _kinesisAnalyticsV2ApplicationParallelismConfigurationParallelismPerKPU = a })
