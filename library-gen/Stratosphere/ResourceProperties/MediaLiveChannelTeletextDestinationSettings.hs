{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextdestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelTeletextDestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- MediaLiveChannelTeletextDestinationSettings. See
-- 'mediaLiveChannelTeletextDestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelTeletextDestinationSettings =
  MediaLiveChannelTeletextDestinationSettings
  {
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelTeletextDestinationSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelTeletextDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelTeletextDestinationSettings
  :: MediaLiveChannelTeletextDestinationSettings
mediaLiveChannelTeletextDestinationSettings  =
  MediaLiveChannelTeletextDestinationSettings
  {
  }
