{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelEncoderSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAudioDescription
import Stratosphere.ResourceProperties.MediaLiveChannelAvailBlanking
import Stratosphere.ResourceProperties.MediaLiveChannelAvailConfiguration
import Stratosphere.ResourceProperties.MediaLiveChannelBlackoutSlate
import Stratosphere.ResourceProperties.MediaLiveChannelCaptionDescription
import Stratosphere.ResourceProperties.MediaLiveChannelFeatureActivations
import Stratosphere.ResourceProperties.MediaLiveChannelGlobalConfiguration
import Stratosphere.ResourceProperties.MediaLiveChannelNielsenConfiguration
import Stratosphere.ResourceProperties.MediaLiveChannelOutputGroup
import Stratosphere.ResourceProperties.MediaLiveChannelTimecodeConfig
import Stratosphere.ResourceProperties.MediaLiveChannelVideoDescription

-- | Full data type definition for MediaLiveChannelEncoderSettings. See
-- 'mediaLiveChannelEncoderSettings' for a more convenient constructor.
data MediaLiveChannelEncoderSettings =
  MediaLiveChannelEncoderSettings
  { _mediaLiveChannelEncoderSettingsAudioDescriptions :: Maybe [MediaLiveChannelAudioDescription]
  , _mediaLiveChannelEncoderSettingsAvailBlanking :: Maybe MediaLiveChannelAvailBlanking
  , _mediaLiveChannelEncoderSettingsAvailConfiguration :: Maybe MediaLiveChannelAvailConfiguration
  , _mediaLiveChannelEncoderSettingsBlackoutSlate :: Maybe MediaLiveChannelBlackoutSlate
  , _mediaLiveChannelEncoderSettingsCaptionDescriptions :: Maybe [MediaLiveChannelCaptionDescription]
  , _mediaLiveChannelEncoderSettingsFeatureActivations :: Maybe MediaLiveChannelFeatureActivations
  , _mediaLiveChannelEncoderSettingsGlobalConfiguration :: Maybe MediaLiveChannelGlobalConfiguration
  , _mediaLiveChannelEncoderSettingsNielsenConfiguration :: Maybe MediaLiveChannelNielsenConfiguration
  , _mediaLiveChannelEncoderSettingsOutputGroups :: Maybe [MediaLiveChannelOutputGroup]
  , _mediaLiveChannelEncoderSettingsTimecodeConfig :: Maybe MediaLiveChannelTimecodeConfig
  , _mediaLiveChannelEncoderSettingsVideoDescriptions :: Maybe [MediaLiveChannelVideoDescription]
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelEncoderSettings where
  toJSON MediaLiveChannelEncoderSettings{..} =
    object $
    catMaybes
    [ fmap (("AudioDescriptions",) . toJSON) _mediaLiveChannelEncoderSettingsAudioDescriptions
    , fmap (("AvailBlanking",) . toJSON) _mediaLiveChannelEncoderSettingsAvailBlanking
    , fmap (("AvailConfiguration",) . toJSON) _mediaLiveChannelEncoderSettingsAvailConfiguration
    , fmap (("BlackoutSlate",) . toJSON) _mediaLiveChannelEncoderSettingsBlackoutSlate
    , fmap (("CaptionDescriptions",) . toJSON) _mediaLiveChannelEncoderSettingsCaptionDescriptions
    , fmap (("FeatureActivations",) . toJSON) _mediaLiveChannelEncoderSettingsFeatureActivations
    , fmap (("GlobalConfiguration",) . toJSON) _mediaLiveChannelEncoderSettingsGlobalConfiguration
    , fmap (("NielsenConfiguration",) . toJSON) _mediaLiveChannelEncoderSettingsNielsenConfiguration
    , fmap (("OutputGroups",) . toJSON) _mediaLiveChannelEncoderSettingsOutputGroups
    , fmap (("TimecodeConfig",) . toJSON) _mediaLiveChannelEncoderSettingsTimecodeConfig
    , fmap (("VideoDescriptions",) . toJSON) _mediaLiveChannelEncoderSettingsVideoDescriptions
    ]

-- | Constructor for 'MediaLiveChannelEncoderSettings' containing required
-- fields as arguments.
mediaLiveChannelEncoderSettings
  :: MediaLiveChannelEncoderSettings
mediaLiveChannelEncoderSettings  =
  MediaLiveChannelEncoderSettings
  { _mediaLiveChannelEncoderSettingsAudioDescriptions = Nothing
  , _mediaLiveChannelEncoderSettingsAvailBlanking = Nothing
  , _mediaLiveChannelEncoderSettingsAvailConfiguration = Nothing
  , _mediaLiveChannelEncoderSettingsBlackoutSlate = Nothing
  , _mediaLiveChannelEncoderSettingsCaptionDescriptions = Nothing
  , _mediaLiveChannelEncoderSettingsFeatureActivations = Nothing
  , _mediaLiveChannelEncoderSettingsGlobalConfiguration = Nothing
  , _mediaLiveChannelEncoderSettingsNielsenConfiguration = Nothing
  , _mediaLiveChannelEncoderSettingsOutputGroups = Nothing
  , _mediaLiveChannelEncoderSettingsTimecodeConfig = Nothing
  , _mediaLiveChannelEncoderSettingsVideoDescriptions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-audiodescriptions
mlcesAudioDescriptions :: Lens' MediaLiveChannelEncoderSettings (Maybe [MediaLiveChannelAudioDescription])
mlcesAudioDescriptions = lens _mediaLiveChannelEncoderSettingsAudioDescriptions (\s a -> s { _mediaLiveChannelEncoderSettingsAudioDescriptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-availblanking
mlcesAvailBlanking :: Lens' MediaLiveChannelEncoderSettings (Maybe MediaLiveChannelAvailBlanking)
mlcesAvailBlanking = lens _mediaLiveChannelEncoderSettingsAvailBlanking (\s a -> s { _mediaLiveChannelEncoderSettingsAvailBlanking = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-availconfiguration
mlcesAvailConfiguration :: Lens' MediaLiveChannelEncoderSettings (Maybe MediaLiveChannelAvailConfiguration)
mlcesAvailConfiguration = lens _mediaLiveChannelEncoderSettingsAvailConfiguration (\s a -> s { _mediaLiveChannelEncoderSettingsAvailConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-blackoutslate
mlcesBlackoutSlate :: Lens' MediaLiveChannelEncoderSettings (Maybe MediaLiveChannelBlackoutSlate)
mlcesBlackoutSlate = lens _mediaLiveChannelEncoderSettingsBlackoutSlate (\s a -> s { _mediaLiveChannelEncoderSettingsBlackoutSlate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-captiondescriptions
mlcesCaptionDescriptions :: Lens' MediaLiveChannelEncoderSettings (Maybe [MediaLiveChannelCaptionDescription])
mlcesCaptionDescriptions = lens _mediaLiveChannelEncoderSettingsCaptionDescriptions (\s a -> s { _mediaLiveChannelEncoderSettingsCaptionDescriptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-featureactivations
mlcesFeatureActivations :: Lens' MediaLiveChannelEncoderSettings (Maybe MediaLiveChannelFeatureActivations)
mlcesFeatureActivations = lens _mediaLiveChannelEncoderSettingsFeatureActivations (\s a -> s { _mediaLiveChannelEncoderSettingsFeatureActivations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-globalconfiguration
mlcesGlobalConfiguration :: Lens' MediaLiveChannelEncoderSettings (Maybe MediaLiveChannelGlobalConfiguration)
mlcesGlobalConfiguration = lens _mediaLiveChannelEncoderSettingsGlobalConfiguration (\s a -> s { _mediaLiveChannelEncoderSettingsGlobalConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-nielsenconfiguration
mlcesNielsenConfiguration :: Lens' MediaLiveChannelEncoderSettings (Maybe MediaLiveChannelNielsenConfiguration)
mlcesNielsenConfiguration = lens _mediaLiveChannelEncoderSettingsNielsenConfiguration (\s a -> s { _mediaLiveChannelEncoderSettingsNielsenConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-outputgroups
mlcesOutputGroups :: Lens' MediaLiveChannelEncoderSettings (Maybe [MediaLiveChannelOutputGroup])
mlcesOutputGroups = lens _mediaLiveChannelEncoderSettingsOutputGroups (\s a -> s { _mediaLiveChannelEncoderSettingsOutputGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-timecodeconfig
mlcesTimecodeConfig :: Lens' MediaLiveChannelEncoderSettings (Maybe MediaLiveChannelTimecodeConfig)
mlcesTimecodeConfig = lens _mediaLiveChannelEncoderSettingsTimecodeConfig (\s a -> s { _mediaLiveChannelEncoderSettingsTimecodeConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-videodescriptions
mlcesVideoDescriptions :: Lens' MediaLiveChannelEncoderSettings (Maybe [MediaLiveChannelVideoDescription])
mlcesVideoDescriptions = lens _mediaLiveChannelEncoderSettingsVideoDescriptions (\s a -> s { _mediaLiveChannelEncoderSettingsVideoDescriptions = a })
