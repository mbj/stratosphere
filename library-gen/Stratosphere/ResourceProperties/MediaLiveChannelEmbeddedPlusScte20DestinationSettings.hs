{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedplusscte20destinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelEmbeddedPlusScte20DestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- MediaLiveChannelEmbeddedPlusScte20DestinationSettings. See
-- 'mediaLiveChannelEmbeddedPlusScte20DestinationSettings' for a more
-- convenient constructor.
data MediaLiveChannelEmbeddedPlusScte20DestinationSettings =
  MediaLiveChannelEmbeddedPlusScte20DestinationSettings
  { 
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelEmbeddedPlusScte20DestinationSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelEmbeddedPlusScte20DestinationSettings'
-- containing required fields as arguments.
mediaLiveChannelEmbeddedPlusScte20DestinationSettings
  :: MediaLiveChannelEmbeddedPlusScte20DestinationSettings
mediaLiveChannelEmbeddedPlusScte20DestinationSettings  =
  MediaLiveChannelEmbeddedPlusScte20DestinationSettings
  { 
  }


