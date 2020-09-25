{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-colorspacepassthroughsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelColorSpacePassthroughSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- MediaLiveChannelColorSpacePassthroughSettings. See
-- 'mediaLiveChannelColorSpacePassthroughSettings' for a more convenient
-- constructor.
data MediaLiveChannelColorSpacePassthroughSettings =
  MediaLiveChannelColorSpacePassthroughSettings
  {
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelColorSpacePassthroughSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelColorSpacePassthroughSettings'
-- containing required fields as arguments.
mediaLiveChannelColorSpacePassthroughSettings
  :: MediaLiveChannelColorSpacePassthroughSettings
mediaLiveChannelColorSpacePassthroughSettings  =
  MediaLiveChannelColorSpacePassthroughSettings
  {
  }
