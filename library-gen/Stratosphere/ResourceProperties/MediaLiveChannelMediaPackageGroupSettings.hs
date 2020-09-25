{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagegroupsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelMediaPackageGroupSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelOutputLocationRef

-- | Full data type definition for MediaLiveChannelMediaPackageGroupSettings.
-- See 'mediaLiveChannelMediaPackageGroupSettings' for a more convenient
-- constructor.
data MediaLiveChannelMediaPackageGroupSettings =
  MediaLiveChannelMediaPackageGroupSettings
  { _mediaLiveChannelMediaPackageGroupSettingsDestination :: Maybe MediaLiveChannelOutputLocationRef
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelMediaPackageGroupSettings where
  toJSON MediaLiveChannelMediaPackageGroupSettings{..} =
    object $
    catMaybes
    [ fmap (("Destination",) . toJSON) _mediaLiveChannelMediaPackageGroupSettingsDestination
    ]

-- | Constructor for 'MediaLiveChannelMediaPackageGroupSettings' containing
-- required fields as arguments.
mediaLiveChannelMediaPackageGroupSettings
  :: MediaLiveChannelMediaPackageGroupSettings
mediaLiveChannelMediaPackageGroupSettings  =
  MediaLiveChannelMediaPackageGroupSettings
  { _mediaLiveChannelMediaPackageGroupSettingsDestination = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagegroupsettings.html#cfn-medialive-channel-mediapackagegroupsettings-destination
mlcmpgsDestination :: Lens' MediaLiveChannelMediaPackageGroupSettings (Maybe MediaLiveChannelOutputLocationRef)
mlcmpgsDestination = lens _mediaLiveChannelMediaPackageGroupSettingsDestination (\s a -> s { _mediaLiveChannelMediaPackageGroupSettingsDestination = a })
