{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelAudioCodecSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAacSettings
import Stratosphere.ResourceProperties.MediaLiveChannelAc3Settings
import Stratosphere.ResourceProperties.MediaLiveChannelEac3Settings
import Stratosphere.ResourceProperties.MediaLiveChannelMp2Settings
import Stratosphere.ResourceProperties.MediaLiveChannelPassThroughSettings

-- | Full data type definition for MediaLiveChannelAudioCodecSettings. See
-- 'mediaLiveChannelAudioCodecSettings' for a more convenient constructor.
data MediaLiveChannelAudioCodecSettings =
  MediaLiveChannelAudioCodecSettings
  { _mediaLiveChannelAudioCodecSettingsAacSettings :: Maybe MediaLiveChannelAacSettings
  , _mediaLiveChannelAudioCodecSettingsAc3Settings :: Maybe MediaLiveChannelAc3Settings
  , _mediaLiveChannelAudioCodecSettingsEac3Settings :: Maybe MediaLiveChannelEac3Settings
  , _mediaLiveChannelAudioCodecSettingsMp2Settings :: Maybe MediaLiveChannelMp2Settings
  , _mediaLiveChannelAudioCodecSettingsPassThroughSettings :: Maybe MediaLiveChannelPassThroughSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAudioCodecSettings where
  toJSON MediaLiveChannelAudioCodecSettings{..} =
    object $
    catMaybes
    [ fmap (("AacSettings",) . toJSON) _mediaLiveChannelAudioCodecSettingsAacSettings
    , fmap (("Ac3Settings",) . toJSON) _mediaLiveChannelAudioCodecSettingsAc3Settings
    , fmap (("Eac3Settings",) . toJSON) _mediaLiveChannelAudioCodecSettingsEac3Settings
    , fmap (("Mp2Settings",) . toJSON) _mediaLiveChannelAudioCodecSettingsMp2Settings
    , fmap (("PassThroughSettings",) . toJSON) _mediaLiveChannelAudioCodecSettingsPassThroughSettings
    ]

-- | Constructor for 'MediaLiveChannelAudioCodecSettings' containing required
-- fields as arguments.
mediaLiveChannelAudioCodecSettings
  :: MediaLiveChannelAudioCodecSettings
mediaLiveChannelAudioCodecSettings  =
  MediaLiveChannelAudioCodecSettings
  { _mediaLiveChannelAudioCodecSettingsAacSettings = Nothing
  , _mediaLiveChannelAudioCodecSettingsAc3Settings = Nothing
  , _mediaLiveChannelAudioCodecSettingsEac3Settings = Nothing
  , _mediaLiveChannelAudioCodecSettingsMp2Settings = Nothing
  , _mediaLiveChannelAudioCodecSettingsPassThroughSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-aacsettings
mlcacsAacSettings :: Lens' MediaLiveChannelAudioCodecSettings (Maybe MediaLiveChannelAacSettings)
mlcacsAacSettings = lens _mediaLiveChannelAudioCodecSettingsAacSettings (\s a -> s { _mediaLiveChannelAudioCodecSettingsAacSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-ac3settings
mlcacsAc3Settings :: Lens' MediaLiveChannelAudioCodecSettings (Maybe MediaLiveChannelAc3Settings)
mlcacsAc3Settings = lens _mediaLiveChannelAudioCodecSettingsAc3Settings (\s a -> s { _mediaLiveChannelAudioCodecSettingsAc3Settings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-eac3settings
mlcacsEac3Settings :: Lens' MediaLiveChannelAudioCodecSettings (Maybe MediaLiveChannelEac3Settings)
mlcacsEac3Settings = lens _mediaLiveChannelAudioCodecSettingsEac3Settings (\s a -> s { _mediaLiveChannelAudioCodecSettingsEac3Settings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-mp2settings
mlcacsMp2Settings :: Lens' MediaLiveChannelAudioCodecSettings (Maybe MediaLiveChannelMp2Settings)
mlcacsMp2Settings = lens _mediaLiveChannelAudioCodecSettingsMp2Settings (\s a -> s { _mediaLiveChannelAudioCodecSettingsMp2Settings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-passthroughsettings
mlcacsPassThroughSettings :: Lens' MediaLiveChannelAudioCodecSettings (Maybe MediaLiveChannelPassThroughSettings)
mlcacsPassThroughSettings = lens _mediaLiveChannelAudioCodecSettingsPassThroughSettings (\s a -> s { _mediaLiveChannelAudioCodecSettingsPassThroughSettings = a })
