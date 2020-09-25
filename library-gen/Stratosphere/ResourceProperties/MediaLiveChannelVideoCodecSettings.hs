{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videocodecsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelVideoCodecSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelFrameCaptureSettings
import Stratosphere.ResourceProperties.MediaLiveChannelH264Settings
import Stratosphere.ResourceProperties.MediaLiveChannelH265Settings

-- | Full data type definition for MediaLiveChannelVideoCodecSettings. See
-- 'mediaLiveChannelVideoCodecSettings' for a more convenient constructor.
data MediaLiveChannelVideoCodecSettings =
  MediaLiveChannelVideoCodecSettings
  { _mediaLiveChannelVideoCodecSettingsFrameCaptureSettings :: Maybe MediaLiveChannelFrameCaptureSettings
  , _mediaLiveChannelVideoCodecSettingsH264Settings :: Maybe MediaLiveChannelH264Settings
  , _mediaLiveChannelVideoCodecSettingsH265Settings :: Maybe MediaLiveChannelH265Settings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelVideoCodecSettings where
  toJSON MediaLiveChannelVideoCodecSettings{..} =
    object $
    catMaybes
    [ fmap (("FrameCaptureSettings",) . toJSON) _mediaLiveChannelVideoCodecSettingsFrameCaptureSettings
    , fmap (("H264Settings",) . toJSON) _mediaLiveChannelVideoCodecSettingsH264Settings
    , fmap (("H265Settings",) . toJSON) _mediaLiveChannelVideoCodecSettingsH265Settings
    ]

-- | Constructor for 'MediaLiveChannelVideoCodecSettings' containing required
-- fields as arguments.
mediaLiveChannelVideoCodecSettings
  :: MediaLiveChannelVideoCodecSettings
mediaLiveChannelVideoCodecSettings  =
  MediaLiveChannelVideoCodecSettings
  { _mediaLiveChannelVideoCodecSettingsFrameCaptureSettings = Nothing
  , _mediaLiveChannelVideoCodecSettingsH264Settings = Nothing
  , _mediaLiveChannelVideoCodecSettingsH265Settings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videocodecsettings.html#cfn-medialive-channel-videocodecsettings-framecapturesettings
mlcvcsFrameCaptureSettings :: Lens' MediaLiveChannelVideoCodecSettings (Maybe MediaLiveChannelFrameCaptureSettings)
mlcvcsFrameCaptureSettings = lens _mediaLiveChannelVideoCodecSettingsFrameCaptureSettings (\s a -> s { _mediaLiveChannelVideoCodecSettingsFrameCaptureSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videocodecsettings.html#cfn-medialive-channel-videocodecsettings-h264settings
mlcvcsH264Settings :: Lens' MediaLiveChannelVideoCodecSettings (Maybe MediaLiveChannelH264Settings)
mlcvcsH264Settings = lens _mediaLiveChannelVideoCodecSettingsH264Settings (\s a -> s { _mediaLiveChannelVideoCodecSettingsH264Settings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videocodecsettings.html#cfn-medialive-channel-videocodecsettings-h265settings
mlcvcsH265Settings :: Lens' MediaLiveChannelVideoCodecSettings (Maybe MediaLiveChannelH265Settings)
mlcvcsH265Settings = lens _mediaLiveChannelVideoCodecSettingsH265Settings (\s a -> s { _mediaLiveChannelVideoCodecSettingsH265Settings = a })
