{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpcaptioninfodestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelRtmpCaptionInfoDestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- MediaLiveChannelRtmpCaptionInfoDestinationSettings. See
-- 'mediaLiveChannelRtmpCaptionInfoDestinationSettings' for a more
-- convenient constructor.
data MediaLiveChannelRtmpCaptionInfoDestinationSettings =
  MediaLiveChannelRtmpCaptionInfoDestinationSettings
  { 
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelRtmpCaptionInfoDestinationSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelRtmpCaptionInfoDestinationSettings'
-- containing required fields as arguments.
mediaLiveChannelRtmpCaptionInfoDestinationSettings
  :: MediaLiveChannelRtmpCaptionInfoDestinationSettings
mediaLiveChannelRtmpCaptionInfoDestinationSettings  =
  MediaLiveChannelRtmpCaptionInfoDestinationSettings
  { 
  }


