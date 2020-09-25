{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20plusembeddeddestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelScte20PlusEmbeddedDestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- MediaLiveChannelScte20PlusEmbeddedDestinationSettings. See
-- 'mediaLiveChannelScte20PlusEmbeddedDestinationSettings' for a more
-- convenient constructor.
data MediaLiveChannelScte20PlusEmbeddedDestinationSettings =
  MediaLiveChannelScte20PlusEmbeddedDestinationSettings
  {
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelScte20PlusEmbeddedDestinationSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelScte20PlusEmbeddedDestinationSettings'
-- containing required fields as arguments.
mediaLiveChannelScte20PlusEmbeddedDestinationSettings
  :: MediaLiveChannelScte20PlusEmbeddedDestinationSettings
mediaLiveChannelScte20PlusEmbeddedDestinationSettings  =
  MediaLiveChannelScte20PlusEmbeddedDestinationSettings
  {
  }
