{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsbasicputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelHlsBasicPutSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelHlsBasicPutSettings. See
-- 'mediaLiveChannelHlsBasicPutSettings' for a more convenient constructor.
data MediaLiveChannelHlsBasicPutSettings =
  MediaLiveChannelHlsBasicPutSettings
  { _mediaLiveChannelHlsBasicPutSettingsConnectionRetryInterval :: Maybe (Val Integer)
  , _mediaLiveChannelHlsBasicPutSettingsFilecacheDuration :: Maybe (Val Integer)
  , _mediaLiveChannelHlsBasicPutSettingsNumRetries :: Maybe (Val Integer)
  , _mediaLiveChannelHlsBasicPutSettingsRestartDelay :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelHlsBasicPutSettings where
  toJSON MediaLiveChannelHlsBasicPutSettings{..} =
    object $
    catMaybes
    [ fmap (("ConnectionRetryInterval",) . toJSON) _mediaLiveChannelHlsBasicPutSettingsConnectionRetryInterval
    , fmap (("FilecacheDuration",) . toJSON) _mediaLiveChannelHlsBasicPutSettingsFilecacheDuration
    , fmap (("NumRetries",) . toJSON) _mediaLiveChannelHlsBasicPutSettingsNumRetries
    , fmap (("RestartDelay",) . toJSON) _mediaLiveChannelHlsBasicPutSettingsRestartDelay
    ]

-- | Constructor for 'MediaLiveChannelHlsBasicPutSettings' containing required
-- fields as arguments.
mediaLiveChannelHlsBasicPutSettings
  :: MediaLiveChannelHlsBasicPutSettings
mediaLiveChannelHlsBasicPutSettings  =
  MediaLiveChannelHlsBasicPutSettings
  { _mediaLiveChannelHlsBasicPutSettingsConnectionRetryInterval = Nothing
  , _mediaLiveChannelHlsBasicPutSettingsFilecacheDuration = Nothing
  , _mediaLiveChannelHlsBasicPutSettingsNumRetries = Nothing
  , _mediaLiveChannelHlsBasicPutSettingsRestartDelay = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsbasicputsettings.html#cfn-medialive-channel-hlsbasicputsettings-connectionretryinterval
mlchbpsConnectionRetryInterval :: Lens' MediaLiveChannelHlsBasicPutSettings (Maybe (Val Integer))
mlchbpsConnectionRetryInterval = lens _mediaLiveChannelHlsBasicPutSettingsConnectionRetryInterval (\s a -> s { _mediaLiveChannelHlsBasicPutSettingsConnectionRetryInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsbasicputsettings.html#cfn-medialive-channel-hlsbasicputsettings-filecacheduration
mlchbpsFilecacheDuration :: Lens' MediaLiveChannelHlsBasicPutSettings (Maybe (Val Integer))
mlchbpsFilecacheDuration = lens _mediaLiveChannelHlsBasicPutSettingsFilecacheDuration (\s a -> s { _mediaLiveChannelHlsBasicPutSettingsFilecacheDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsbasicputsettings.html#cfn-medialive-channel-hlsbasicputsettings-numretries
mlchbpsNumRetries :: Lens' MediaLiveChannelHlsBasicPutSettings (Maybe (Val Integer))
mlchbpsNumRetries = lens _mediaLiveChannelHlsBasicPutSettingsNumRetries (\s a -> s { _mediaLiveChannelHlsBasicPutSettingsNumRetries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsbasicputsettings.html#cfn-medialive-channel-hlsbasicputsettings-restartdelay
mlchbpsRestartDelay :: Lens' MediaLiveChannelHlsBasicPutSettings (Maybe (Val Integer))
mlchbpsRestartDelay = lens _mediaLiveChannelHlsBasicPutSettingsRestartDelay (\s a -> s { _mediaLiveChannelHlsBasicPutSettingsRestartDelay = a })
