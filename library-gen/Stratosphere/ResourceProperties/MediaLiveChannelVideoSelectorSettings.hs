{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelVideoSelectorSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelVideoSelectorPid
import Stratosphere.ResourceProperties.MediaLiveChannelVideoSelectorProgramId

-- | Full data type definition for MediaLiveChannelVideoSelectorSettings. See
-- 'mediaLiveChannelVideoSelectorSettings' for a more convenient
-- constructor.
data MediaLiveChannelVideoSelectorSettings =
  MediaLiveChannelVideoSelectorSettings
  { _mediaLiveChannelVideoSelectorSettingsVideoSelectorPid :: Maybe MediaLiveChannelVideoSelectorPid
  , _mediaLiveChannelVideoSelectorSettingsVideoSelectorProgramId :: Maybe MediaLiveChannelVideoSelectorProgramId
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelVideoSelectorSettings where
  toJSON MediaLiveChannelVideoSelectorSettings{..} =
    object $
    catMaybes
    [ fmap (("VideoSelectorPid",) . toJSON) _mediaLiveChannelVideoSelectorSettingsVideoSelectorPid
    , fmap (("VideoSelectorProgramId",) . toJSON) _mediaLiveChannelVideoSelectorSettingsVideoSelectorProgramId
    ]

-- | Constructor for 'MediaLiveChannelVideoSelectorSettings' containing
-- required fields as arguments.
mediaLiveChannelVideoSelectorSettings
  :: MediaLiveChannelVideoSelectorSettings
mediaLiveChannelVideoSelectorSettings  =
  MediaLiveChannelVideoSelectorSettings
  { _mediaLiveChannelVideoSelectorSettingsVideoSelectorPid = Nothing
  , _mediaLiveChannelVideoSelectorSettingsVideoSelectorProgramId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html#cfn-medialive-channel-videoselectorsettings-videoselectorpid
mlcvssVideoSelectorPid :: Lens' MediaLiveChannelVideoSelectorSettings (Maybe MediaLiveChannelVideoSelectorPid)
mlcvssVideoSelectorPid = lens _mediaLiveChannelVideoSelectorSettingsVideoSelectorPid (\s a -> s { _mediaLiveChannelVideoSelectorSettingsVideoSelectorPid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html#cfn-medialive-channel-videoselectorsettings-videoselectorprogramid
mlcvssVideoSelectorProgramId :: Lens' MediaLiveChannelVideoSelectorSettings (Maybe MediaLiveChannelVideoSelectorProgramId)
mlcvssVideoSelectorProgramId = lens _mediaLiveChannelVideoSelectorSettingsVideoSelectorProgramId (\s a -> s { _mediaLiveChannelVideoSelectorSettingsVideoSelectorProgramId = a })
