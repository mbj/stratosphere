
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelCaptionSelectorSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAribSourceSettings
import Stratosphere.ResourceProperties.MediaLiveChannelDvbSubSourceSettings
import Stratosphere.ResourceProperties.MediaLiveChannelEmbeddedSourceSettings
import Stratosphere.ResourceProperties.MediaLiveChannelScte20SourceSettings
import Stratosphere.ResourceProperties.MediaLiveChannelScte27SourceSettings
import Stratosphere.ResourceProperties.MediaLiveChannelTeletextSourceSettings

-- | Full data type definition for MediaLiveChannelCaptionSelectorSettings.
-- See 'mediaLiveChannelCaptionSelectorSettings' for a more convenient
-- constructor.
data MediaLiveChannelCaptionSelectorSettings =
  MediaLiveChannelCaptionSelectorSettings
  { _mediaLiveChannelCaptionSelectorSettingsAribSourceSettings :: Maybe MediaLiveChannelAribSourceSettings
  , _mediaLiveChannelCaptionSelectorSettingsDvbSubSourceSettings :: Maybe MediaLiveChannelDvbSubSourceSettings
  , _mediaLiveChannelCaptionSelectorSettingsEmbeddedSourceSettings :: Maybe MediaLiveChannelEmbeddedSourceSettings
  , _mediaLiveChannelCaptionSelectorSettingsScte20SourceSettings :: Maybe MediaLiveChannelScte20SourceSettings
  , _mediaLiveChannelCaptionSelectorSettingsScte27SourceSettings :: Maybe MediaLiveChannelScte27SourceSettings
  , _mediaLiveChannelCaptionSelectorSettingsTeletextSourceSettings :: Maybe MediaLiveChannelTeletextSourceSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelCaptionSelectorSettings where
  toJSON MediaLiveChannelCaptionSelectorSettings{..} =
    object $
    catMaybes
    [ fmap (("AribSourceSettings",) . toJSON) _mediaLiveChannelCaptionSelectorSettingsAribSourceSettings
    , fmap (("DvbSubSourceSettings",) . toJSON) _mediaLiveChannelCaptionSelectorSettingsDvbSubSourceSettings
    , fmap (("EmbeddedSourceSettings",) . toJSON) _mediaLiveChannelCaptionSelectorSettingsEmbeddedSourceSettings
    , fmap (("Scte20SourceSettings",) . toJSON) _mediaLiveChannelCaptionSelectorSettingsScte20SourceSettings
    , fmap (("Scte27SourceSettings",) . toJSON) _mediaLiveChannelCaptionSelectorSettingsScte27SourceSettings
    , fmap (("TeletextSourceSettings",) . toJSON) _mediaLiveChannelCaptionSelectorSettingsTeletextSourceSettings
    ]

-- | Constructor for 'MediaLiveChannelCaptionSelectorSettings' containing
-- required fields as arguments.
mediaLiveChannelCaptionSelectorSettings
  :: MediaLiveChannelCaptionSelectorSettings
mediaLiveChannelCaptionSelectorSettings  =
  MediaLiveChannelCaptionSelectorSettings
  { _mediaLiveChannelCaptionSelectorSettingsAribSourceSettings = Nothing
  , _mediaLiveChannelCaptionSelectorSettingsDvbSubSourceSettings = Nothing
  , _mediaLiveChannelCaptionSelectorSettingsEmbeddedSourceSettings = Nothing
  , _mediaLiveChannelCaptionSelectorSettingsScte20SourceSettings = Nothing
  , _mediaLiveChannelCaptionSelectorSettingsScte27SourceSettings = Nothing
  , _mediaLiveChannelCaptionSelectorSettingsTeletextSourceSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-aribsourcesettings
mlccssAribSourceSettings :: Lens' MediaLiveChannelCaptionSelectorSettings (Maybe MediaLiveChannelAribSourceSettings)
mlccssAribSourceSettings = lens _mediaLiveChannelCaptionSelectorSettingsAribSourceSettings (\s a -> s { _mediaLiveChannelCaptionSelectorSettingsAribSourceSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-dvbsubsourcesettings
mlccssDvbSubSourceSettings :: Lens' MediaLiveChannelCaptionSelectorSettings (Maybe MediaLiveChannelDvbSubSourceSettings)
mlccssDvbSubSourceSettings = lens _mediaLiveChannelCaptionSelectorSettingsDvbSubSourceSettings (\s a -> s { _mediaLiveChannelCaptionSelectorSettingsDvbSubSourceSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-embeddedsourcesettings
mlccssEmbeddedSourceSettings :: Lens' MediaLiveChannelCaptionSelectorSettings (Maybe MediaLiveChannelEmbeddedSourceSettings)
mlccssEmbeddedSourceSettings = lens _mediaLiveChannelCaptionSelectorSettingsEmbeddedSourceSettings (\s a -> s { _mediaLiveChannelCaptionSelectorSettingsEmbeddedSourceSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte20sourcesettings
mlccssScte20SourceSettings :: Lens' MediaLiveChannelCaptionSelectorSettings (Maybe MediaLiveChannelScte20SourceSettings)
mlccssScte20SourceSettings = lens _mediaLiveChannelCaptionSelectorSettingsScte20SourceSettings (\s a -> s { _mediaLiveChannelCaptionSelectorSettingsScte20SourceSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte27sourcesettings
mlccssScte27SourceSettings :: Lens' MediaLiveChannelCaptionSelectorSettings (Maybe MediaLiveChannelScte27SourceSettings)
mlccssScte27SourceSettings = lens _mediaLiveChannelCaptionSelectorSettingsScte27SourceSettings (\s a -> s { _mediaLiveChannelCaptionSelectorSettingsScte27SourceSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-teletextsourcesettings
mlccssTeletextSourceSettings :: Lens' MediaLiveChannelCaptionSelectorSettings (Maybe MediaLiveChannelTeletextSourceSettings)
mlccssTeletextSourceSettings = lens _mediaLiveChannelCaptionSelectorSettingsTeletextSourceSettings (\s a -> s { _mediaLiveChannelCaptionSelectorSettingsTeletextSourceSettings = a })
