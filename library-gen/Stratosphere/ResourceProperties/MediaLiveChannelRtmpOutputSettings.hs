{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpoutputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelRtmpOutputSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelOutputLocationRef

-- | Full data type definition for MediaLiveChannelRtmpOutputSettings. See
-- 'mediaLiveChannelRtmpOutputSettings' for a more convenient constructor.
data MediaLiveChannelRtmpOutputSettings =
  MediaLiveChannelRtmpOutputSettings
  { _mediaLiveChannelRtmpOutputSettingsCertificateMode :: Maybe (Val Text)
  , _mediaLiveChannelRtmpOutputSettingsConnectionRetryInterval :: Maybe (Val Integer)
  , _mediaLiveChannelRtmpOutputSettingsDestination :: Maybe MediaLiveChannelOutputLocationRef
  , _mediaLiveChannelRtmpOutputSettingsNumRetries :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelRtmpOutputSettings where
  toJSON MediaLiveChannelRtmpOutputSettings{..} =
    object $
    catMaybes
    [ fmap (("CertificateMode",) . toJSON) _mediaLiveChannelRtmpOutputSettingsCertificateMode
    , fmap (("ConnectionRetryInterval",) . toJSON) _mediaLiveChannelRtmpOutputSettingsConnectionRetryInterval
    , fmap (("Destination",) . toJSON) _mediaLiveChannelRtmpOutputSettingsDestination
    , fmap (("NumRetries",) . toJSON) _mediaLiveChannelRtmpOutputSettingsNumRetries
    ]

-- | Constructor for 'MediaLiveChannelRtmpOutputSettings' containing required
-- fields as arguments.
mediaLiveChannelRtmpOutputSettings
  :: MediaLiveChannelRtmpOutputSettings
mediaLiveChannelRtmpOutputSettings  =
  MediaLiveChannelRtmpOutputSettings
  { _mediaLiveChannelRtmpOutputSettingsCertificateMode = Nothing
  , _mediaLiveChannelRtmpOutputSettingsConnectionRetryInterval = Nothing
  , _mediaLiveChannelRtmpOutputSettingsDestination = Nothing
  , _mediaLiveChannelRtmpOutputSettingsNumRetries = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpoutputsettings.html#cfn-medialive-channel-rtmpoutputsettings-certificatemode
mlcrosCertificateMode :: Lens' MediaLiveChannelRtmpOutputSettings (Maybe (Val Text))
mlcrosCertificateMode = lens _mediaLiveChannelRtmpOutputSettingsCertificateMode (\s a -> s { _mediaLiveChannelRtmpOutputSettingsCertificateMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpoutputsettings.html#cfn-medialive-channel-rtmpoutputsettings-connectionretryinterval
mlcrosConnectionRetryInterval :: Lens' MediaLiveChannelRtmpOutputSettings (Maybe (Val Integer))
mlcrosConnectionRetryInterval = lens _mediaLiveChannelRtmpOutputSettingsConnectionRetryInterval (\s a -> s { _mediaLiveChannelRtmpOutputSettingsConnectionRetryInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpoutputsettings.html#cfn-medialive-channel-rtmpoutputsettings-destination
mlcrosDestination :: Lens' MediaLiveChannelRtmpOutputSettings (Maybe MediaLiveChannelOutputLocationRef)
mlcrosDestination = lens _mediaLiveChannelRtmpOutputSettingsDestination (\s a -> s { _mediaLiveChannelRtmpOutputSettingsDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpoutputsettings.html#cfn-medialive-channel-rtmpoutputsettings-numretries
mlcrosNumRetries :: Lens' MediaLiveChannelRtmpOutputSettings (Maybe (Val Integer))
mlcrosNumRetries = lens _mediaLiveChannelRtmpOutputSettingsNumRetries (\s a -> s { _mediaLiveChannelRtmpOutputSettingsNumRetries = a })
