{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlscdnsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelHlsCdnSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelHlsAkamaiSettings
import Stratosphere.ResourceProperties.MediaLiveChannelHlsBasicPutSettings
import Stratosphere.ResourceProperties.MediaLiveChannelHlsMediaStoreSettings
import Stratosphere.ResourceProperties.MediaLiveChannelHlsWebdavSettings

-- | Full data type definition for MediaLiveChannelHlsCdnSettings. See
-- 'mediaLiveChannelHlsCdnSettings' for a more convenient constructor.
data MediaLiveChannelHlsCdnSettings =
  MediaLiveChannelHlsCdnSettings
  { _mediaLiveChannelHlsCdnSettingsHlsAkamaiSettings :: Maybe MediaLiveChannelHlsAkamaiSettings
  , _mediaLiveChannelHlsCdnSettingsHlsBasicPutSettings :: Maybe MediaLiveChannelHlsBasicPutSettings
  , _mediaLiveChannelHlsCdnSettingsHlsMediaStoreSettings :: Maybe MediaLiveChannelHlsMediaStoreSettings
  , _mediaLiveChannelHlsCdnSettingsHlsWebdavSettings :: Maybe MediaLiveChannelHlsWebdavSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelHlsCdnSettings where
  toJSON MediaLiveChannelHlsCdnSettings{..} =
    object $
    catMaybes
    [ fmap (("HlsAkamaiSettings",) . toJSON) _mediaLiveChannelHlsCdnSettingsHlsAkamaiSettings
    , fmap (("HlsBasicPutSettings",) . toJSON) _mediaLiveChannelHlsCdnSettingsHlsBasicPutSettings
    , fmap (("HlsMediaStoreSettings",) . toJSON) _mediaLiveChannelHlsCdnSettingsHlsMediaStoreSettings
    , fmap (("HlsWebdavSettings",) . toJSON) _mediaLiveChannelHlsCdnSettingsHlsWebdavSettings
    ]

-- | Constructor for 'MediaLiveChannelHlsCdnSettings' containing required
-- fields as arguments.
mediaLiveChannelHlsCdnSettings
  :: MediaLiveChannelHlsCdnSettings
mediaLiveChannelHlsCdnSettings  =
  MediaLiveChannelHlsCdnSettings
  { _mediaLiveChannelHlsCdnSettingsHlsAkamaiSettings = Nothing
  , _mediaLiveChannelHlsCdnSettingsHlsBasicPutSettings = Nothing
  , _mediaLiveChannelHlsCdnSettingsHlsMediaStoreSettings = Nothing
  , _mediaLiveChannelHlsCdnSettingsHlsWebdavSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlscdnsettings.html#cfn-medialive-channel-hlscdnsettings-hlsakamaisettings
mlchcsHlsAkamaiSettings :: Lens' MediaLiveChannelHlsCdnSettings (Maybe MediaLiveChannelHlsAkamaiSettings)
mlchcsHlsAkamaiSettings = lens _mediaLiveChannelHlsCdnSettingsHlsAkamaiSettings (\s a -> s { _mediaLiveChannelHlsCdnSettingsHlsAkamaiSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlscdnsettings.html#cfn-medialive-channel-hlscdnsettings-hlsbasicputsettings
mlchcsHlsBasicPutSettings :: Lens' MediaLiveChannelHlsCdnSettings (Maybe MediaLiveChannelHlsBasicPutSettings)
mlchcsHlsBasicPutSettings = lens _mediaLiveChannelHlsCdnSettingsHlsBasicPutSettings (\s a -> s { _mediaLiveChannelHlsCdnSettingsHlsBasicPutSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlscdnsettings.html#cfn-medialive-channel-hlscdnsettings-hlsmediastoresettings
mlchcsHlsMediaStoreSettings :: Lens' MediaLiveChannelHlsCdnSettings (Maybe MediaLiveChannelHlsMediaStoreSettings)
mlchcsHlsMediaStoreSettings = lens _mediaLiveChannelHlsCdnSettingsHlsMediaStoreSettings (\s a -> s { _mediaLiveChannelHlsCdnSettingsHlsMediaStoreSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlscdnsettings.html#cfn-medialive-channel-hlscdnsettings-hlswebdavsettings
mlchcsHlsWebdavSettings :: Lens' MediaLiveChannelHlsCdnSettings (Maybe MediaLiveChannelHlsWebdavSettings)
mlchcsHlsWebdavSettings = lens _mediaLiveChannelHlsCdnSettingsHlsWebdavSettings (\s a -> s { _mediaLiveChannelHlsCdnSettingsHlsWebdavSettings = a })
