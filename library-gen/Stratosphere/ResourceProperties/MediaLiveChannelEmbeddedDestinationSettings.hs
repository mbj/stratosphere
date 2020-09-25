{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddeddestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelEmbeddedDestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- MediaLiveChannelEmbeddedDestinationSettings. See
-- 'mediaLiveChannelEmbeddedDestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelEmbeddedDestinationSettings =
  MediaLiveChannelEmbeddedDestinationSettings
  {
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelEmbeddedDestinationSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelEmbeddedDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelEmbeddedDestinationSettings
  :: MediaLiveChannelEmbeddedDestinationSettings
mediaLiveChannelEmbeddedDestinationSettings  =
  MediaLiveChannelEmbeddedDestinationSettings
  {
  }
