{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html

module Stratosphere.ResourceProperties.MediaLiveChannelEac3Settings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelEac3Settings. See
-- 'mediaLiveChannelEac3Settings' for a more convenient constructor.
data MediaLiveChannelEac3Settings =
  MediaLiveChannelEac3Settings
  { _mediaLiveChannelEac3SettingsAttenuationControl :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsBitrate :: Maybe (Val Double)
  , _mediaLiveChannelEac3SettingsBitstreamMode :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsCodingMode :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsDcFilter :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsDialnorm :: Maybe (Val Integer)
  , _mediaLiveChannelEac3SettingsDrcLine :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsDrcRf :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsLfeControl :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsLfeFilter :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsLoRoCenterMixLevel :: Maybe (Val Double)
  , _mediaLiveChannelEac3SettingsLoRoSurroundMixLevel :: Maybe (Val Double)
  , _mediaLiveChannelEac3SettingsLtRtCenterMixLevel :: Maybe (Val Double)
  , _mediaLiveChannelEac3SettingsLtRtSurroundMixLevel :: Maybe (Val Double)
  , _mediaLiveChannelEac3SettingsMetadataControl :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsPassthroughControl :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsPhaseControl :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsStereoDownmix :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsSurroundExMode :: Maybe (Val Text)
  , _mediaLiveChannelEac3SettingsSurroundMode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelEac3Settings where
  toJSON MediaLiveChannelEac3Settings{..} =
    object $
    catMaybes
    [ fmap (("AttenuationControl",) . toJSON) _mediaLiveChannelEac3SettingsAttenuationControl
    , fmap (("Bitrate",) . toJSON) _mediaLiveChannelEac3SettingsBitrate
    , fmap (("BitstreamMode",) . toJSON) _mediaLiveChannelEac3SettingsBitstreamMode
    , fmap (("CodingMode",) . toJSON) _mediaLiveChannelEac3SettingsCodingMode
    , fmap (("DcFilter",) . toJSON) _mediaLiveChannelEac3SettingsDcFilter
    , fmap (("Dialnorm",) . toJSON) _mediaLiveChannelEac3SettingsDialnorm
    , fmap (("DrcLine",) . toJSON) _mediaLiveChannelEac3SettingsDrcLine
    , fmap (("DrcRf",) . toJSON) _mediaLiveChannelEac3SettingsDrcRf
    , fmap (("LfeControl",) . toJSON) _mediaLiveChannelEac3SettingsLfeControl
    , fmap (("LfeFilter",) . toJSON) _mediaLiveChannelEac3SettingsLfeFilter
    , fmap (("LoRoCenterMixLevel",) . toJSON) _mediaLiveChannelEac3SettingsLoRoCenterMixLevel
    , fmap (("LoRoSurroundMixLevel",) . toJSON) _mediaLiveChannelEac3SettingsLoRoSurroundMixLevel
    , fmap (("LtRtCenterMixLevel",) . toJSON) _mediaLiveChannelEac3SettingsLtRtCenterMixLevel
    , fmap (("LtRtSurroundMixLevel",) . toJSON) _mediaLiveChannelEac3SettingsLtRtSurroundMixLevel
    , fmap (("MetadataControl",) . toJSON) _mediaLiveChannelEac3SettingsMetadataControl
    , fmap (("PassthroughControl",) . toJSON) _mediaLiveChannelEac3SettingsPassthroughControl
    , fmap (("PhaseControl",) . toJSON) _mediaLiveChannelEac3SettingsPhaseControl
    , fmap (("StereoDownmix",) . toJSON) _mediaLiveChannelEac3SettingsStereoDownmix
    , fmap (("SurroundExMode",) . toJSON) _mediaLiveChannelEac3SettingsSurroundExMode
    , fmap (("SurroundMode",) . toJSON) _mediaLiveChannelEac3SettingsSurroundMode
    ]

-- | Constructor for 'MediaLiveChannelEac3Settings' containing required fields
-- as arguments.
mediaLiveChannelEac3Settings
  :: MediaLiveChannelEac3Settings
mediaLiveChannelEac3Settings  =
  MediaLiveChannelEac3Settings
  { _mediaLiveChannelEac3SettingsAttenuationControl = Nothing
  , _mediaLiveChannelEac3SettingsBitrate = Nothing
  , _mediaLiveChannelEac3SettingsBitstreamMode = Nothing
  , _mediaLiveChannelEac3SettingsCodingMode = Nothing
  , _mediaLiveChannelEac3SettingsDcFilter = Nothing
  , _mediaLiveChannelEac3SettingsDialnorm = Nothing
  , _mediaLiveChannelEac3SettingsDrcLine = Nothing
  , _mediaLiveChannelEac3SettingsDrcRf = Nothing
  , _mediaLiveChannelEac3SettingsLfeControl = Nothing
  , _mediaLiveChannelEac3SettingsLfeFilter = Nothing
  , _mediaLiveChannelEac3SettingsLoRoCenterMixLevel = Nothing
  , _mediaLiveChannelEac3SettingsLoRoSurroundMixLevel = Nothing
  , _mediaLiveChannelEac3SettingsLtRtCenterMixLevel = Nothing
  , _mediaLiveChannelEac3SettingsLtRtSurroundMixLevel = Nothing
  , _mediaLiveChannelEac3SettingsMetadataControl = Nothing
  , _mediaLiveChannelEac3SettingsPassthroughControl = Nothing
  , _mediaLiveChannelEac3SettingsPhaseControl = Nothing
  , _mediaLiveChannelEac3SettingsStereoDownmix = Nothing
  , _mediaLiveChannelEac3SettingsSurroundExMode = Nothing
  , _mediaLiveChannelEac3SettingsSurroundMode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-attenuationcontrol
mlcesAttenuationControl :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesAttenuationControl = lens _mediaLiveChannelEac3SettingsAttenuationControl (\s a -> s { _mediaLiveChannelEac3SettingsAttenuationControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-bitrate
mlcesBitrate :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Double))
mlcesBitrate = lens _mediaLiveChannelEac3SettingsBitrate (\s a -> s { _mediaLiveChannelEac3SettingsBitrate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-bitstreammode
mlcesBitstreamMode :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesBitstreamMode = lens _mediaLiveChannelEac3SettingsBitstreamMode (\s a -> s { _mediaLiveChannelEac3SettingsBitstreamMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-codingmode
mlcesCodingMode :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesCodingMode = lens _mediaLiveChannelEac3SettingsCodingMode (\s a -> s { _mediaLiveChannelEac3SettingsCodingMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-dcfilter
mlcesDcFilter :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesDcFilter = lens _mediaLiveChannelEac3SettingsDcFilter (\s a -> s { _mediaLiveChannelEac3SettingsDcFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-dialnorm
mlcesDialnorm :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Integer))
mlcesDialnorm = lens _mediaLiveChannelEac3SettingsDialnorm (\s a -> s { _mediaLiveChannelEac3SettingsDialnorm = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-drcline
mlcesDrcLine :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesDrcLine = lens _mediaLiveChannelEac3SettingsDrcLine (\s a -> s { _mediaLiveChannelEac3SettingsDrcLine = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-drcrf
mlcesDrcRf :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesDrcRf = lens _mediaLiveChannelEac3SettingsDrcRf (\s a -> s { _mediaLiveChannelEac3SettingsDrcRf = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-lfecontrol
mlcesLfeControl :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesLfeControl = lens _mediaLiveChannelEac3SettingsLfeControl (\s a -> s { _mediaLiveChannelEac3SettingsLfeControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-lfefilter
mlcesLfeFilter :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesLfeFilter = lens _mediaLiveChannelEac3SettingsLfeFilter (\s a -> s { _mediaLiveChannelEac3SettingsLfeFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-lorocentermixlevel
mlcesLoRoCenterMixLevel :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Double))
mlcesLoRoCenterMixLevel = lens _mediaLiveChannelEac3SettingsLoRoCenterMixLevel (\s a -> s { _mediaLiveChannelEac3SettingsLoRoCenterMixLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-lorosurroundmixlevel
mlcesLoRoSurroundMixLevel :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Double))
mlcesLoRoSurroundMixLevel = lens _mediaLiveChannelEac3SettingsLoRoSurroundMixLevel (\s a -> s { _mediaLiveChannelEac3SettingsLoRoSurroundMixLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-ltrtcentermixlevel
mlcesLtRtCenterMixLevel :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Double))
mlcesLtRtCenterMixLevel = lens _mediaLiveChannelEac3SettingsLtRtCenterMixLevel (\s a -> s { _mediaLiveChannelEac3SettingsLtRtCenterMixLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-ltrtsurroundmixlevel
mlcesLtRtSurroundMixLevel :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Double))
mlcesLtRtSurroundMixLevel = lens _mediaLiveChannelEac3SettingsLtRtSurroundMixLevel (\s a -> s { _mediaLiveChannelEac3SettingsLtRtSurroundMixLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-metadatacontrol
mlcesMetadataControl :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesMetadataControl = lens _mediaLiveChannelEac3SettingsMetadataControl (\s a -> s { _mediaLiveChannelEac3SettingsMetadataControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-passthroughcontrol
mlcesPassthroughControl :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesPassthroughControl = lens _mediaLiveChannelEac3SettingsPassthroughControl (\s a -> s { _mediaLiveChannelEac3SettingsPassthroughControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-phasecontrol
mlcesPhaseControl :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesPhaseControl = lens _mediaLiveChannelEac3SettingsPhaseControl (\s a -> s { _mediaLiveChannelEac3SettingsPhaseControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-stereodownmix
mlcesStereoDownmix :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesStereoDownmix = lens _mediaLiveChannelEac3SettingsStereoDownmix (\s a -> s { _mediaLiveChannelEac3SettingsStereoDownmix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-surroundexmode
mlcesSurroundExMode :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesSurroundExMode = lens _mediaLiveChannelEac3SettingsSurroundExMode (\s a -> s { _mediaLiveChannelEac3SettingsSurroundExMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3settings.html#cfn-medialive-channel-eac3settings-surroundmode
mlcesSurroundMode :: Lens' MediaLiveChannelEac3Settings (Maybe (Val Text))
mlcesSurroundMode = lens _mediaLiveChannelEac3SettingsSurroundMode (\s a -> s { _mediaLiveChannelEac3SettingsSurroundMode = a })
