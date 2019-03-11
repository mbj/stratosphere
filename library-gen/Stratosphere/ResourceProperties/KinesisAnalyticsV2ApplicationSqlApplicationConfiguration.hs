{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-sqlapplicationconfiguration.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationSqlApplicationConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationInput

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationSqlApplicationConfiguration. See
-- 'kinesisAnalyticsV2ApplicationSqlApplicationConfiguration' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationSqlApplicationConfiguration =
  KinesisAnalyticsV2ApplicationSqlApplicationConfiguration
  { _kinesisAnalyticsV2ApplicationSqlApplicationConfigurationInputs :: Maybe [KinesisAnalyticsV2ApplicationInput]
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationSqlApplicationConfiguration where
  toJSON KinesisAnalyticsV2ApplicationSqlApplicationConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Inputs",) . toJSON) _kinesisAnalyticsV2ApplicationSqlApplicationConfigurationInputs
    ]

instance FromJSON KinesisAnalyticsV2ApplicationSqlApplicationConfiguration where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationSqlApplicationConfiguration <$>
      (obj .:? "Inputs")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationSqlApplicationConfiguration' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationSqlApplicationConfiguration
  :: KinesisAnalyticsV2ApplicationSqlApplicationConfiguration
kinesisAnalyticsV2ApplicationSqlApplicationConfiguration  =
  KinesisAnalyticsV2ApplicationSqlApplicationConfiguration
  { _kinesisAnalyticsV2ApplicationSqlApplicationConfigurationInputs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-sqlapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-sqlapplicationconfiguration-inputs
kavasacInputs :: Lens' KinesisAnalyticsV2ApplicationSqlApplicationConfiguration (Maybe [KinesisAnalyticsV2ApplicationInput])
kavasacInputs = lens _kinesisAnalyticsV2ApplicationSqlApplicationConfigurationInputs (\s a -> s { _kinesisAnalyticsV2ApplicationSqlApplicationConfigurationInputs = a })
