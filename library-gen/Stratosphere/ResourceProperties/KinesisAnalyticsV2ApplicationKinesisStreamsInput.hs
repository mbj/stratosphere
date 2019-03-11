{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisstreamsinput.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationKinesisStreamsInput where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationKinesisStreamsInput. See
-- 'kinesisAnalyticsV2ApplicationKinesisStreamsInput' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationKinesisStreamsInput =
  KinesisAnalyticsV2ApplicationKinesisStreamsInput
  { _kinesisAnalyticsV2ApplicationKinesisStreamsInputResourceARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationKinesisStreamsInput where
  toJSON KinesisAnalyticsV2ApplicationKinesisStreamsInput{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsV2ApplicationKinesisStreamsInputResourceARN
    ]

instance FromJSON KinesisAnalyticsV2ApplicationKinesisStreamsInput where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationKinesisStreamsInput <$>
      (obj .: "ResourceARN")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationKinesisStreamsInput'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationKinesisStreamsInput
  :: Val Text -- ^ 'kavaksiResourceARN'
  -> KinesisAnalyticsV2ApplicationKinesisStreamsInput
kinesisAnalyticsV2ApplicationKinesisStreamsInput resourceARNarg =
  KinesisAnalyticsV2ApplicationKinesisStreamsInput
  { _kinesisAnalyticsV2ApplicationKinesisStreamsInputResourceARN = resourceARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisstreamsinput.html#cfn-kinesisanalyticsv2-application-kinesisstreamsinput-resourcearn
kavaksiResourceARN :: Lens' KinesisAnalyticsV2ApplicationKinesisStreamsInput (Val Text)
kavaksiResourceARN = lens _kinesisAnalyticsV2ApplicationKinesisStreamsInputResourceARN (\s a -> s { _kinesisAnalyticsV2ApplicationKinesisStreamsInputResourceARN = a })
