{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-fmp4hlssettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelFmp4HlsSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelFmp4HlsSettings. See
-- 'mediaLiveChannelFmp4HlsSettings' for a more convenient constructor.
data MediaLiveChannelFmp4HlsSettings =
  MediaLiveChannelFmp4HlsSettings
  { _mediaLiveChannelFmp4HlsSettingsAudioRenditionSets :: Maybe (Val Text)
  , _mediaLiveChannelFmp4HlsSettingsNielsenId3Behavior :: Maybe (Val Text)
  , _mediaLiveChannelFmp4HlsSettingsTimedMetadataBehavior :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelFmp4HlsSettings where
  toJSON MediaLiveChannelFmp4HlsSettings{..} =
    object $
    catMaybes
    [ fmap (("AudioRenditionSets",) . toJSON) _mediaLiveChannelFmp4HlsSettingsAudioRenditionSets
    , fmap (("NielsenId3Behavior",) . toJSON) _mediaLiveChannelFmp4HlsSettingsNielsenId3Behavior
    , fmap (("TimedMetadataBehavior",) . toJSON) _mediaLiveChannelFmp4HlsSettingsTimedMetadataBehavior
    ]

-- | Constructor for 'MediaLiveChannelFmp4HlsSettings' containing required
-- fields as arguments.
mediaLiveChannelFmp4HlsSettings
  :: MediaLiveChannelFmp4HlsSettings
mediaLiveChannelFmp4HlsSettings  =
  MediaLiveChannelFmp4HlsSettings
  { _mediaLiveChannelFmp4HlsSettingsAudioRenditionSets = Nothing
  , _mediaLiveChannelFmp4HlsSettingsNielsenId3Behavior = Nothing
  , _mediaLiveChannelFmp4HlsSettingsTimedMetadataBehavior = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-fmp4hlssettings.html#cfn-medialive-channel-fmp4hlssettings-audiorenditionsets
mlcfhsAudioRenditionSets :: Lens' MediaLiveChannelFmp4HlsSettings (Maybe (Val Text))
mlcfhsAudioRenditionSets = lens _mediaLiveChannelFmp4HlsSettingsAudioRenditionSets (\s a -> s { _mediaLiveChannelFmp4HlsSettingsAudioRenditionSets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-fmp4hlssettings.html#cfn-medialive-channel-fmp4hlssettings-nielsenid3behavior
mlcfhsNielsenId3Behavior :: Lens' MediaLiveChannelFmp4HlsSettings (Maybe (Val Text))
mlcfhsNielsenId3Behavior = lens _mediaLiveChannelFmp4HlsSettingsNielsenId3Behavior (\s a -> s { _mediaLiveChannelFmp4HlsSettingsNielsenId3Behavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-fmp4hlssettings.html#cfn-medialive-channel-fmp4hlssettings-timedmetadatabehavior
mlcfhsTimedMetadataBehavior :: Lens' MediaLiveChannelFmp4HlsSettings (Maybe (Val Text))
mlcfhsTimedMetadataBehavior = lens _mediaLiveChannelFmp4HlsSettingsTimedMetadataBehavior (\s a -> s { _mediaLiveChannelFmp4HlsSettingsTimedMetadataBehavior = a })
