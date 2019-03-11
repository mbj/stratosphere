{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-lambdaoutput.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationOutputLambdaOutput where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationOutputLambdaOutput. See
-- 'kinesisAnalyticsV2ApplicationOutputLambdaOutput' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationOutputLambdaOutput =
  KinesisAnalyticsV2ApplicationOutputLambdaOutput
  { _kinesisAnalyticsV2ApplicationOutputLambdaOutputResourceARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationOutputLambdaOutput where
  toJSON KinesisAnalyticsV2ApplicationOutputLambdaOutput{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsV2ApplicationOutputLambdaOutputResourceARN
    ]

instance FromJSON KinesisAnalyticsV2ApplicationOutputLambdaOutput where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationOutputLambdaOutput <$>
      (obj .: "ResourceARN")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationOutputLambdaOutput'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationOutputLambdaOutput
  :: Val Text -- ^ 'kavaoloResourceARN'
  -> KinesisAnalyticsV2ApplicationOutputLambdaOutput
kinesisAnalyticsV2ApplicationOutputLambdaOutput resourceARNarg =
  KinesisAnalyticsV2ApplicationOutputLambdaOutput
  { _kinesisAnalyticsV2ApplicationOutputLambdaOutputResourceARN = resourceARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-lambdaoutput.html#cfn-kinesisanalyticsv2-applicationoutput-lambdaoutput-resourcearn
kavaoloResourceARN :: Lens' KinesisAnalyticsV2ApplicationOutputLambdaOutput (Val Text)
kavaoloResourceARN = lens _kinesisAnalyticsV2ApplicationOutputLambdaOutputResourceARN (\s a -> s { _kinesisAnalyticsV2ApplicationOutputLambdaOutputResourceARN = a })
