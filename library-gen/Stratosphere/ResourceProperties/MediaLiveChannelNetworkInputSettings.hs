{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelNetworkInputSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelHlsInputSettings

-- | Full data type definition for MediaLiveChannelNetworkInputSettings. See
-- 'mediaLiveChannelNetworkInputSettings' for a more convenient constructor.
data MediaLiveChannelNetworkInputSettings =
  MediaLiveChannelNetworkInputSettings
  { _mediaLiveChannelNetworkInputSettingsHlsInputSettings :: Maybe MediaLiveChannelHlsInputSettings
  , _mediaLiveChannelNetworkInputSettingsServerValidation :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelNetworkInputSettings where
  toJSON MediaLiveChannelNetworkInputSettings{..} =
    object $
    catMaybes
    [ fmap (("HlsInputSettings",) . toJSON) _mediaLiveChannelNetworkInputSettingsHlsInputSettings
    , fmap (("ServerValidation",) . toJSON) _mediaLiveChannelNetworkInputSettingsServerValidation
    ]

-- | Constructor for 'MediaLiveChannelNetworkInputSettings' containing
-- required fields as arguments.
mediaLiveChannelNetworkInputSettings
  :: MediaLiveChannelNetworkInputSettings
mediaLiveChannelNetworkInputSettings  =
  MediaLiveChannelNetworkInputSettings
  { _mediaLiveChannelNetworkInputSettingsHlsInputSettings = Nothing
  , _mediaLiveChannelNetworkInputSettingsServerValidation = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html#cfn-medialive-channel-networkinputsettings-hlsinputsettings
mlcnisHlsInputSettings :: Lens' MediaLiveChannelNetworkInputSettings (Maybe MediaLiveChannelHlsInputSettings)
mlcnisHlsInputSettings = lens _mediaLiveChannelNetworkInputSettingsHlsInputSettings (\s a -> s { _mediaLiveChannelNetworkInputSettingsHlsInputSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html#cfn-medialive-channel-networkinputsettings-servervalidation
mlcnisServerValidation :: Lens' MediaLiveChannelNetworkInputSettings (Maybe (Val Text))
mlcnisServerValidation = lens _mediaLiveChannelNetworkInputSettingsServerValidation (\s a -> s { _mediaLiveChannelNetworkInputSettingsServerValidation = a })
