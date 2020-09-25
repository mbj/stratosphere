{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelCaptionDestinationSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAribDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelBurnInDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelDvbSubDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelEbuTtDDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelEmbeddedDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelEmbeddedPlusScte20DestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelRtmpCaptionInfoDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelScte20PlusEmbeddedDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelScte27DestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelSmpteTtDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelTeletextDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelTtmlDestinationSettings
import Stratosphere.ResourceProperties.MediaLiveChannelWebvttDestinationSettings

-- | Full data type definition for MediaLiveChannelCaptionDestinationSettings.
-- See 'mediaLiveChannelCaptionDestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelCaptionDestinationSettings =
  MediaLiveChannelCaptionDestinationSettings
  { _mediaLiveChannelCaptionDestinationSettingsAribDestinationSettings :: Maybe MediaLiveChannelAribDestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsBurnInDestinationSettings :: Maybe MediaLiveChannelBurnInDestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsDvbSubDestinationSettings :: Maybe MediaLiveChannelDvbSubDestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsEbuTtDDestinationSettings :: Maybe MediaLiveChannelEbuTtDDestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsEmbeddedDestinationSettings :: Maybe MediaLiveChannelEmbeddedDestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsEmbeddedPlusScte20DestinationSettings :: Maybe MediaLiveChannelEmbeddedPlusScte20DestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsRtmpCaptionInfoDestinationSettings :: Maybe MediaLiveChannelRtmpCaptionInfoDestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsScte20PlusEmbeddedDestinationSettings :: Maybe MediaLiveChannelScte20PlusEmbeddedDestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsScte27DestinationSettings :: Maybe MediaLiveChannelScte27DestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsSmpteTtDestinationSettings :: Maybe MediaLiveChannelSmpteTtDestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsTeletextDestinationSettings :: Maybe MediaLiveChannelTeletextDestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsTtmlDestinationSettings :: Maybe MediaLiveChannelTtmlDestinationSettings
  , _mediaLiveChannelCaptionDestinationSettingsWebvttDestinationSettings :: Maybe MediaLiveChannelWebvttDestinationSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelCaptionDestinationSettings where
  toJSON MediaLiveChannelCaptionDestinationSettings{..} =
    object $
    catMaybes
    [ fmap (("AribDestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsAribDestinationSettings
    , fmap (("BurnInDestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsBurnInDestinationSettings
    , fmap (("DvbSubDestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsDvbSubDestinationSettings
    , fmap (("EbuTtDDestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsEbuTtDDestinationSettings
    , fmap (("EmbeddedDestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsEmbeddedDestinationSettings
    , fmap (("EmbeddedPlusScte20DestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsEmbeddedPlusScte20DestinationSettings
    , fmap (("RtmpCaptionInfoDestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsRtmpCaptionInfoDestinationSettings
    , fmap (("Scte20PlusEmbeddedDestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsScte20PlusEmbeddedDestinationSettings
    , fmap (("Scte27DestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsScte27DestinationSettings
    , fmap (("SmpteTtDestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsSmpteTtDestinationSettings
    , fmap (("TeletextDestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsTeletextDestinationSettings
    , fmap (("TtmlDestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsTtmlDestinationSettings
    , fmap (("WebvttDestinationSettings",) . toJSON) _mediaLiveChannelCaptionDestinationSettingsWebvttDestinationSettings
    ]

-- | Constructor for 'MediaLiveChannelCaptionDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelCaptionDestinationSettings
  :: MediaLiveChannelCaptionDestinationSettings
mediaLiveChannelCaptionDestinationSettings  =
  MediaLiveChannelCaptionDestinationSettings
  { _mediaLiveChannelCaptionDestinationSettingsAribDestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsBurnInDestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsDvbSubDestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsEbuTtDDestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsEmbeddedDestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsEmbeddedPlusScte20DestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsRtmpCaptionInfoDestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsScte20PlusEmbeddedDestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsScte27DestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsSmpteTtDestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsTeletextDestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsTtmlDestinationSettings = Nothing
  , _mediaLiveChannelCaptionDestinationSettingsWebvttDestinationSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-aribdestinationsettings
mlccdsAribDestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelAribDestinationSettings)
mlccdsAribDestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsAribDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsAribDestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-burnindestinationsettings
mlccdsBurnInDestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelBurnInDestinationSettings)
mlccdsBurnInDestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsBurnInDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsBurnInDestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-dvbsubdestinationsettings
mlccdsDvbSubDestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelDvbSubDestinationSettings)
mlccdsDvbSubDestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsDvbSubDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsDvbSubDestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-ebuttddestinationsettings
mlccdsEbuTtDDestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelEbuTtDDestinationSettings)
mlccdsEbuTtDDestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsEbuTtDDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsEbuTtDDestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-embeddeddestinationsettings
mlccdsEmbeddedDestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelEmbeddedDestinationSettings)
mlccdsEmbeddedDestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsEmbeddedDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsEmbeddedDestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-embeddedplusscte20destinationsettings
mlccdsEmbeddedPlusScte20DestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelEmbeddedPlusScte20DestinationSettings)
mlccdsEmbeddedPlusScte20DestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsEmbeddedPlusScte20DestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsEmbeddedPlusScte20DestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-rtmpcaptioninfodestinationsettings
mlccdsRtmpCaptionInfoDestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelRtmpCaptionInfoDestinationSettings)
mlccdsRtmpCaptionInfoDestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsRtmpCaptionInfoDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsRtmpCaptionInfoDestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-scte20plusembeddeddestinationsettings
mlccdsScte20PlusEmbeddedDestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelScte20PlusEmbeddedDestinationSettings)
mlccdsScte20PlusEmbeddedDestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsScte20PlusEmbeddedDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsScte20PlusEmbeddedDestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-scte27destinationsettings
mlccdsScte27DestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelScte27DestinationSettings)
mlccdsScte27DestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsScte27DestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsScte27DestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-smptettdestinationsettings
mlccdsSmpteTtDestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelSmpteTtDestinationSettings)
mlccdsSmpteTtDestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsSmpteTtDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsSmpteTtDestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-teletextdestinationsettings
mlccdsTeletextDestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelTeletextDestinationSettings)
mlccdsTeletextDestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsTeletextDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsTeletextDestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-ttmldestinationsettings
mlccdsTtmlDestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelTtmlDestinationSettings)
mlccdsTtmlDestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsTtmlDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsTtmlDestinationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-webvttdestinationsettings
mlccdsWebvttDestinationSettings :: Lens' MediaLiveChannelCaptionDestinationSettings (Maybe MediaLiveChannelWebvttDestinationSettings)
mlccdsWebvttDestinationSettings = lens _mediaLiveChannelCaptionDestinationSettingsWebvttDestinationSettings (\s a -> s { _mediaLiveChannelCaptionDestinationSettingsWebvttDestinationSettings = a })
