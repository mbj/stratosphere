{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html

module Stratosphere.ResourceProperties.MediaLiveChannelAc3Settings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelAc3Settings. See
-- 'mediaLiveChannelAc3Settings' for a more convenient constructor.
data MediaLiveChannelAc3Settings =
  MediaLiveChannelAc3Settings
  { _mediaLiveChannelAc3SettingsBitrate :: Maybe (Val Double)
  , _mediaLiveChannelAc3SettingsBitstreamMode :: Maybe (Val Text)
  , _mediaLiveChannelAc3SettingsCodingMode :: Maybe (Val Text)
  , _mediaLiveChannelAc3SettingsDialnorm :: Maybe (Val Integer)
  , _mediaLiveChannelAc3SettingsDrcProfile :: Maybe (Val Text)
  , _mediaLiveChannelAc3SettingsLfeFilter :: Maybe (Val Text)
  , _mediaLiveChannelAc3SettingsMetadataControl :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAc3Settings where
  toJSON MediaLiveChannelAc3Settings{..} =
    object $
    catMaybes
    [ fmap (("Bitrate",) . toJSON) _mediaLiveChannelAc3SettingsBitrate
    , fmap (("BitstreamMode",) . toJSON) _mediaLiveChannelAc3SettingsBitstreamMode
    , fmap (("CodingMode",) . toJSON) _mediaLiveChannelAc3SettingsCodingMode
    , fmap (("Dialnorm",) . toJSON) _mediaLiveChannelAc3SettingsDialnorm
    , fmap (("DrcProfile",) . toJSON) _mediaLiveChannelAc3SettingsDrcProfile
    , fmap (("LfeFilter",) . toJSON) _mediaLiveChannelAc3SettingsLfeFilter
    , fmap (("MetadataControl",) . toJSON) _mediaLiveChannelAc3SettingsMetadataControl
    ]

-- | Constructor for 'MediaLiveChannelAc3Settings' containing required fields
-- as arguments.
mediaLiveChannelAc3Settings
  :: MediaLiveChannelAc3Settings
mediaLiveChannelAc3Settings  =
  MediaLiveChannelAc3Settings
  { _mediaLiveChannelAc3SettingsBitrate = Nothing
  , _mediaLiveChannelAc3SettingsBitstreamMode = Nothing
  , _mediaLiveChannelAc3SettingsCodingMode = Nothing
  , _mediaLiveChannelAc3SettingsDialnorm = Nothing
  , _mediaLiveChannelAc3SettingsDrcProfile = Nothing
  , _mediaLiveChannelAc3SettingsLfeFilter = Nothing
  , _mediaLiveChannelAc3SettingsMetadataControl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-bitrate
mlcasBitrate :: Lens' MediaLiveChannelAc3Settings (Maybe (Val Double))
mlcasBitrate = lens _mediaLiveChannelAc3SettingsBitrate (\s a -> s { _mediaLiveChannelAc3SettingsBitrate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-bitstreammode
mlcasBitstreamMode :: Lens' MediaLiveChannelAc3Settings (Maybe (Val Text))
mlcasBitstreamMode = lens _mediaLiveChannelAc3SettingsBitstreamMode (\s a -> s { _mediaLiveChannelAc3SettingsBitstreamMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-codingmode
mlcasCodingMode :: Lens' MediaLiveChannelAc3Settings (Maybe (Val Text))
mlcasCodingMode = lens _mediaLiveChannelAc3SettingsCodingMode (\s a -> s { _mediaLiveChannelAc3SettingsCodingMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-dialnorm
mlcasDialnorm :: Lens' MediaLiveChannelAc3Settings (Maybe (Val Integer))
mlcasDialnorm = lens _mediaLiveChannelAc3SettingsDialnorm (\s a -> s { _mediaLiveChannelAc3SettingsDialnorm = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-drcprofile
mlcasDrcProfile :: Lens' MediaLiveChannelAc3Settings (Maybe (Val Text))
mlcasDrcProfile = lens _mediaLiveChannelAc3SettingsDrcProfile (\s a -> s { _mediaLiveChannelAc3SettingsDrcProfile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-lfefilter
mlcasLfeFilter :: Lens' MediaLiveChannelAc3Settings (Maybe (Val Text))
mlcasLfeFilter = lens _mediaLiveChannelAc3SettingsLfeFilter (\s a -> s { _mediaLiveChannelAc3SettingsLfeFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-metadatacontrol
mlcasMetadataControl :: Lens' MediaLiveChannelAc3Settings (Maybe (Val Text))
mlcasMetadataControl = lens _mediaLiveChannelAc3SettingsMetadataControl (\s a -> s { _mediaLiveChannelAc3SettingsMetadataControl = a })
