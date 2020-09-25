{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelHlsAkamaiSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelHlsAkamaiSettings. See
-- 'mediaLiveChannelHlsAkamaiSettings' for a more convenient constructor.
data MediaLiveChannelHlsAkamaiSettings =
  MediaLiveChannelHlsAkamaiSettings
  { _mediaLiveChannelHlsAkamaiSettingsConnectionRetryInterval :: Maybe (Val Integer)
  , _mediaLiveChannelHlsAkamaiSettingsFilecacheDuration :: Maybe (Val Integer)
  , _mediaLiveChannelHlsAkamaiSettingsHttpTransferMode :: Maybe (Val Text)
  , _mediaLiveChannelHlsAkamaiSettingsNumRetries :: Maybe (Val Integer)
  , _mediaLiveChannelHlsAkamaiSettingsRestartDelay :: Maybe (Val Integer)
  , _mediaLiveChannelHlsAkamaiSettingsSalt :: Maybe (Val Text)
  , _mediaLiveChannelHlsAkamaiSettingsToken :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelHlsAkamaiSettings where
  toJSON MediaLiveChannelHlsAkamaiSettings{..} =
    object $
    catMaybes
    [ fmap (("ConnectionRetryInterval",) . toJSON) _mediaLiveChannelHlsAkamaiSettingsConnectionRetryInterval
    , fmap (("FilecacheDuration",) . toJSON) _mediaLiveChannelHlsAkamaiSettingsFilecacheDuration
    , fmap (("HttpTransferMode",) . toJSON) _mediaLiveChannelHlsAkamaiSettingsHttpTransferMode
    , fmap (("NumRetries",) . toJSON) _mediaLiveChannelHlsAkamaiSettingsNumRetries
    , fmap (("RestartDelay",) . toJSON) _mediaLiveChannelHlsAkamaiSettingsRestartDelay
    , fmap (("Salt",) . toJSON) _mediaLiveChannelHlsAkamaiSettingsSalt
    , fmap (("Token",) . toJSON) _mediaLiveChannelHlsAkamaiSettingsToken
    ]

-- | Constructor for 'MediaLiveChannelHlsAkamaiSettings' containing required
-- fields as arguments.
mediaLiveChannelHlsAkamaiSettings
  :: MediaLiveChannelHlsAkamaiSettings
mediaLiveChannelHlsAkamaiSettings  =
  MediaLiveChannelHlsAkamaiSettings
  { _mediaLiveChannelHlsAkamaiSettingsConnectionRetryInterval = Nothing
  , _mediaLiveChannelHlsAkamaiSettingsFilecacheDuration = Nothing
  , _mediaLiveChannelHlsAkamaiSettingsHttpTransferMode = Nothing
  , _mediaLiveChannelHlsAkamaiSettingsNumRetries = Nothing
  , _mediaLiveChannelHlsAkamaiSettingsRestartDelay = Nothing
  , _mediaLiveChannelHlsAkamaiSettingsSalt = Nothing
  , _mediaLiveChannelHlsAkamaiSettingsToken = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-connectionretryinterval
mlchasConnectionRetryInterval :: Lens' MediaLiveChannelHlsAkamaiSettings (Maybe (Val Integer))
mlchasConnectionRetryInterval = lens _mediaLiveChannelHlsAkamaiSettingsConnectionRetryInterval (\s a -> s { _mediaLiveChannelHlsAkamaiSettingsConnectionRetryInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-filecacheduration
mlchasFilecacheDuration :: Lens' MediaLiveChannelHlsAkamaiSettings (Maybe (Val Integer))
mlchasFilecacheDuration = lens _mediaLiveChannelHlsAkamaiSettingsFilecacheDuration (\s a -> s { _mediaLiveChannelHlsAkamaiSettingsFilecacheDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-httptransfermode
mlchasHttpTransferMode :: Lens' MediaLiveChannelHlsAkamaiSettings (Maybe (Val Text))
mlchasHttpTransferMode = lens _mediaLiveChannelHlsAkamaiSettingsHttpTransferMode (\s a -> s { _mediaLiveChannelHlsAkamaiSettingsHttpTransferMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-numretries
mlchasNumRetries :: Lens' MediaLiveChannelHlsAkamaiSettings (Maybe (Val Integer))
mlchasNumRetries = lens _mediaLiveChannelHlsAkamaiSettingsNumRetries (\s a -> s { _mediaLiveChannelHlsAkamaiSettingsNumRetries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-restartdelay
mlchasRestartDelay :: Lens' MediaLiveChannelHlsAkamaiSettings (Maybe (Val Integer))
mlchasRestartDelay = lens _mediaLiveChannelHlsAkamaiSettingsRestartDelay (\s a -> s { _mediaLiveChannelHlsAkamaiSettingsRestartDelay = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-salt
mlchasSalt :: Lens' MediaLiveChannelHlsAkamaiSettings (Maybe (Val Text))
mlchasSalt = lens _mediaLiveChannelHlsAkamaiSettingsSalt (\s a -> s { _mediaLiveChannelHlsAkamaiSettingsSalt = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsakamaisettings.html#cfn-medialive-channel-hlsakamaisettings-token
mlchasToken :: Lens' MediaLiveChannelHlsAkamaiSettings (Maybe (Val Text))
mlchasToken = lens _mediaLiveChannelHlsAkamaiSettingsToken (\s a -> s { _mediaLiveChannelHlsAkamaiSettingsToken = a })
