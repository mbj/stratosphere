{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ebuttddestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelEbuTtDDestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelEbuTtDDestinationSettings.
-- See 'mediaLiveChannelEbuTtDDestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelEbuTtDDestinationSettings =
  MediaLiveChannelEbuTtDDestinationSettings
  { _mediaLiveChannelEbuTtDDestinationSettingsFillLineGap :: Maybe (Val Text)
  , _mediaLiveChannelEbuTtDDestinationSettingsFontFamily :: Maybe (Val Text)
  , _mediaLiveChannelEbuTtDDestinationSettingsStyleControl :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelEbuTtDDestinationSettings where
  toJSON MediaLiveChannelEbuTtDDestinationSettings{..} =
    object $
    catMaybes
    [ fmap (("FillLineGap",) . toJSON) _mediaLiveChannelEbuTtDDestinationSettingsFillLineGap
    , fmap (("FontFamily",) . toJSON) _mediaLiveChannelEbuTtDDestinationSettingsFontFamily
    , fmap (("StyleControl",) . toJSON) _mediaLiveChannelEbuTtDDestinationSettingsStyleControl
    ]

-- | Constructor for 'MediaLiveChannelEbuTtDDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelEbuTtDDestinationSettings
  :: MediaLiveChannelEbuTtDDestinationSettings
mediaLiveChannelEbuTtDDestinationSettings  =
  MediaLiveChannelEbuTtDDestinationSettings
  { _mediaLiveChannelEbuTtDDestinationSettingsFillLineGap = Nothing
  , _mediaLiveChannelEbuTtDDestinationSettingsFontFamily = Nothing
  , _mediaLiveChannelEbuTtDDestinationSettingsStyleControl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ebuttddestinationsettings.html#cfn-medialive-channel-ebuttddestinationsettings-filllinegap
mlcetddsFillLineGap :: Lens' MediaLiveChannelEbuTtDDestinationSettings (Maybe (Val Text))
mlcetddsFillLineGap = lens _mediaLiveChannelEbuTtDDestinationSettingsFillLineGap (\s a -> s { _mediaLiveChannelEbuTtDDestinationSettingsFillLineGap = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ebuttddestinationsettings.html#cfn-medialive-channel-ebuttddestinationsettings-fontfamily
mlcetddsFontFamily :: Lens' MediaLiveChannelEbuTtDDestinationSettings (Maybe (Val Text))
mlcetddsFontFamily = lens _mediaLiveChannelEbuTtDDestinationSettingsFontFamily (\s a -> s { _mediaLiveChannelEbuTtDDestinationSettingsFontFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ebuttddestinationsettings.html#cfn-medialive-channel-ebuttddestinationsettings-stylecontrol
mlcetddsStyleControl :: Lens' MediaLiveChannelEbuTtDDestinationSettings (Maybe (Val Text))
mlcetddsStyleControl = lens _mediaLiveChannelEbuTtDDestinationSettingsStyleControl (\s a -> s { _mediaLiveChannelEbuTtDDestinationSettingsStyleControl = a })
