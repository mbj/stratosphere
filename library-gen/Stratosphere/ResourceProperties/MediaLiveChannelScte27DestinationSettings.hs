{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27destinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelScte27DestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelScte27DestinationSettings.
-- See 'mediaLiveChannelScte27DestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelScte27DestinationSettings =
  MediaLiveChannelScte27DestinationSettings
  { 
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelScte27DestinationSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelScte27DestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelScte27DestinationSettings
  :: MediaLiveChannelScte27DestinationSettings
mediaLiveChannelScte27DestinationSettings  =
  MediaLiveChannelScte27DestinationSettings
  { 
  }


