{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelHlsMediaStoreSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelHlsMediaStoreSettings. See
-- 'mediaLiveChannelHlsMediaStoreSettings' for a more convenient
-- constructor.
data MediaLiveChannelHlsMediaStoreSettings =
  MediaLiveChannelHlsMediaStoreSettings
  { _mediaLiveChannelHlsMediaStoreSettingsConnectionRetryInterval :: Maybe (Val Integer)
  , _mediaLiveChannelHlsMediaStoreSettingsFilecacheDuration :: Maybe (Val Integer)
  , _mediaLiveChannelHlsMediaStoreSettingsMediaStoreStorageClass :: Maybe (Val Text)
  , _mediaLiveChannelHlsMediaStoreSettingsNumRetries :: Maybe (Val Integer)
  , _mediaLiveChannelHlsMediaStoreSettingsRestartDelay :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelHlsMediaStoreSettings where
  toJSON MediaLiveChannelHlsMediaStoreSettings{..} =
    object $
    catMaybes
    [ fmap (("ConnectionRetryInterval",) . toJSON) _mediaLiveChannelHlsMediaStoreSettingsConnectionRetryInterval
    , fmap (("FilecacheDuration",) . toJSON) _mediaLiveChannelHlsMediaStoreSettingsFilecacheDuration
    , fmap (("MediaStoreStorageClass",) . toJSON) _mediaLiveChannelHlsMediaStoreSettingsMediaStoreStorageClass
    , fmap (("NumRetries",) . toJSON) _mediaLiveChannelHlsMediaStoreSettingsNumRetries
    , fmap (("RestartDelay",) . toJSON) _mediaLiveChannelHlsMediaStoreSettingsRestartDelay
    ]

-- | Constructor for 'MediaLiveChannelHlsMediaStoreSettings' containing
-- required fields as arguments.
mediaLiveChannelHlsMediaStoreSettings
  :: MediaLiveChannelHlsMediaStoreSettings
mediaLiveChannelHlsMediaStoreSettings  =
  MediaLiveChannelHlsMediaStoreSettings
  { _mediaLiveChannelHlsMediaStoreSettingsConnectionRetryInterval = Nothing
  , _mediaLiveChannelHlsMediaStoreSettingsFilecacheDuration = Nothing
  , _mediaLiveChannelHlsMediaStoreSettingsMediaStoreStorageClass = Nothing
  , _mediaLiveChannelHlsMediaStoreSettingsNumRetries = Nothing
  , _mediaLiveChannelHlsMediaStoreSettingsRestartDelay = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html#cfn-medialive-channel-hlsmediastoresettings-connectionretryinterval
mlchmssConnectionRetryInterval :: Lens' MediaLiveChannelHlsMediaStoreSettings (Maybe (Val Integer))
mlchmssConnectionRetryInterval = lens _mediaLiveChannelHlsMediaStoreSettingsConnectionRetryInterval (\s a -> s { _mediaLiveChannelHlsMediaStoreSettingsConnectionRetryInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html#cfn-medialive-channel-hlsmediastoresettings-filecacheduration
mlchmssFilecacheDuration :: Lens' MediaLiveChannelHlsMediaStoreSettings (Maybe (Val Integer))
mlchmssFilecacheDuration = lens _mediaLiveChannelHlsMediaStoreSettingsFilecacheDuration (\s a -> s { _mediaLiveChannelHlsMediaStoreSettingsFilecacheDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html#cfn-medialive-channel-hlsmediastoresettings-mediastorestorageclass
mlchmssMediaStoreStorageClass :: Lens' MediaLiveChannelHlsMediaStoreSettings (Maybe (Val Text))
mlchmssMediaStoreStorageClass = lens _mediaLiveChannelHlsMediaStoreSettingsMediaStoreStorageClass (\s a -> s { _mediaLiveChannelHlsMediaStoreSettingsMediaStoreStorageClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html#cfn-medialive-channel-hlsmediastoresettings-numretries
mlchmssNumRetries :: Lens' MediaLiveChannelHlsMediaStoreSettings (Maybe (Val Integer))
mlchmssNumRetries = lens _mediaLiveChannelHlsMediaStoreSettingsNumRetries (\s a -> s { _mediaLiveChannelHlsMediaStoreSettingsNumRetries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsmediastoresettings.html#cfn-medialive-channel-hlsmediastoresettings-restartdelay
mlchmssRestartDelay :: Lens' MediaLiveChannelHlsMediaStoreSettings (Maybe (Val Integer))
mlchmssRestartDelay = lens _mediaLiveChannelHlsMediaStoreSettingsRestartDelay (\s a -> s { _mediaLiveChannelHlsMediaStoreSettingsRestartDelay = a })
