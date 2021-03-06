{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput. See
-- 'kinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput =
  KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput
  { _kinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutputResourceARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput where
  toJSON KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutputResourceARN
    ]

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput
  :: Val Text -- ^ 'kavaokfoResourceARN'
  -> KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput
kinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput resourceARNarg =
  KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput
  { _kinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutputResourceARN = resourceARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput-resourcearn
kavaokfoResourceARN :: Lens' KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput (Val Text)
kavaokfoResourceARN = lens _kinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutputResourceARN (\s a -> s { _kinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutputResourceARN = a })
