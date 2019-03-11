{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisfirehoseinput.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationKinesisFirehoseInput where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationKinesisFirehoseInput. See
-- 'kinesisAnalyticsV2ApplicationKinesisFirehoseInput' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationKinesisFirehoseInput =
  KinesisAnalyticsV2ApplicationKinesisFirehoseInput
  { _kinesisAnalyticsV2ApplicationKinesisFirehoseInputResourceARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationKinesisFirehoseInput where
  toJSON KinesisAnalyticsV2ApplicationKinesisFirehoseInput{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsV2ApplicationKinesisFirehoseInputResourceARN
    ]

instance FromJSON KinesisAnalyticsV2ApplicationKinesisFirehoseInput where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationKinesisFirehoseInput <$>
      (obj .: "ResourceARN")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationKinesisFirehoseInput'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationKinesisFirehoseInput
  :: Val Text -- ^ 'kavakfiResourceARN'
  -> KinesisAnalyticsV2ApplicationKinesisFirehoseInput
kinesisAnalyticsV2ApplicationKinesisFirehoseInput resourceARNarg =
  KinesisAnalyticsV2ApplicationKinesisFirehoseInput
  { _kinesisAnalyticsV2ApplicationKinesisFirehoseInputResourceARN = resourceARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisfirehoseinput.html#cfn-kinesisanalyticsv2-application-kinesisfirehoseinput-resourcearn
kavakfiResourceARN :: Lens' KinesisAnalyticsV2ApplicationKinesisFirehoseInput (Val Text)
kavakfiResourceARN = lens _kinesisAnalyticsV2ApplicationKinesisFirehoseInputResourceARN (\s a -> s { _kinesisAnalyticsV2ApplicationKinesisFirehoseInputResourceARN = a })
