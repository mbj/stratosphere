{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationOutputLambdaOutput where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsApplicationOutputLambdaOutput. See
-- 'kinesisAnalyticsApplicationOutputLambdaOutput' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationOutputLambdaOutput =
  KinesisAnalyticsApplicationOutputLambdaOutput
  { _kinesisAnalyticsApplicationOutputLambdaOutputResourceARN :: Val Text
  , _kinesisAnalyticsApplicationOutputLambdaOutputRoleARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationOutputLambdaOutput where
  toJSON KinesisAnalyticsApplicationOutputLambdaOutput{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsApplicationOutputLambdaOutputResourceARN
    , (Just . ("RoleARN",) . toJSON) _kinesisAnalyticsApplicationOutputLambdaOutputRoleARN
    ]

-- | Constructor for 'KinesisAnalyticsApplicationOutputLambdaOutput'
-- containing required fields as arguments.
kinesisAnalyticsApplicationOutputLambdaOutput
  :: Val Text -- ^ 'kaaoloResourceARN'
  -> Val Text -- ^ 'kaaoloRoleARN'
  -> KinesisAnalyticsApplicationOutputLambdaOutput
kinesisAnalyticsApplicationOutputLambdaOutput resourceARNarg roleARNarg =
  KinesisAnalyticsApplicationOutputLambdaOutput
  { _kinesisAnalyticsApplicationOutputLambdaOutputResourceARN = resourceARNarg
  , _kinesisAnalyticsApplicationOutputLambdaOutputRoleARN = roleARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html#cfn-kinesisanalytics-applicationoutput-lambdaoutput-resourcearn
kaaoloResourceARN :: Lens' KinesisAnalyticsApplicationOutputLambdaOutput (Val Text)
kaaoloResourceARN = lens _kinesisAnalyticsApplicationOutputLambdaOutputResourceARN (\s a -> s { _kinesisAnalyticsApplicationOutputLambdaOutputResourceARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html#cfn-kinesisanalytics-applicationoutput-lambdaoutput-rolearn
kaaoloRoleARN :: Lens' KinesisAnalyticsApplicationOutputLambdaOutput (Val Text)
kaaoloRoleARN = lens _kinesisAnalyticsApplicationOutputLambdaOutputRoleARN (\s a -> s { _kinesisAnalyticsApplicationOutputLambdaOutputRoleARN = a })
