{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-standardhlssettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelStandardHlsSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelM3u8Settings

-- | Full data type definition for MediaLiveChannelStandardHlsSettings. See
-- 'mediaLiveChannelStandardHlsSettings' for a more convenient constructor.
data MediaLiveChannelStandardHlsSettings =
  MediaLiveChannelStandardHlsSettings
  { _mediaLiveChannelStandardHlsSettingsAudioRenditionSets :: Maybe (Val Text)
  , _mediaLiveChannelStandardHlsSettingsM3u8Settings :: Maybe MediaLiveChannelM3u8Settings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelStandardHlsSettings where
  toJSON MediaLiveChannelStandardHlsSettings{..} =
    object $
    catMaybes
    [ fmap (("AudioRenditionSets",) . toJSON) _mediaLiveChannelStandardHlsSettingsAudioRenditionSets
    , fmap (("M3u8Settings",) . toJSON) _mediaLiveChannelStandardHlsSettingsM3u8Settings
    ]

-- | Constructor for 'MediaLiveChannelStandardHlsSettings' containing required
-- fields as arguments.
mediaLiveChannelStandardHlsSettings
  :: MediaLiveChannelStandardHlsSettings
mediaLiveChannelStandardHlsSettings  =
  MediaLiveChannelStandardHlsSettings
  { _mediaLiveChannelStandardHlsSettingsAudioRenditionSets = Nothing
  , _mediaLiveChannelStandardHlsSettingsM3u8Settings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-standardhlssettings.html#cfn-medialive-channel-standardhlssettings-audiorenditionsets
mlcshsAudioRenditionSets :: Lens' MediaLiveChannelStandardHlsSettings (Maybe (Val Text))
mlcshsAudioRenditionSets = lens _mediaLiveChannelStandardHlsSettingsAudioRenditionSets (\s a -> s { _mediaLiveChannelStandardHlsSettingsAudioRenditionSets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-standardhlssettings.html#cfn-medialive-channel-standardhlssettings-m3u8settings
mlcshsM3u8Settings :: Lens' MediaLiveChannelStandardHlsSettings (Maybe MediaLiveChannelM3u8Settings)
mlcshsM3u8Settings = lens _mediaLiveChannelStandardHlsSettingsM3u8Settings (\s a -> s { _mediaLiveChannelStandardHlsSettingsM3u8Settings = a })
