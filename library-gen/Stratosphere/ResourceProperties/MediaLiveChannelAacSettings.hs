{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelAacSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelAacSettings. See
-- 'mediaLiveChannelAacSettings' for a more convenient constructor.
data MediaLiveChannelAacSettings =
  MediaLiveChannelAacSettings
  { _mediaLiveChannelAacSettingsBitrate :: Maybe (Val Double)
  , _mediaLiveChannelAacSettingsCodingMode :: Maybe (Val Text)
  , _mediaLiveChannelAacSettingsInputType :: Maybe (Val Text)
  , _mediaLiveChannelAacSettingsProfile :: Maybe (Val Text)
  , _mediaLiveChannelAacSettingsRateControlMode :: Maybe (Val Text)
  , _mediaLiveChannelAacSettingsRawFormat :: Maybe (Val Text)
  , _mediaLiveChannelAacSettingsSampleRate :: Maybe (Val Double)
  , _mediaLiveChannelAacSettingsSpec :: Maybe (Val Text)
  , _mediaLiveChannelAacSettingsVbrQuality :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAacSettings where
  toJSON MediaLiveChannelAacSettings{..} =
    object $
    catMaybes
    [ fmap (("Bitrate",) . toJSON) _mediaLiveChannelAacSettingsBitrate
    , fmap (("CodingMode",) . toJSON) _mediaLiveChannelAacSettingsCodingMode
    , fmap (("InputType",) . toJSON) _mediaLiveChannelAacSettingsInputType
    , fmap (("Profile",) . toJSON) _mediaLiveChannelAacSettingsProfile
    , fmap (("RateControlMode",) . toJSON) _mediaLiveChannelAacSettingsRateControlMode
    , fmap (("RawFormat",) . toJSON) _mediaLiveChannelAacSettingsRawFormat
    , fmap (("SampleRate",) . toJSON) _mediaLiveChannelAacSettingsSampleRate
    , fmap (("Spec",) . toJSON) _mediaLiveChannelAacSettingsSpec
    , fmap (("VbrQuality",) . toJSON) _mediaLiveChannelAacSettingsVbrQuality
    ]

-- | Constructor for 'MediaLiveChannelAacSettings' containing required fields
-- as arguments.
mediaLiveChannelAacSettings
  :: MediaLiveChannelAacSettings
mediaLiveChannelAacSettings  =
  MediaLiveChannelAacSettings
  { _mediaLiveChannelAacSettingsBitrate = Nothing
  , _mediaLiveChannelAacSettingsCodingMode = Nothing
  , _mediaLiveChannelAacSettingsInputType = Nothing
  , _mediaLiveChannelAacSettingsProfile = Nothing
  , _mediaLiveChannelAacSettingsRateControlMode = Nothing
  , _mediaLiveChannelAacSettingsRawFormat = Nothing
  , _mediaLiveChannelAacSettingsSampleRate = Nothing
  , _mediaLiveChannelAacSettingsSpec = Nothing
  , _mediaLiveChannelAacSettingsVbrQuality = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-bitrate
mlcasBitrate :: Lens' MediaLiveChannelAacSettings (Maybe (Val Double))
mlcasBitrate = lens _mediaLiveChannelAacSettingsBitrate (\s a -> s { _mediaLiveChannelAacSettingsBitrate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-codingmode
mlcasCodingMode :: Lens' MediaLiveChannelAacSettings (Maybe (Val Text))
mlcasCodingMode = lens _mediaLiveChannelAacSettingsCodingMode (\s a -> s { _mediaLiveChannelAacSettingsCodingMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-inputtype
mlcasInputType :: Lens' MediaLiveChannelAacSettings (Maybe (Val Text))
mlcasInputType = lens _mediaLiveChannelAacSettingsInputType (\s a -> s { _mediaLiveChannelAacSettingsInputType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-profile
mlcasProfile :: Lens' MediaLiveChannelAacSettings (Maybe (Val Text))
mlcasProfile = lens _mediaLiveChannelAacSettingsProfile (\s a -> s { _mediaLiveChannelAacSettingsProfile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-ratecontrolmode
mlcasRateControlMode :: Lens' MediaLiveChannelAacSettings (Maybe (Val Text))
mlcasRateControlMode = lens _mediaLiveChannelAacSettingsRateControlMode (\s a -> s { _mediaLiveChannelAacSettingsRateControlMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-rawformat
mlcasRawFormat :: Lens' MediaLiveChannelAacSettings (Maybe (Val Text))
mlcasRawFormat = lens _mediaLiveChannelAacSettingsRawFormat (\s a -> s { _mediaLiveChannelAacSettingsRawFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-samplerate
mlcasSampleRate :: Lens' MediaLiveChannelAacSettings (Maybe (Val Double))
mlcasSampleRate = lens _mediaLiveChannelAacSettingsSampleRate (\s a -> s { _mediaLiveChannelAacSettingsSampleRate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-spec
mlcasSpec :: Lens' MediaLiveChannelAacSettings (Maybe (Val Text))
mlcasSpec = lens _mediaLiveChannelAacSettingsSpec (\s a -> s { _mediaLiveChannelAacSettingsSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aacsettings.html#cfn-medialive-channel-aacsettings-vbrquality
mlcasVbrQuality :: Lens' MediaLiveChannelAacSettings (Maybe (Val Text))
mlcasVbrQuality = lens _mediaLiveChannelAacSettingsVbrQuality (\s a -> s { _mediaLiveChannelAacSettingsVbrQuality = a })
