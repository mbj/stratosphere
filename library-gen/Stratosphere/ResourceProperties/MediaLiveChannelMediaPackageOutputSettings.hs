{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelMediaPackageOutputSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelMediaPackageOutputSettings.
-- See 'mediaLiveChannelMediaPackageOutputSettings' for a more convenient
-- constructor.
data MediaLiveChannelMediaPackageOutputSettings =
  MediaLiveChannelMediaPackageOutputSettings
  { 
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelMediaPackageOutputSettings where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'MediaLiveChannelMediaPackageOutputSettings' containing
-- required fields as arguments.
mediaLiveChannelMediaPackageOutputSettings
  :: MediaLiveChannelMediaPackageOutputSettings
mediaLiveChannelMediaPackageOutputSettings  =
  MediaLiveChannelMediaPackageOutputSettings
  { 
  }


