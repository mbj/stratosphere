{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mp2settings.html

module Stratosphere.ResourceProperties.MediaLiveChannelMp2Settings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelMp2Settings. See
-- 'mediaLiveChannelMp2Settings' for a more convenient constructor.
data MediaLiveChannelMp2Settings =
  MediaLiveChannelMp2Settings
  { _mediaLiveChannelMp2SettingsBitrate :: Maybe (Val Double)
  , _mediaLiveChannelMp2SettingsCodingMode :: Maybe (Val Text)
  , _mediaLiveChannelMp2SettingsSampleRate :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelMp2Settings where
  toJSON MediaLiveChannelMp2Settings{..} =
    object $
    catMaybes
    [ fmap (("Bitrate",) . toJSON) _mediaLiveChannelMp2SettingsBitrate
    , fmap (("CodingMode",) . toJSON) _mediaLiveChannelMp2SettingsCodingMode
    , fmap (("SampleRate",) . toJSON) _mediaLiveChannelMp2SettingsSampleRate
    ]

-- | Constructor for 'MediaLiveChannelMp2Settings' containing required fields
-- as arguments.
mediaLiveChannelMp2Settings
  :: MediaLiveChannelMp2Settings
mediaLiveChannelMp2Settings  =
  MediaLiveChannelMp2Settings
  { _mediaLiveChannelMp2SettingsBitrate = Nothing
  , _mediaLiveChannelMp2SettingsCodingMode = Nothing
  , _mediaLiveChannelMp2SettingsSampleRate = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mp2settings.html#cfn-medialive-channel-mp2settings-bitrate
mlcmsBitrate :: Lens' MediaLiveChannelMp2Settings (Maybe (Val Double))
mlcmsBitrate = lens _mediaLiveChannelMp2SettingsBitrate (\s a -> s { _mediaLiveChannelMp2SettingsBitrate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mp2settings.html#cfn-medialive-channel-mp2settings-codingmode
mlcmsCodingMode :: Lens' MediaLiveChannelMp2Settings (Maybe (Val Text))
mlcmsCodingMode = lens _mediaLiveChannelMp2SettingsCodingMode (\s a -> s { _mediaLiveChannelMp2SettingsCodingMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mp2settings.html#cfn-medialive-channel-mp2settings-samplerate
mlcmsSampleRate :: Lens' MediaLiveChannelMp2Settings (Maybe (Val Double))
mlcmsSampleRate = lens _mediaLiveChannelMp2SettingsSampleRate (\s a -> s { _mediaLiveChannelMp2SettingsSampleRate = a })
