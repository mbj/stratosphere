{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-passthroughsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelPassThroughSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelPassThroughSettings. See
-- 'mediaLiveChannelPassThroughSettings' for a more convenient constructor.
data MediaLiveChannelPassThroughSettings =
  MediaLiveChannelPassThroughSettings
  { 
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelPassThroughSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelPassThroughSettings' containing required
-- fields as arguments.
mediaLiveChannelPassThroughSettings
  :: MediaLiveChannelPassThroughSettings
mediaLiveChannelPassThroughSettings  =
  MediaLiveChannelPassThroughSettings
  { 
  }


