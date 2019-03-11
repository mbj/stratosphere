{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html

module Stratosphere.Resources.KinesisAnalyticsV2ApplicationCloudWatchLoggingOption where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationCloudWatchLoggingOptionCloudWatchLoggingOption

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationCloudWatchLoggingOption. See
-- 'kinesisAnalyticsV2ApplicationCloudWatchLoggingOption' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationCloudWatchLoggingOption =
  KinesisAnalyticsV2ApplicationCloudWatchLoggingOption
  { _kinesisAnalyticsV2ApplicationCloudWatchLoggingOptionApplicationName :: Val Text
  , _kinesisAnalyticsV2ApplicationCloudWatchLoggingOptionCloudWatchLoggingOption :: KinesisAnalyticsV2ApplicationCloudWatchLoggingOptionCloudWatchLoggingOption
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationCloudWatchLoggingOption where
  toJSON KinesisAnalyticsV2ApplicationCloudWatchLoggingOption{..} =
    object $
    catMaybes
    [ (Just . ("ApplicationName",) . toJSON) _kinesisAnalyticsV2ApplicationCloudWatchLoggingOptionApplicationName
    , (Just . ("CloudWatchLoggingOption",) . toJSON) _kinesisAnalyticsV2ApplicationCloudWatchLoggingOptionCloudWatchLoggingOption
    ]

instance FromJSON KinesisAnalyticsV2ApplicationCloudWatchLoggingOption where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationCloudWatchLoggingOption <$>
      (obj .: "ApplicationName") <*>
      (obj .: "CloudWatchLoggingOption")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationCloudWatchLoggingOption'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationCloudWatchLoggingOption
  :: Val Text -- ^ 'kavacwloApplicationName'
  -> KinesisAnalyticsV2ApplicationCloudWatchLoggingOptionCloudWatchLoggingOption -- ^ 'kavacwloCloudWatchLoggingOption'
  -> KinesisAnalyticsV2ApplicationCloudWatchLoggingOption
kinesisAnalyticsV2ApplicationCloudWatchLoggingOption applicationNamearg cloudWatchLoggingOptionarg =
  KinesisAnalyticsV2ApplicationCloudWatchLoggingOption
  { _kinesisAnalyticsV2ApplicationCloudWatchLoggingOptionApplicationName = applicationNamearg
  , _kinesisAnalyticsV2ApplicationCloudWatchLoggingOptionCloudWatchLoggingOption = cloudWatchLoggingOptionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-applicationname
kavacwloApplicationName :: Lens' KinesisAnalyticsV2ApplicationCloudWatchLoggingOption (Val Text)
kavacwloApplicationName = lens _kinesisAnalyticsV2ApplicationCloudWatchLoggingOptionApplicationName (\s a -> s { _kinesisAnalyticsV2ApplicationCloudWatchLoggingOptionApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption
kavacwloCloudWatchLoggingOption :: Lens' KinesisAnalyticsV2ApplicationCloudWatchLoggingOption KinesisAnalyticsV2ApplicationCloudWatchLoggingOptionCloudWatchLoggingOption
kavacwloCloudWatchLoggingOption = lens _kinesisAnalyticsV2ApplicationCloudWatchLoggingOptionCloudWatchLoggingOption (\s a -> s { _kinesisAnalyticsV2ApplicationCloudWatchLoggingOptionCloudWatchLoggingOption = a })
