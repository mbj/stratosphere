{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisstreamsoutput.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationOutputKinesisStreamsOutput where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsApplicationOutputKinesisStreamsOutput. See
-- 'kinesisAnalyticsApplicationOutputKinesisStreamsOutput' for a more
-- convenient constructor.
data KinesisAnalyticsApplicationOutputKinesisStreamsOutput =
  KinesisAnalyticsApplicationOutputKinesisStreamsOutput
  { _kinesisAnalyticsApplicationOutputKinesisStreamsOutputResourceARN :: Val Text
  , _kinesisAnalyticsApplicationOutputKinesisStreamsOutputRoleARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationOutputKinesisStreamsOutput where
  toJSON KinesisAnalyticsApplicationOutputKinesisStreamsOutput{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsApplicationOutputKinesisStreamsOutputResourceARN
    , (Just . ("RoleARN",) . toJSON) _kinesisAnalyticsApplicationOutputKinesisStreamsOutputRoleARN
    ]

instance FromJSON KinesisAnalyticsApplicationOutputKinesisStreamsOutput where
  parseJSON (Object obj) =
    KinesisAnalyticsApplicationOutputKinesisStreamsOutput <$>
      (obj .: "ResourceARN") <*>
      (obj .: "RoleARN")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsApplicationOutputKinesisStreamsOutput'
-- containing required fields as arguments.
kinesisAnalyticsApplicationOutputKinesisStreamsOutput
  :: Val Text -- ^ 'kaaoksoResourceARN'
  -> Val Text -- ^ 'kaaoksoRoleARN'
  -> KinesisAnalyticsApplicationOutputKinesisStreamsOutput
kinesisAnalyticsApplicationOutputKinesisStreamsOutput resourceARNarg roleARNarg =
  KinesisAnalyticsApplicationOutputKinesisStreamsOutput
  { _kinesisAnalyticsApplicationOutputKinesisStreamsOutputResourceARN = resourceARNarg
  , _kinesisAnalyticsApplicationOutputKinesisStreamsOutputRoleARN = roleARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisstreamsoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisstreamsoutput-resourcearn
kaaoksoResourceARN :: Lens' KinesisAnalyticsApplicationOutputKinesisStreamsOutput (Val Text)
kaaoksoResourceARN = lens _kinesisAnalyticsApplicationOutputKinesisStreamsOutputResourceARN (\s a -> s { _kinesisAnalyticsApplicationOutputKinesisStreamsOutputResourceARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisstreamsoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisstreamsoutput-rolearn
kaaoksoRoleARN :: Lens' KinesisAnalyticsApplicationOutputKinesisStreamsOutput (Val Text)
kaaoksoRoleARN = lens _kinesisAnalyticsApplicationOutputKinesisStreamsOutputRoleARN (\s a -> s { _kinesisAnalyticsApplicationOutputKinesisStreamsOutputRoleARN = a })
