{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html

module Stratosphere.Resources.IoTAnalyticsChannel where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsChannelChannelStorage
import Stratosphere.ResourceProperties.IoTAnalyticsChannelRetentionPeriod
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for IoTAnalyticsChannel. See
-- 'ioTAnalyticsChannel' for a more convenient constructor.
data IoTAnalyticsChannel =
  IoTAnalyticsChannel
  { _ioTAnalyticsChannelChannelName :: Maybe (Val Text)
  , _ioTAnalyticsChannelChannelStorage :: Maybe IoTAnalyticsChannelChannelStorage
  , _ioTAnalyticsChannelRetentionPeriod :: Maybe IoTAnalyticsChannelRetentionPeriod
  , _ioTAnalyticsChannelTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties IoTAnalyticsChannel where
  toResourceProperties IoTAnalyticsChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoTAnalytics::Channel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ChannelName",) . toJSON) _ioTAnalyticsChannelChannelName
        , fmap (("ChannelStorage",) . toJSON) _ioTAnalyticsChannelChannelStorage
        , fmap (("RetentionPeriod",) . toJSON) _ioTAnalyticsChannelRetentionPeriod
        , fmap (("Tags",) . toJSON) _ioTAnalyticsChannelTags
        ]
    }

-- | Constructor for 'IoTAnalyticsChannel' containing required fields as
-- arguments.
ioTAnalyticsChannel
  :: IoTAnalyticsChannel
ioTAnalyticsChannel  =
  IoTAnalyticsChannel
  { _ioTAnalyticsChannelChannelName = Nothing
  , _ioTAnalyticsChannelChannelStorage = Nothing
  , _ioTAnalyticsChannelRetentionPeriod = Nothing
  , _ioTAnalyticsChannelTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-channelname
itacChannelName :: Lens' IoTAnalyticsChannel (Maybe (Val Text))
itacChannelName = lens _ioTAnalyticsChannelChannelName (\s a -> s { _ioTAnalyticsChannelChannelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-channelstorage
itacChannelStorage :: Lens' IoTAnalyticsChannel (Maybe IoTAnalyticsChannelChannelStorage)
itacChannelStorage = lens _ioTAnalyticsChannelChannelStorage (\s a -> s { _ioTAnalyticsChannelChannelStorage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-retentionperiod
itacRetentionPeriod :: Lens' IoTAnalyticsChannel (Maybe IoTAnalyticsChannelRetentionPeriod)
itacRetentionPeriod = lens _ioTAnalyticsChannelRetentionPeriod (\s a -> s { _ioTAnalyticsChannelRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-tags
itacTags :: Lens' IoTAnalyticsChannel (Maybe [Tag])
itacTags = lens _ioTAnalyticsChannelTags (\s a -> s { _ioTAnalyticsChannelTags = a })
