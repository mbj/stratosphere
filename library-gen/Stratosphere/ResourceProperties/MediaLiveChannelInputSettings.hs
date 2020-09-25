{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelInputSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAudioSelector
import Stratosphere.ResourceProperties.MediaLiveChannelCaptionSelector
import Stratosphere.ResourceProperties.MediaLiveChannelNetworkInputSettings
import Stratosphere.ResourceProperties.MediaLiveChannelVideoSelector

-- | Full data type definition for MediaLiveChannelInputSettings. See
-- 'mediaLiveChannelInputSettings' for a more convenient constructor.
data MediaLiveChannelInputSettings =
  MediaLiveChannelInputSettings
  { _mediaLiveChannelInputSettingsAudioSelectors :: Maybe [MediaLiveChannelAudioSelector]
  , _mediaLiveChannelInputSettingsCaptionSelectors :: Maybe [MediaLiveChannelCaptionSelector]
  , _mediaLiveChannelInputSettingsDeblockFilter :: Maybe (Val Text)
  , _mediaLiveChannelInputSettingsDenoiseFilter :: Maybe (Val Text)
  , _mediaLiveChannelInputSettingsFilterStrength :: Maybe (Val Integer)
  , _mediaLiveChannelInputSettingsInputFilter :: Maybe (Val Text)
  , _mediaLiveChannelInputSettingsNetworkInputSettings :: Maybe MediaLiveChannelNetworkInputSettings
  , _mediaLiveChannelInputSettingsSmpte2038DataPreference :: Maybe (Val Text)
  , _mediaLiveChannelInputSettingsSourceEndBehavior :: Maybe (Val Text)
  , _mediaLiveChannelInputSettingsVideoSelector :: Maybe MediaLiveChannelVideoSelector
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelInputSettings where
  toJSON MediaLiveChannelInputSettings{..} =
    object $
    catMaybes
    [ fmap (("AudioSelectors",) . toJSON) _mediaLiveChannelInputSettingsAudioSelectors
    , fmap (("CaptionSelectors",) . toJSON) _mediaLiveChannelInputSettingsCaptionSelectors
    , fmap (("DeblockFilter",) . toJSON) _mediaLiveChannelInputSettingsDeblockFilter
    , fmap (("DenoiseFilter",) . toJSON) _mediaLiveChannelInputSettingsDenoiseFilter
    , fmap (("FilterStrength",) . toJSON) _mediaLiveChannelInputSettingsFilterStrength
    , fmap (("InputFilter",) . toJSON) _mediaLiveChannelInputSettingsInputFilter
    , fmap (("NetworkInputSettings",) . toJSON) _mediaLiveChannelInputSettingsNetworkInputSettings
    , fmap (("Smpte2038DataPreference",) . toJSON) _mediaLiveChannelInputSettingsSmpte2038DataPreference
    , fmap (("SourceEndBehavior",) . toJSON) _mediaLiveChannelInputSettingsSourceEndBehavior
    , fmap (("VideoSelector",) . toJSON) _mediaLiveChannelInputSettingsVideoSelector
    ]

-- | Constructor for 'MediaLiveChannelInputSettings' containing required
-- fields as arguments.
mediaLiveChannelInputSettings
  :: MediaLiveChannelInputSettings
mediaLiveChannelInputSettings  =
  MediaLiveChannelInputSettings
  { _mediaLiveChannelInputSettingsAudioSelectors = Nothing
  , _mediaLiveChannelInputSettingsCaptionSelectors = Nothing
  , _mediaLiveChannelInputSettingsDeblockFilter = Nothing
  , _mediaLiveChannelInputSettingsDenoiseFilter = Nothing
  , _mediaLiveChannelInputSettingsFilterStrength = Nothing
  , _mediaLiveChannelInputSettingsInputFilter = Nothing
  , _mediaLiveChannelInputSettingsNetworkInputSettings = Nothing
  , _mediaLiveChannelInputSettingsSmpte2038DataPreference = Nothing
  , _mediaLiveChannelInputSettingsSourceEndBehavior = Nothing
  , _mediaLiveChannelInputSettingsVideoSelector = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-audioselectors
mlcisAudioSelectors :: Lens' MediaLiveChannelInputSettings (Maybe [MediaLiveChannelAudioSelector])
mlcisAudioSelectors = lens _mediaLiveChannelInputSettingsAudioSelectors (\s a -> s { _mediaLiveChannelInputSettingsAudioSelectors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-captionselectors
mlcisCaptionSelectors :: Lens' MediaLiveChannelInputSettings (Maybe [MediaLiveChannelCaptionSelector])
mlcisCaptionSelectors = lens _mediaLiveChannelInputSettingsCaptionSelectors (\s a -> s { _mediaLiveChannelInputSettingsCaptionSelectors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-deblockfilter
mlcisDeblockFilter :: Lens' MediaLiveChannelInputSettings (Maybe (Val Text))
mlcisDeblockFilter = lens _mediaLiveChannelInputSettingsDeblockFilter (\s a -> s { _mediaLiveChannelInputSettingsDeblockFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-denoisefilter
mlcisDenoiseFilter :: Lens' MediaLiveChannelInputSettings (Maybe (Val Text))
mlcisDenoiseFilter = lens _mediaLiveChannelInputSettingsDenoiseFilter (\s a -> s { _mediaLiveChannelInputSettingsDenoiseFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-filterstrength
mlcisFilterStrength :: Lens' MediaLiveChannelInputSettings (Maybe (Val Integer))
mlcisFilterStrength = lens _mediaLiveChannelInputSettingsFilterStrength (\s a -> s { _mediaLiveChannelInputSettingsFilterStrength = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-inputfilter
mlcisInputFilter :: Lens' MediaLiveChannelInputSettings (Maybe (Val Text))
mlcisInputFilter = lens _mediaLiveChannelInputSettingsInputFilter (\s a -> s { _mediaLiveChannelInputSettingsInputFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-networkinputsettings
mlcisNetworkInputSettings :: Lens' MediaLiveChannelInputSettings (Maybe MediaLiveChannelNetworkInputSettings)
mlcisNetworkInputSettings = lens _mediaLiveChannelInputSettingsNetworkInputSettings (\s a -> s { _mediaLiveChannelInputSettingsNetworkInputSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-smpte2038datapreference
mlcisSmpte2038DataPreference :: Lens' MediaLiveChannelInputSettings (Maybe (Val Text))
mlcisSmpte2038DataPreference = lens _mediaLiveChannelInputSettingsSmpte2038DataPreference (\s a -> s { _mediaLiveChannelInputSettingsSmpte2038DataPreference = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-sourceendbehavior
mlcisSourceEndBehavior :: Lens' MediaLiveChannelInputSettings (Maybe (Val Text))
mlcisSourceEndBehavior = lens _mediaLiveChannelInputSettingsSourceEndBehavior (\s a -> s { _mediaLiveChannelInputSettingsSourceEndBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-videoselector
mlcisVideoSelector :: Lens' MediaLiveChannelInputSettings (Maybe MediaLiveChannelVideoSelector)
mlcisVideoSelector = lens _mediaLiveChannelInputSettingsVideoSelector (\s a -> s { _mediaLiveChannelInputSettingsVideoSelector = a })
