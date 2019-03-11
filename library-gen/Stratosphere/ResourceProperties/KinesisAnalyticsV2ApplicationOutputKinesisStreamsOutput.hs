{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput. See
-- 'kinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput =
  KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput
  { _kinesisAnalyticsV2ApplicationOutputKinesisStreamsOutputResourceARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput where
  toJSON KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsV2ApplicationOutputKinesisStreamsOutputResourceARN
    ]

instance FromJSON KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput <$>
      (obj .: "ResourceARN")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput
  :: Val Text -- ^ 'kavaoksoResourceARN'
  -> KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput
kinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput resourceARNarg =
  KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput
  { _kinesisAnalyticsV2ApplicationOutputKinesisStreamsOutputResourceARN = resourceARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput.html#cfn-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput-resourcearn
kavaoksoResourceARN :: Lens' KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput (Val Text)
kavaoksoResourceARN = lens _kinesisAnalyticsV2ApplicationOutputKinesisStreamsOutputResourceARN (\s a -> s { _kinesisAnalyticsV2ApplicationOutputKinesisStreamsOutputResourceARN = a })
