{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationInputProcessingConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationInputLambdaProcessor

-- | Full data type definition for
-- KinesisAnalyticsApplicationInputProcessingConfiguration. See
-- 'kinesisAnalyticsApplicationInputProcessingConfiguration' for a more
-- convenient constructor.
data KinesisAnalyticsApplicationInputProcessingConfiguration =
  KinesisAnalyticsApplicationInputProcessingConfiguration
  { _kinesisAnalyticsApplicationInputProcessingConfigurationInputLambdaProcessor :: Maybe KinesisAnalyticsApplicationInputLambdaProcessor
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationInputProcessingConfiguration where
  toJSON KinesisAnalyticsApplicationInputProcessingConfiguration{..} =
    object $
    catMaybes
    [ fmap (("InputLambdaProcessor",) . toJSON) _kinesisAnalyticsApplicationInputProcessingConfigurationInputLambdaProcessor
    ]

instance FromJSON KinesisAnalyticsApplicationInputProcessingConfiguration where
  parseJSON (Object obj) =
    KinesisAnalyticsApplicationInputProcessingConfiguration <$>
      (obj .:? "InputLambdaProcessor")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsApplicationInputProcessingConfiguration'
-- containing required fields as arguments.
kinesisAnalyticsApplicationInputProcessingConfiguration
  :: KinesisAnalyticsApplicationInputProcessingConfiguration
kinesisAnalyticsApplicationInputProcessingConfiguration  =
  KinesisAnalyticsApplicationInputProcessingConfiguration
  { _kinesisAnalyticsApplicationInputProcessingConfigurationInputLambdaProcessor = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html#cfn-kinesisanalytics-application-inputprocessingconfiguration-inputlambdaprocessor
kaaipcInputLambdaProcessor :: Lens' KinesisAnalyticsApplicationInputProcessingConfiguration (Maybe KinesisAnalyticsApplicationInputLambdaProcessor)
kaaipcInputLambdaProcessor = lens _kinesisAnalyticsApplicationInputProcessingConfigurationInputLambdaProcessor (\s a -> s { _kinesisAnalyticsApplicationInputProcessingConfigurationInputLambdaProcessor = a })
