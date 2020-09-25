{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-keyprovidersettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelKeyProviderSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelStaticKeySettings

-- | Full data type definition for MediaLiveChannelKeyProviderSettings. See
-- 'mediaLiveChannelKeyProviderSettings' for a more convenient constructor.
data MediaLiveChannelKeyProviderSettings =
  MediaLiveChannelKeyProviderSettings
  { _mediaLiveChannelKeyProviderSettingsStaticKeySettings :: Maybe MediaLiveChannelStaticKeySettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelKeyProviderSettings where
  toJSON MediaLiveChannelKeyProviderSettings{..} =
    object $
    catMaybes
    [ fmap (("StaticKeySettings",) . toJSON) _mediaLiveChannelKeyProviderSettingsStaticKeySettings
    ]

-- | Constructor for 'MediaLiveChannelKeyProviderSettings' containing required
-- fields as arguments.
mediaLiveChannelKeyProviderSettings
  :: MediaLiveChannelKeyProviderSettings
mediaLiveChannelKeyProviderSettings  =
  MediaLiveChannelKeyProviderSettings
  { _mediaLiveChannelKeyProviderSettingsStaticKeySettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-keyprovidersettings.html#cfn-medialive-channel-keyprovidersettings-statickeysettings
mlckpsStaticKeySettings :: Lens' MediaLiveChannelKeyProviderSettings (Maybe MediaLiveChannelStaticKeySettings)
mlckpsStaticKeySettings = lens _mediaLiveChannelKeyProviderSettingsStaticKeySettings (\s a -> s { _mediaLiveChannelKeyProviderSettingsStaticKeySettings = a })
