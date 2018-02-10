{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputlambdaprocessor.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationInputLambdaProcessor where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsApplicationInputLambdaProcessor. See
-- 'kinesisAnalyticsApplicationInputLambdaProcessor' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationInputLambdaProcessor =
  KinesisAnalyticsApplicationInputLambdaProcessor
  { _kinesisAnalyticsApplicationInputLambdaProcessorResourceARN :: Val Text
  , _kinesisAnalyticsApplicationInputLambdaProcessorRoleARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationInputLambdaProcessor where
  toJSON KinesisAnalyticsApplicationInputLambdaProcessor{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsApplicationInputLambdaProcessorResourceARN
    , (Just . ("RoleARN",) . toJSON) _kinesisAnalyticsApplicationInputLambdaProcessorRoleARN
    ]

instance FromJSON KinesisAnalyticsApplicationInputLambdaProcessor where
  parseJSON (Object obj) =
    KinesisAnalyticsApplicationInputLambdaProcessor <$>
      (obj .: "ResourceARN") <*>
      (obj .: "RoleARN")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsApplicationInputLambdaProcessor'
-- containing required fields as arguments.
kinesisAnalyticsApplicationInputLambdaProcessor
  :: Val Text -- ^ 'kaailpResourceARN'
  -> Val Text -- ^ 'kaailpRoleARN'
  -> KinesisAnalyticsApplicationInputLambdaProcessor
kinesisAnalyticsApplicationInputLambdaProcessor resourceARNarg roleARNarg =
  KinesisAnalyticsApplicationInputLambdaProcessor
  { _kinesisAnalyticsApplicationInputLambdaProcessorResourceARN = resourceARNarg
  , _kinesisAnalyticsApplicationInputLambdaProcessorRoleARN = roleARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputlambdaprocessor.html#cfn-kinesisanalytics-application-inputlambdaprocessor-resourcearn
kaailpResourceARN :: Lens' KinesisAnalyticsApplicationInputLambdaProcessor (Val Text)
kaailpResourceARN = lens _kinesisAnalyticsApplicationInputLambdaProcessorResourceARN (\s a -> s { _kinesisAnalyticsApplicationInputLambdaProcessorResourceARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputlambdaprocessor.html#cfn-kinesisanalytics-application-inputlambdaprocessor-rolearn
kaailpRoleARN :: Lens' KinesisAnalyticsApplicationInputLambdaProcessor (Val Text)
kaailpRoleARN = lens _kinesisAnalyticsApplicationInputLambdaProcessorRoleARN (\s a -> s { _kinesisAnalyticsApplicationInputLambdaProcessorRoleARN = a })
