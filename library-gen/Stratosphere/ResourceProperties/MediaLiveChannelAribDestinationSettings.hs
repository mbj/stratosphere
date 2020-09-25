{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aribdestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelAribDestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelAribDestinationSettings.
-- See 'mediaLiveChannelAribDestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelAribDestinationSettings =
  MediaLiveChannelAribDestinationSettings
  {
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAribDestinationSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelAribDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelAribDestinationSettings
  :: MediaLiveChannelAribDestinationSettings
mediaLiveChannelAribDestinationSettings  =
  MediaLiveChannelAribDestinationSettings
  {
  }
