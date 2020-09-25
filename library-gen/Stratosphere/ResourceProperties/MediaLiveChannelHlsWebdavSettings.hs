{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelHlsWebdavSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelHlsWebdavSettings. See
-- 'mediaLiveChannelHlsWebdavSettings' for a more convenient constructor.
data MediaLiveChannelHlsWebdavSettings =
  MediaLiveChannelHlsWebdavSettings
  { _mediaLiveChannelHlsWebdavSettingsConnectionRetryInterval :: Maybe (Val Integer)
  , _mediaLiveChannelHlsWebdavSettingsFilecacheDuration :: Maybe (Val Integer)
  , _mediaLiveChannelHlsWebdavSettingsHttpTransferMode :: Maybe (Val Text)
  , _mediaLiveChannelHlsWebdavSettingsNumRetries :: Maybe (Val Integer)
  , _mediaLiveChannelHlsWebdavSettingsRestartDelay :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelHlsWebdavSettings where
  toJSON MediaLiveChannelHlsWebdavSettings{..} =
    object $
    catMaybes
    [ fmap (("ConnectionRetryInterval",) . toJSON) _mediaLiveChannelHlsWebdavSettingsConnectionRetryInterval
    , fmap (("FilecacheDuration",) . toJSON) _mediaLiveChannelHlsWebdavSettingsFilecacheDuration
    , fmap (("HttpTransferMode",) . toJSON) _mediaLiveChannelHlsWebdavSettingsHttpTransferMode
    , fmap (("NumRetries",) . toJSON) _mediaLiveChannelHlsWebdavSettingsNumRetries
    , fmap (("RestartDelay",) . toJSON) _mediaLiveChannelHlsWebdavSettingsRestartDelay
    ]

-- | Constructor for 'MediaLiveChannelHlsWebdavSettings' containing required
-- fields as arguments.
mediaLiveChannelHlsWebdavSettings
  :: MediaLiveChannelHlsWebdavSettings
mediaLiveChannelHlsWebdavSettings  =
  MediaLiveChannelHlsWebdavSettings
  { _mediaLiveChannelHlsWebdavSettingsConnectionRetryInterval = Nothing
  , _mediaLiveChannelHlsWebdavSettingsFilecacheDuration = Nothing
  , _mediaLiveChannelHlsWebdavSettingsHttpTransferMode = Nothing
  , _mediaLiveChannelHlsWebdavSettingsNumRetries = Nothing
  , _mediaLiveChannelHlsWebdavSettingsRestartDelay = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html#cfn-medialive-channel-hlswebdavsettings-connectionretryinterval
mlchwsConnectionRetryInterval :: Lens' MediaLiveChannelHlsWebdavSettings (Maybe (Val Integer))
mlchwsConnectionRetryInterval = lens _mediaLiveChannelHlsWebdavSettingsConnectionRetryInterval (\s a -> s { _mediaLiveChannelHlsWebdavSettingsConnectionRetryInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html#cfn-medialive-channel-hlswebdavsettings-filecacheduration
mlchwsFilecacheDuration :: Lens' MediaLiveChannelHlsWebdavSettings (Maybe (Val Integer))
mlchwsFilecacheDuration = lens _mediaLiveChannelHlsWebdavSettingsFilecacheDuration (\s a -> s { _mediaLiveChannelHlsWebdavSettingsFilecacheDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html#cfn-medialive-channel-hlswebdavsettings-httptransfermode
mlchwsHttpTransferMode :: Lens' MediaLiveChannelHlsWebdavSettings (Maybe (Val Text))
mlchwsHttpTransferMode = lens _mediaLiveChannelHlsWebdavSettingsHttpTransferMode (\s a -> s { _mediaLiveChannelHlsWebdavSettingsHttpTransferMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html#cfn-medialive-channel-hlswebdavsettings-numretries
mlchwsNumRetries :: Lens' MediaLiveChannelHlsWebdavSettings (Maybe (Val Integer))
mlchwsNumRetries = lens _mediaLiveChannelHlsWebdavSettingsNumRetries (\s a -> s { _mediaLiveChannelHlsWebdavSettingsNumRetries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlswebdavsettings.html#cfn-medialive-channel-hlswebdavsettings-restartdelay
mlchwsRestartDelay :: Lens' MediaLiveChannelHlsWebdavSettings (Maybe (Val Integer))
mlchwsRestartDelay = lens _mediaLiveChannelHlsWebdavSettingsRestartDelay (\s a -> s { _mediaLiveChannelHlsWebdavSettingsRestartDelay = a })
