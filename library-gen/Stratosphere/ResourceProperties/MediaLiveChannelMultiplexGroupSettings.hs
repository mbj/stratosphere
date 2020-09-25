{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexgroupsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelMultiplexGroupSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelMultiplexGroupSettings. See
-- 'mediaLiveChannelMultiplexGroupSettings' for a more convenient
-- constructor.
data MediaLiveChannelMultiplexGroupSettings =
  MediaLiveChannelMultiplexGroupSettings
  { 
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelMultiplexGroupSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelMultiplexGroupSettings' containing
-- required fields as arguments.
mediaLiveChannelMultiplexGroupSettings
  :: MediaLiveChannelMultiplexGroupSettings
mediaLiveChannelMultiplexGroupSettings  =
  MediaLiveChannelMultiplexGroupSettings
  { 
  }


