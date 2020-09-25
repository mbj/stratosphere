{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpoutputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelUdpOutputSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelFecOutputSettings
import Stratosphere.ResourceProperties.MediaLiveChannelOutputLocationRef
import Stratosphere.ResourceProperties.MediaLiveChannelUdpContainerSettings

-- | Full data type definition for MediaLiveChannelUdpOutputSettings. See
-- 'mediaLiveChannelUdpOutputSettings' for a more convenient constructor.
data MediaLiveChannelUdpOutputSettings =
  MediaLiveChannelUdpOutputSettings
  { _mediaLiveChannelUdpOutputSettingsBufferMsec :: Maybe (Val Integer)
  , _mediaLiveChannelUdpOutputSettingsContainerSettings :: Maybe MediaLiveChannelUdpContainerSettings
  , _mediaLiveChannelUdpOutputSettingsDestination :: Maybe MediaLiveChannelOutputLocationRef
  , _mediaLiveChannelUdpOutputSettingsFecOutputSettings :: Maybe MediaLiveChannelFecOutputSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelUdpOutputSettings where
  toJSON MediaLiveChannelUdpOutputSettings{..} =
    object $
    catMaybes
    [ fmap (("BufferMsec",) . toJSON) _mediaLiveChannelUdpOutputSettingsBufferMsec
    , fmap (("ContainerSettings",) . toJSON) _mediaLiveChannelUdpOutputSettingsContainerSettings
    , fmap (("Destination",) . toJSON) _mediaLiveChannelUdpOutputSettingsDestination
    , fmap (("FecOutputSettings",) . toJSON) _mediaLiveChannelUdpOutputSettingsFecOutputSettings
    ]

-- | Constructor for 'MediaLiveChannelUdpOutputSettings' containing required
-- fields as arguments.
mediaLiveChannelUdpOutputSettings
  :: MediaLiveChannelUdpOutputSettings
mediaLiveChannelUdpOutputSettings  =
  MediaLiveChannelUdpOutputSettings
  { _mediaLiveChannelUdpOutputSettingsBufferMsec = Nothing
  , _mediaLiveChannelUdpOutputSettingsContainerSettings = Nothing
  , _mediaLiveChannelUdpOutputSettingsDestination = Nothing
  , _mediaLiveChannelUdpOutputSettingsFecOutputSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpoutputsettings.html#cfn-medialive-channel-udpoutputsettings-buffermsec
mlcuosBufferMsec :: Lens' MediaLiveChannelUdpOutputSettings (Maybe (Val Integer))
mlcuosBufferMsec = lens _mediaLiveChannelUdpOutputSettingsBufferMsec (\s a -> s { _mediaLiveChannelUdpOutputSettingsBufferMsec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpoutputsettings.html#cfn-medialive-channel-udpoutputsettings-containersettings
mlcuosContainerSettings :: Lens' MediaLiveChannelUdpOutputSettings (Maybe MediaLiveChannelUdpContainerSettings)
mlcuosContainerSettings = lens _mediaLiveChannelUdpOutputSettingsContainerSettings (\s a -> s { _mediaLiveChannelUdpOutputSettingsContainerSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpoutputsettings.html#cfn-medialive-channel-udpoutputsettings-destination
mlcuosDestination :: Lens' MediaLiveChannelUdpOutputSettings (Maybe MediaLiveChannelOutputLocationRef)
mlcuosDestination = lens _mediaLiveChannelUdpOutputSettingsDestination (\s a -> s { _mediaLiveChannelUdpOutputSettingsDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpoutputsettings.html#cfn-medialive-channel-udpoutputsettings-fecoutputsettings
mlcuosFecOutputSettings :: Lens' MediaLiveChannelUdpOutputSettings (Maybe MediaLiveChannelFecOutputSettings)
mlcuosFecOutputSettings = lens _mediaLiveChannelUdpOutputSettingsFecOutputSettings (\s a -> s { _mediaLiveChannelUdpOutputSettingsFecOutputSettings = a })
