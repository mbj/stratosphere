{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-statickeysettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelStaticKeySettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelInputLocation

-- | Full data type definition for MediaLiveChannelStaticKeySettings. See
-- 'mediaLiveChannelStaticKeySettings' for a more convenient constructor.
data MediaLiveChannelStaticKeySettings =
  MediaLiveChannelStaticKeySettings
  { _mediaLiveChannelStaticKeySettingsKeyProviderServer :: Maybe MediaLiveChannelInputLocation
  , _mediaLiveChannelStaticKeySettingsStaticKeyValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelStaticKeySettings where
  toJSON MediaLiveChannelStaticKeySettings{..} =
    object $
    catMaybes
    [ fmap (("KeyProviderServer",) . toJSON) _mediaLiveChannelStaticKeySettingsKeyProviderServer
    , fmap (("StaticKeyValue",) . toJSON) _mediaLiveChannelStaticKeySettingsStaticKeyValue
    ]

-- | Constructor for 'MediaLiveChannelStaticKeySettings' containing required
-- fields as arguments.
mediaLiveChannelStaticKeySettings
  :: MediaLiveChannelStaticKeySettings
mediaLiveChannelStaticKeySettings  =
  MediaLiveChannelStaticKeySettings
  { _mediaLiveChannelStaticKeySettingsKeyProviderServer = Nothing
  , _mediaLiveChannelStaticKeySettingsStaticKeyValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-statickeysettings.html#cfn-medialive-channel-statickeysettings-keyproviderserver
mlcsksKeyProviderServer :: Lens' MediaLiveChannelStaticKeySettings (Maybe MediaLiveChannelInputLocation)
mlcsksKeyProviderServer = lens _mediaLiveChannelStaticKeySettingsKeyProviderServer (\s a -> s { _mediaLiveChannelStaticKeySettingsKeyProviderServer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-statickeysettings.html#cfn-medialive-channel-statickeysettings-statickeyvalue
mlcsksStaticKeyValue :: Lens' MediaLiveChannelStaticKeySettings (Maybe (Val Text))
mlcsksStaticKeyValue = lens _mediaLiveChannelStaticKeySettingsStaticKeyValue (\s a -> s { _mediaLiveChannelStaticKeySettingsStaticKeyValue = a })
