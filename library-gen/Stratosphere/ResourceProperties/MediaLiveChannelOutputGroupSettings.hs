{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelOutputGroupSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelArchiveGroupSettings
import Stratosphere.ResourceProperties.MediaLiveChannelFrameCaptureGroupSettings
import Stratosphere.ResourceProperties.MediaLiveChannelHlsGroupSettings
import Stratosphere.ResourceProperties.MediaLiveChannelMediaPackageGroupSettings
import Stratosphere.ResourceProperties.MediaLiveChannelMsSmoothGroupSettings
import Stratosphere.ResourceProperties.MediaLiveChannelMultiplexGroupSettings
import Stratosphere.ResourceProperties.MediaLiveChannelRtmpGroupSettings
import Stratosphere.ResourceProperties.MediaLiveChannelUdpGroupSettings

-- | Full data type definition for MediaLiveChannelOutputGroupSettings. See
-- 'mediaLiveChannelOutputGroupSettings' for a more convenient constructor.
data MediaLiveChannelOutputGroupSettings =
  MediaLiveChannelOutputGroupSettings
  { _mediaLiveChannelOutputGroupSettingsArchiveGroupSettings :: Maybe MediaLiveChannelArchiveGroupSettings
  , _mediaLiveChannelOutputGroupSettingsFrameCaptureGroupSettings :: Maybe MediaLiveChannelFrameCaptureGroupSettings
  , _mediaLiveChannelOutputGroupSettingsHlsGroupSettings :: Maybe MediaLiveChannelHlsGroupSettings
  , _mediaLiveChannelOutputGroupSettingsMediaPackageGroupSettings :: Maybe MediaLiveChannelMediaPackageGroupSettings
  , _mediaLiveChannelOutputGroupSettingsMsSmoothGroupSettings :: Maybe MediaLiveChannelMsSmoothGroupSettings
  , _mediaLiveChannelOutputGroupSettingsMultiplexGroupSettings :: Maybe MediaLiveChannelMultiplexGroupSettings
  , _mediaLiveChannelOutputGroupSettingsRtmpGroupSettings :: Maybe MediaLiveChannelRtmpGroupSettings
  , _mediaLiveChannelOutputGroupSettingsUdpGroupSettings :: Maybe MediaLiveChannelUdpGroupSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelOutputGroupSettings where
  toJSON MediaLiveChannelOutputGroupSettings{..} =
    object $
    catMaybes
    [ fmap (("ArchiveGroupSettings",) . toJSON) _mediaLiveChannelOutputGroupSettingsArchiveGroupSettings
    , fmap (("FrameCaptureGroupSettings",) . toJSON) _mediaLiveChannelOutputGroupSettingsFrameCaptureGroupSettings
    , fmap (("HlsGroupSettings",) . toJSON) _mediaLiveChannelOutputGroupSettingsHlsGroupSettings
    , fmap (("MediaPackageGroupSettings",) . toJSON) _mediaLiveChannelOutputGroupSettingsMediaPackageGroupSettings
    , fmap (("MsSmoothGroupSettings",) . toJSON) _mediaLiveChannelOutputGroupSettingsMsSmoothGroupSettings
    , fmap (("MultiplexGroupSettings",) . toJSON) _mediaLiveChannelOutputGroupSettingsMultiplexGroupSettings
    , fmap (("RtmpGroupSettings",) . toJSON) _mediaLiveChannelOutputGroupSettingsRtmpGroupSettings
    , fmap (("UdpGroupSettings",) . toJSON) _mediaLiveChannelOutputGroupSettingsUdpGroupSettings
    ]

-- | Constructor for 'MediaLiveChannelOutputGroupSettings' containing required
-- fields as arguments.
mediaLiveChannelOutputGroupSettings
  :: MediaLiveChannelOutputGroupSettings
mediaLiveChannelOutputGroupSettings  =
  MediaLiveChannelOutputGroupSettings
  { _mediaLiveChannelOutputGroupSettingsArchiveGroupSettings = Nothing
  , _mediaLiveChannelOutputGroupSettingsFrameCaptureGroupSettings = Nothing
  , _mediaLiveChannelOutputGroupSettingsHlsGroupSettings = Nothing
  , _mediaLiveChannelOutputGroupSettingsMediaPackageGroupSettings = Nothing
  , _mediaLiveChannelOutputGroupSettingsMsSmoothGroupSettings = Nothing
  , _mediaLiveChannelOutputGroupSettingsMultiplexGroupSettings = Nothing
  , _mediaLiveChannelOutputGroupSettingsRtmpGroupSettings = Nothing
  , _mediaLiveChannelOutputGroupSettingsUdpGroupSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-archivegroupsettings
mlcogsArchiveGroupSettings :: Lens' MediaLiveChannelOutputGroupSettings (Maybe MediaLiveChannelArchiveGroupSettings)
mlcogsArchiveGroupSettings = lens _mediaLiveChannelOutputGroupSettingsArchiveGroupSettings (\s a -> s { _mediaLiveChannelOutputGroupSettingsArchiveGroupSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-framecapturegroupsettings
mlcogsFrameCaptureGroupSettings :: Lens' MediaLiveChannelOutputGroupSettings (Maybe MediaLiveChannelFrameCaptureGroupSettings)
mlcogsFrameCaptureGroupSettings = lens _mediaLiveChannelOutputGroupSettingsFrameCaptureGroupSettings (\s a -> s { _mediaLiveChannelOutputGroupSettingsFrameCaptureGroupSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-hlsgroupsettings
mlcogsHlsGroupSettings :: Lens' MediaLiveChannelOutputGroupSettings (Maybe MediaLiveChannelHlsGroupSettings)
mlcogsHlsGroupSettings = lens _mediaLiveChannelOutputGroupSettingsHlsGroupSettings (\s a -> s { _mediaLiveChannelOutputGroupSettingsHlsGroupSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-mediapackagegroupsettings
mlcogsMediaPackageGroupSettings :: Lens' MediaLiveChannelOutputGroupSettings (Maybe MediaLiveChannelMediaPackageGroupSettings)
mlcogsMediaPackageGroupSettings = lens _mediaLiveChannelOutputGroupSettingsMediaPackageGroupSettings (\s a -> s { _mediaLiveChannelOutputGroupSettingsMediaPackageGroupSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-mssmoothgroupsettings
mlcogsMsSmoothGroupSettings :: Lens' MediaLiveChannelOutputGroupSettings (Maybe MediaLiveChannelMsSmoothGroupSettings)
mlcogsMsSmoothGroupSettings = lens _mediaLiveChannelOutputGroupSettingsMsSmoothGroupSettings (\s a -> s { _mediaLiveChannelOutputGroupSettingsMsSmoothGroupSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-multiplexgroupsettings
mlcogsMultiplexGroupSettings :: Lens' MediaLiveChannelOutputGroupSettings (Maybe MediaLiveChannelMultiplexGroupSettings)
mlcogsMultiplexGroupSettings = lens _mediaLiveChannelOutputGroupSettingsMultiplexGroupSettings (\s a -> s { _mediaLiveChannelOutputGroupSettingsMultiplexGroupSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-rtmpgroupsettings
mlcogsRtmpGroupSettings :: Lens' MediaLiveChannelOutputGroupSettings (Maybe MediaLiveChannelRtmpGroupSettings)
mlcogsRtmpGroupSettings = lens _mediaLiveChannelOutputGroupSettingsRtmpGroupSettings (\s a -> s { _mediaLiveChannelOutputGroupSettingsRtmpGroupSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-udpgroupsettings
mlcogsUdpGroupSettings :: Lens' MediaLiveChannelOutputGroupSettings (Maybe MediaLiveChannelUdpGroupSettings)
mlcogsUdpGroupSettings = lens _mediaLiveChannelOutputGroupSettingsUdpGroupSettings (\s a -> s { _mediaLiveChannelOutputGroupSettingsUdpGroupSettings = a })
