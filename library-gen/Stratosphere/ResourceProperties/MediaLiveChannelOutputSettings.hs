{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelOutputSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelArchiveOutputSettings
import Stratosphere.ResourceProperties.MediaLiveChannelFrameCaptureOutputSettings
import Stratosphere.ResourceProperties.MediaLiveChannelHlsOutputSettings
import Stratosphere.ResourceProperties.MediaLiveChannelMediaPackageOutputSettings
import Stratosphere.ResourceProperties.MediaLiveChannelMsSmoothOutputSettings
import Stratosphere.ResourceProperties.MediaLiveChannelMultiplexOutputSettings
import Stratosphere.ResourceProperties.MediaLiveChannelRtmpOutputSettings
import Stratosphere.ResourceProperties.MediaLiveChannelUdpOutputSettings

-- | Full data type definition for MediaLiveChannelOutputSettings. See
-- 'mediaLiveChannelOutputSettings' for a more convenient constructor.
data MediaLiveChannelOutputSettings =
  MediaLiveChannelOutputSettings
  { _mediaLiveChannelOutputSettingsArchiveOutputSettings :: Maybe MediaLiveChannelArchiveOutputSettings
  , _mediaLiveChannelOutputSettingsFrameCaptureOutputSettings :: Maybe MediaLiveChannelFrameCaptureOutputSettings
  , _mediaLiveChannelOutputSettingsHlsOutputSettings :: Maybe MediaLiveChannelHlsOutputSettings
  , _mediaLiveChannelOutputSettingsMediaPackageOutputSettings :: Maybe MediaLiveChannelMediaPackageOutputSettings
  , _mediaLiveChannelOutputSettingsMsSmoothOutputSettings :: Maybe MediaLiveChannelMsSmoothOutputSettings
  , _mediaLiveChannelOutputSettingsMultiplexOutputSettings :: Maybe MediaLiveChannelMultiplexOutputSettings
  , _mediaLiveChannelOutputSettingsRtmpOutputSettings :: Maybe MediaLiveChannelRtmpOutputSettings
  , _mediaLiveChannelOutputSettingsUdpOutputSettings :: Maybe MediaLiveChannelUdpOutputSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelOutputSettings where
  toJSON MediaLiveChannelOutputSettings{..} =
    object $
    catMaybes
    [ fmap (("ArchiveOutputSettings",) . toJSON) _mediaLiveChannelOutputSettingsArchiveOutputSettings
    , fmap (("FrameCaptureOutputSettings",) . toJSON) _mediaLiveChannelOutputSettingsFrameCaptureOutputSettings
    , fmap (("HlsOutputSettings",) . toJSON) _mediaLiveChannelOutputSettingsHlsOutputSettings
    , fmap (("MediaPackageOutputSettings",) . toJSON) _mediaLiveChannelOutputSettingsMediaPackageOutputSettings
    , fmap (("MsSmoothOutputSettings",) . toJSON) _mediaLiveChannelOutputSettingsMsSmoothOutputSettings
    , fmap (("MultiplexOutputSettings",) . toJSON) _mediaLiveChannelOutputSettingsMultiplexOutputSettings
    , fmap (("RtmpOutputSettings",) . toJSON) _mediaLiveChannelOutputSettingsRtmpOutputSettings
    , fmap (("UdpOutputSettings",) . toJSON) _mediaLiveChannelOutputSettingsUdpOutputSettings
    ]

-- | Constructor for 'MediaLiveChannelOutputSettings' containing required
-- fields as arguments.
mediaLiveChannelOutputSettings
  :: MediaLiveChannelOutputSettings
mediaLiveChannelOutputSettings  =
  MediaLiveChannelOutputSettings
  { _mediaLiveChannelOutputSettingsArchiveOutputSettings = Nothing
  , _mediaLiveChannelOutputSettingsFrameCaptureOutputSettings = Nothing
  , _mediaLiveChannelOutputSettingsHlsOutputSettings = Nothing
  , _mediaLiveChannelOutputSettingsMediaPackageOutputSettings = Nothing
  , _mediaLiveChannelOutputSettingsMsSmoothOutputSettings = Nothing
  , _mediaLiveChannelOutputSettingsMultiplexOutputSettings = Nothing
  , _mediaLiveChannelOutputSettingsRtmpOutputSettings = Nothing
  , _mediaLiveChannelOutputSettingsUdpOutputSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-archiveoutputsettings
mlcosArchiveOutputSettings :: Lens' MediaLiveChannelOutputSettings (Maybe MediaLiveChannelArchiveOutputSettings)
mlcosArchiveOutputSettings = lens _mediaLiveChannelOutputSettingsArchiveOutputSettings (\s a -> s { _mediaLiveChannelOutputSettingsArchiveOutputSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-framecaptureoutputsettings
mlcosFrameCaptureOutputSettings :: Lens' MediaLiveChannelOutputSettings (Maybe MediaLiveChannelFrameCaptureOutputSettings)
mlcosFrameCaptureOutputSettings = lens _mediaLiveChannelOutputSettingsFrameCaptureOutputSettings (\s a -> s { _mediaLiveChannelOutputSettingsFrameCaptureOutputSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-hlsoutputsettings
mlcosHlsOutputSettings :: Lens' MediaLiveChannelOutputSettings (Maybe MediaLiveChannelHlsOutputSettings)
mlcosHlsOutputSettings = lens _mediaLiveChannelOutputSettingsHlsOutputSettings (\s a -> s { _mediaLiveChannelOutputSettingsHlsOutputSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-mediapackageoutputsettings
mlcosMediaPackageOutputSettings :: Lens' MediaLiveChannelOutputSettings (Maybe MediaLiveChannelMediaPackageOutputSettings)
mlcosMediaPackageOutputSettings = lens _mediaLiveChannelOutputSettingsMediaPackageOutputSettings (\s a -> s { _mediaLiveChannelOutputSettingsMediaPackageOutputSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-mssmoothoutputsettings
mlcosMsSmoothOutputSettings :: Lens' MediaLiveChannelOutputSettings (Maybe MediaLiveChannelMsSmoothOutputSettings)
mlcosMsSmoothOutputSettings = lens _mediaLiveChannelOutputSettingsMsSmoothOutputSettings (\s a -> s { _mediaLiveChannelOutputSettingsMsSmoothOutputSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-multiplexoutputsettings
mlcosMultiplexOutputSettings :: Lens' MediaLiveChannelOutputSettings (Maybe MediaLiveChannelMultiplexOutputSettings)
mlcosMultiplexOutputSettings = lens _mediaLiveChannelOutputSettingsMultiplexOutputSettings (\s a -> s { _mediaLiveChannelOutputSettingsMultiplexOutputSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-rtmpoutputsettings
mlcosRtmpOutputSettings :: Lens' MediaLiveChannelOutputSettings (Maybe MediaLiveChannelRtmpOutputSettings)
mlcosRtmpOutputSettings = lens _mediaLiveChannelOutputSettingsRtmpOutputSettings (\s a -> s { _mediaLiveChannelOutputSettingsRtmpOutputSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-udpoutputsettings
mlcosUdpOutputSettings :: Lens' MediaLiveChannelOutputSettings (Maybe MediaLiveChannelUdpOutputSettings)
mlcosUdpOutputSettings = lens _mediaLiveChannelOutputSettingsUdpOutputSettings (\s a -> s { _mediaLiveChannelOutputSettingsUdpOutputSettings = a })
