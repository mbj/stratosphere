{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelHlsSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAudioOnlyHlsSettings
import Stratosphere.ResourceProperties.MediaLiveChannelFmp4HlsSettings
import Stratosphere.ResourceProperties.MediaLiveChannelStandardHlsSettings

-- | Full data type definition for MediaLiveChannelHlsSettings. See
-- 'mediaLiveChannelHlsSettings' for a more convenient constructor.
data MediaLiveChannelHlsSettings =
  MediaLiveChannelHlsSettings
  { _mediaLiveChannelHlsSettingsAudioOnlyHlsSettings :: Maybe MediaLiveChannelAudioOnlyHlsSettings
  , _mediaLiveChannelHlsSettingsFmp4HlsSettings :: Maybe MediaLiveChannelFmp4HlsSettings
  , _mediaLiveChannelHlsSettingsStandardHlsSettings :: Maybe MediaLiveChannelStandardHlsSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelHlsSettings where
  toJSON MediaLiveChannelHlsSettings{..} =
    object $
    catMaybes
    [ fmap (("AudioOnlyHlsSettings",) . toJSON) _mediaLiveChannelHlsSettingsAudioOnlyHlsSettings
    , fmap (("Fmp4HlsSettings",) . toJSON) _mediaLiveChannelHlsSettingsFmp4HlsSettings
    , fmap (("StandardHlsSettings",) . toJSON) _mediaLiveChannelHlsSettingsStandardHlsSettings
    ]

-- | Constructor for 'MediaLiveChannelHlsSettings' containing required fields
-- as arguments.
mediaLiveChannelHlsSettings
  :: MediaLiveChannelHlsSettings
mediaLiveChannelHlsSettings  =
  MediaLiveChannelHlsSettings
  { _mediaLiveChannelHlsSettingsAudioOnlyHlsSettings = Nothing
  , _mediaLiveChannelHlsSettingsFmp4HlsSettings = Nothing
  , _mediaLiveChannelHlsSettingsStandardHlsSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html#cfn-medialive-channel-hlssettings-audioonlyhlssettings
mlchsAudioOnlyHlsSettings :: Lens' MediaLiveChannelHlsSettings (Maybe MediaLiveChannelAudioOnlyHlsSettings)
mlchsAudioOnlyHlsSettings = lens _mediaLiveChannelHlsSettingsAudioOnlyHlsSettings (\s a -> s { _mediaLiveChannelHlsSettingsAudioOnlyHlsSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html#cfn-medialive-channel-hlssettings-fmp4hlssettings
mlchsFmp4HlsSettings :: Lens' MediaLiveChannelHlsSettings (Maybe MediaLiveChannelFmp4HlsSettings)
mlchsFmp4HlsSettings = lens _mediaLiveChannelHlsSettingsFmp4HlsSettings (\s a -> s { _mediaLiveChannelHlsSettingsFmp4HlsSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html#cfn-medialive-channel-hlssettings-standardhlssettings
mlchsStandardHlsSettings :: Lens' MediaLiveChannelHlsSettings (Maybe MediaLiveChannelStandardHlsSettings)
mlchsStandardHlsSettings = lens _mediaLiveChannelHlsSettingsStandardHlsSettings (\s a -> s { _mediaLiveChannelHlsSettingsStandardHlsSettings = a })
