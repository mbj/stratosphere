{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationCheckpointConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationCheckpointConfiguration. See
-- 'kinesisAnalyticsV2ApplicationCheckpointConfiguration' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationCheckpointConfiguration =
  KinesisAnalyticsV2ApplicationCheckpointConfiguration
  { _kinesisAnalyticsV2ApplicationCheckpointConfigurationCheckpointInterval :: Maybe (Val Integer)
  , _kinesisAnalyticsV2ApplicationCheckpointConfigurationCheckpointingEnabled :: Maybe (Val Bool)
  , _kinesisAnalyticsV2ApplicationCheckpointConfigurationConfigurationType :: Val Text
  , _kinesisAnalyticsV2ApplicationCheckpointConfigurationMinPauseBetweenCheckpoints :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationCheckpointConfiguration where
  toJSON KinesisAnalyticsV2ApplicationCheckpointConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CheckpointInterval",) . toJSON . fmap Integer') _kinesisAnalyticsV2ApplicationCheckpointConfigurationCheckpointInterval
    , fmap (("CheckpointingEnabled",) . toJSON . fmap Bool') _kinesisAnalyticsV2ApplicationCheckpointConfigurationCheckpointingEnabled
    , (Just . ("ConfigurationType",) . toJSON) _kinesisAnalyticsV2ApplicationCheckpointConfigurationConfigurationType
    , fmap (("MinPauseBetweenCheckpoints",) . toJSON . fmap Integer') _kinesisAnalyticsV2ApplicationCheckpointConfigurationMinPauseBetweenCheckpoints
    ]

instance FromJSON KinesisAnalyticsV2ApplicationCheckpointConfiguration where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationCheckpointConfiguration <$>
      fmap (fmap (fmap unInteger')) (obj .:? "CheckpointInterval") <*>
      fmap (fmap (fmap unBool')) (obj .:? "CheckpointingEnabled") <*>
      (obj .: "ConfigurationType") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "MinPauseBetweenCheckpoints")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationCheckpointConfiguration'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationCheckpointConfiguration
  :: Val Text -- ^ 'kavaccConfigurationType'
  -> KinesisAnalyticsV2ApplicationCheckpointConfiguration
kinesisAnalyticsV2ApplicationCheckpointConfiguration configurationTypearg =
  KinesisAnalyticsV2ApplicationCheckpointConfiguration
  { _kinesisAnalyticsV2ApplicationCheckpointConfigurationCheckpointInterval = Nothing
  , _kinesisAnalyticsV2ApplicationCheckpointConfigurationCheckpointingEnabled = Nothing
  , _kinesisAnalyticsV2ApplicationCheckpointConfigurationConfigurationType = configurationTypearg
  , _kinesisAnalyticsV2ApplicationCheckpointConfigurationMinPauseBetweenCheckpoints = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-checkpointinterval
kavaccCheckpointInterval :: Lens' KinesisAnalyticsV2ApplicationCheckpointConfiguration (Maybe (Val Integer))
kavaccCheckpointInterval = lens _kinesisAnalyticsV2ApplicationCheckpointConfigurationCheckpointInterval (\s a -> s { _kinesisAnalyticsV2ApplicationCheckpointConfigurationCheckpointInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-checkpointingenabled
kavaccCheckpointingEnabled :: Lens' KinesisAnalyticsV2ApplicationCheckpointConfiguration (Maybe (Val Bool))
kavaccCheckpointingEnabled = lens _kinesisAnalyticsV2ApplicationCheckpointConfigurationCheckpointingEnabled (\s a -> s { _kinesisAnalyticsV2ApplicationCheckpointConfigurationCheckpointingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-configurationtype
kavaccConfigurationType :: Lens' KinesisAnalyticsV2ApplicationCheckpointConfiguration (Val Text)
kavaccConfigurationType = lens _kinesisAnalyticsV2ApplicationCheckpointConfigurationConfigurationType (\s a -> s { _kinesisAnalyticsV2ApplicationCheckpointConfigurationConfigurationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-minpausebetweencheckpoints
kavaccMinPauseBetweenCheckpoints :: Lens' KinesisAnalyticsV2ApplicationCheckpointConfiguration (Maybe (Val Integer))
kavaccMinPauseBetweenCheckpoints = lens _kinesisAnalyticsV2ApplicationCheckpointConfigurationMinPauseBetweenCheckpoints (\s a -> s { _kinesisAnalyticsV2ApplicationCheckpointConfigurationMinPauseBetweenCheckpoints = a })
