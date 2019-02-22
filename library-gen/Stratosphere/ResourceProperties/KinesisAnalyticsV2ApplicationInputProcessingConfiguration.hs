{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputprocessingconfiguration.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationInputProcessingConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationInputLambdaProcessor

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationInputProcessingConfiguration. See
-- 'kinesisAnalyticsV2ApplicationInputProcessingConfiguration' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationInputProcessingConfiguration =
  KinesisAnalyticsV2ApplicationInputProcessingConfiguration
  { _kinesisAnalyticsV2ApplicationInputProcessingConfigurationInputLambdaProcessor :: Maybe KinesisAnalyticsV2ApplicationInputLambdaProcessor
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationInputProcessingConfiguration where
  toJSON KinesisAnalyticsV2ApplicationInputProcessingConfiguration{..} =
    object $
    catMaybes
    [ fmap (("InputLambdaProcessor",) . toJSON) _kinesisAnalyticsV2ApplicationInputProcessingConfigurationInputLambdaProcessor
    ]

instance FromJSON KinesisAnalyticsV2ApplicationInputProcessingConfiguration where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationInputProcessingConfiguration <$>
      (obj .:? "InputLambdaProcessor")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationInputProcessingConfiguration' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationInputProcessingConfiguration
  :: KinesisAnalyticsV2ApplicationInputProcessingConfiguration
kinesisAnalyticsV2ApplicationInputProcessingConfiguration  =
  KinesisAnalyticsV2ApplicationInputProcessingConfiguration
  { _kinesisAnalyticsV2ApplicationInputProcessingConfigurationInputLambdaProcessor = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputprocessingconfiguration.html#cfn-kinesisanalyticsv2-application-inputprocessingconfiguration-inputlambdaprocessor
kavaipcInputLambdaProcessor :: Lens' KinesisAnalyticsV2ApplicationInputProcessingConfiguration (Maybe KinesisAnalyticsV2ApplicationInputLambdaProcessor)
kavaipcInputLambdaProcessor = lens _kinesisAnalyticsV2ApplicationInputProcessingConfigurationInputLambdaProcessor (\s a -> s { _kinesisAnalyticsV2ApplicationInputProcessingConfigurationInputLambdaProcessor = a })
