{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-webvttdestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelWebvttDestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelWebvttDestinationSettings.
-- See 'mediaLiveChannelWebvttDestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelWebvttDestinationSettings =
  MediaLiveChannelWebvttDestinationSettings
  {
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelWebvttDestinationSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelWebvttDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelWebvttDestinationSettings
  :: MediaLiveChannelWebvttDestinationSettings
mediaLiveChannelWebvttDestinationSettings  =
  MediaLiveChannelWebvttDestinationSettings
  {
  }
