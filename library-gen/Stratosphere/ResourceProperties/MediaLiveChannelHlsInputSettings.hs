
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelHlsInputSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelHlsInputSettings. See
-- 'mediaLiveChannelHlsInputSettings' for a more convenient constructor.
data MediaLiveChannelHlsInputSettings =
  MediaLiveChannelHlsInputSettings
  { _mediaLiveChannelHlsInputSettingsBandwidth :: Maybe (Val Integer)
  , _mediaLiveChannelHlsInputSettingsBufferSegments :: Maybe (Val Integer)
  , _mediaLiveChannelHlsInputSettingsRetries :: Maybe (Val Integer)
  , _mediaLiveChannelHlsInputSettingsRetryInterval :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelHlsInputSettings where
  toJSON MediaLiveChannelHlsInputSettings{..} =
    object $
    catMaybes
    [ fmap (("Bandwidth",) . toJSON) _mediaLiveChannelHlsInputSettingsBandwidth
    , fmap (("BufferSegments",) . toJSON) _mediaLiveChannelHlsInputSettingsBufferSegments
    , fmap (("Retries",) . toJSON) _mediaLiveChannelHlsInputSettingsRetries
    , fmap (("RetryInterval",) . toJSON) _mediaLiveChannelHlsInputSettingsRetryInterval
    ]

-- | Constructor for 'MediaLiveChannelHlsInputSettings' containing required
-- fields as arguments.
mediaLiveChannelHlsInputSettings
  :: MediaLiveChannelHlsInputSettings
mediaLiveChannelHlsInputSettings  =
  MediaLiveChannelHlsInputSettings
  { _mediaLiveChannelHlsInputSettingsBandwidth = Nothing
  , _mediaLiveChannelHlsInputSettingsBufferSegments = Nothing
  , _mediaLiveChannelHlsInputSettingsRetries = Nothing
  , _mediaLiveChannelHlsInputSettingsRetryInterval = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-bandwidth
mlchisBandwidth :: Lens' MediaLiveChannelHlsInputSettings (Maybe (Val Integer))
mlchisBandwidth = lens _mediaLiveChannelHlsInputSettingsBandwidth (\s a -> s { _mediaLiveChannelHlsInputSettingsBandwidth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-buffersegments
mlchisBufferSegments :: Lens' MediaLiveChannelHlsInputSettings (Maybe (Val Integer))
mlchisBufferSegments = lens _mediaLiveChannelHlsInputSettingsBufferSegments (\s a -> s { _mediaLiveChannelHlsInputSettingsBufferSegments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-retries
mlchisRetries :: Lens' MediaLiveChannelHlsInputSettings (Maybe (Val Integer))
mlchisRetries = lens _mediaLiveChannelHlsInputSettingsRetries (\s a -> s { _mediaLiveChannelHlsInputSettingsRetries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-retryinterval
mlchisRetryInterval :: Lens' MediaLiveChannelHlsInputSettings (Maybe (Val Integer))
mlchisRetryInterval = lens _mediaLiveChannelHlsInputSettingsRetryInterval (\s a -> s { _mediaLiveChannelHlsInputSettingsRetryInterval = a })
