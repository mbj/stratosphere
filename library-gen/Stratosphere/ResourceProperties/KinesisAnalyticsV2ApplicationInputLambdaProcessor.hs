{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputlambdaprocessor.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationInputLambdaProcessor where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationInputLambdaProcessor. See
-- 'kinesisAnalyticsV2ApplicationInputLambdaProcessor' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationInputLambdaProcessor =
  KinesisAnalyticsV2ApplicationInputLambdaProcessor
  { _kinesisAnalyticsV2ApplicationInputLambdaProcessorResourceARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationInputLambdaProcessor where
  toJSON KinesisAnalyticsV2ApplicationInputLambdaProcessor{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsV2ApplicationInputLambdaProcessorResourceARN
    ]

instance FromJSON KinesisAnalyticsV2ApplicationInputLambdaProcessor where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationInputLambdaProcessor <$>
      (obj .: "ResourceARN")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationInputLambdaProcessor'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationInputLambdaProcessor
  :: Val Text -- ^ 'kavailpResourceARN'
  -> KinesisAnalyticsV2ApplicationInputLambdaProcessor
kinesisAnalyticsV2ApplicationInputLambdaProcessor resourceARNarg =
  KinesisAnalyticsV2ApplicationInputLambdaProcessor
  { _kinesisAnalyticsV2ApplicationInputLambdaProcessorResourceARN = resourceARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputlambdaprocessor.html#cfn-kinesisanalyticsv2-application-inputlambdaprocessor-resourcearn
kavailpResourceARN :: Lens' KinesisAnalyticsV2ApplicationInputLambdaProcessor (Val Text)
kavailpResourceARN = lens _kinesisAnalyticsV2ApplicationInputLambdaProcessorResourceARN (\s a -> s { _kinesisAnalyticsV2ApplicationInputLambdaProcessorResourceARN = a })
