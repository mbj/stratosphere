{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-smptettdestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelSmpteTtDestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelSmpteTtDestinationSettings.
-- See 'mediaLiveChannelSmpteTtDestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelSmpteTtDestinationSettings =
  MediaLiveChannelSmpteTtDestinationSettings
  {
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelSmpteTtDestinationSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelSmpteTtDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelSmpteTtDestinationSettings
  :: MediaLiveChannelSmpteTtDestinationSettings
mediaLiveChannelSmpteTtDestinationSettings  =
  MediaLiveChannelSmpteTtDestinationSettings
  {
  }
