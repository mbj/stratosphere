{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationOutputKinesisFirehoseOutput where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsApplicationOutputKinesisFirehoseOutput. See
-- 'kinesisAnalyticsApplicationOutputKinesisFirehoseOutput' for a more
-- convenient constructor.
data KinesisAnalyticsApplicationOutputKinesisFirehoseOutput =
  KinesisAnalyticsApplicationOutputKinesisFirehoseOutput
  { _kinesisAnalyticsApplicationOutputKinesisFirehoseOutputResourceARN :: Val Text
  , _kinesisAnalyticsApplicationOutputKinesisFirehoseOutputRoleARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationOutputKinesisFirehoseOutput where
  toJSON KinesisAnalyticsApplicationOutputKinesisFirehoseOutput{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsApplicationOutputKinesisFirehoseOutputResourceARN
    , (Just . ("RoleARN",) . toJSON) _kinesisAnalyticsApplicationOutputKinesisFirehoseOutputRoleARN
    ]

-- | Constructor for 'KinesisAnalyticsApplicationOutputKinesisFirehoseOutput'
-- containing required fields as arguments.
kinesisAnalyticsApplicationOutputKinesisFirehoseOutput
  :: Val Text -- ^ 'kaaokfoResourceARN'
  -> Val Text -- ^ 'kaaokfoRoleARN'
  -> KinesisAnalyticsApplicationOutputKinesisFirehoseOutput
kinesisAnalyticsApplicationOutputKinesisFirehoseOutput resourceARNarg roleARNarg =
  KinesisAnalyticsApplicationOutputKinesisFirehoseOutput
  { _kinesisAnalyticsApplicationOutputKinesisFirehoseOutputResourceARN = resourceARNarg
  , _kinesisAnalyticsApplicationOutputKinesisFirehoseOutputRoleARN = roleARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisfirehoseoutput-resourcearn
kaaokfoResourceARN :: Lens' KinesisAnalyticsApplicationOutputKinesisFirehoseOutput (Val Text)
kaaokfoResourceARN = lens _kinesisAnalyticsApplicationOutputKinesisFirehoseOutputResourceARN (\s a -> s { _kinesisAnalyticsApplicationOutputKinesisFirehoseOutputResourceARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisfirehoseoutput-rolearn
kaaokfoRoleARN :: Lens' KinesisAnalyticsApplicationOutputKinesisFirehoseOutput (Val Text)
kaaokfoRoleARN = lens _kinesisAnalyticsApplicationOutputKinesisFirehoseOutputRoleARN (\s a -> s { _kinesisAnalyticsApplicationOutputKinesisFirehoseOutputRoleARN = a })
