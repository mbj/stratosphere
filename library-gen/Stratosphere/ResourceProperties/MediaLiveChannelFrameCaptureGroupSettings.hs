{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecapturegroupsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelFrameCaptureGroupSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelOutputLocationRef

-- | Full data type definition for MediaLiveChannelFrameCaptureGroupSettings.
-- See 'mediaLiveChannelFrameCaptureGroupSettings' for a more convenient
-- constructor.
data MediaLiveChannelFrameCaptureGroupSettings =
  MediaLiveChannelFrameCaptureGroupSettings
  { _mediaLiveChannelFrameCaptureGroupSettingsDestination :: Maybe MediaLiveChannelOutputLocationRef
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelFrameCaptureGroupSettings where
  toJSON MediaLiveChannelFrameCaptureGroupSettings{..} =
    object $
    catMaybes
    [ fmap (("Destination",) . toJSON) _mediaLiveChannelFrameCaptureGroupSettingsDestination
    ]

-- | Constructor for 'MediaLiveChannelFrameCaptureGroupSettings' containing
-- required fields as arguments.
mediaLiveChannelFrameCaptureGroupSettings
  :: MediaLiveChannelFrameCaptureGroupSettings
mediaLiveChannelFrameCaptureGroupSettings  =
  MediaLiveChannelFrameCaptureGroupSettings
  { _mediaLiveChannelFrameCaptureGroupSettingsDestination = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecapturegroupsettings.html#cfn-medialive-channel-framecapturegroupsettings-destination
mlcfcgsDestination :: Lens' MediaLiveChannelFrameCaptureGroupSettings (Maybe MediaLiveChannelOutputLocationRef)
mlcfcgsDestination = lens _mediaLiveChannelFrameCaptureGroupSettingsDestination (\s a -> s { _mediaLiveChannelFrameCaptureGroupSettingsDestination = a })
