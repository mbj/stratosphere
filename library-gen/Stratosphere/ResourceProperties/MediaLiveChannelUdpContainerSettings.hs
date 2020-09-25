{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpcontainersettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelUdpContainerSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelM2tsSettings

-- | Full data type definition for MediaLiveChannelUdpContainerSettings. See
-- 'mediaLiveChannelUdpContainerSettings' for a more convenient constructor.
data MediaLiveChannelUdpContainerSettings =
  MediaLiveChannelUdpContainerSettings
  { _mediaLiveChannelUdpContainerSettingsM2tsSettings :: Maybe MediaLiveChannelM2tsSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelUdpContainerSettings where
  toJSON MediaLiveChannelUdpContainerSettings{..} =
    object $
    catMaybes
    [ fmap (("M2tsSettings",) . toJSON) _mediaLiveChannelUdpContainerSettingsM2tsSettings
    ]

-- | Constructor for 'MediaLiveChannelUdpContainerSettings' containing
-- required fields as arguments.
mediaLiveChannelUdpContainerSettings
  :: MediaLiveChannelUdpContainerSettings
mediaLiveChannelUdpContainerSettings  =
  MediaLiveChannelUdpContainerSettings
  { _mediaLiveChannelUdpContainerSettingsM2tsSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpcontainersettings.html#cfn-medialive-channel-udpcontainersettings-m2tssettings
mlcucsM2tsSettings :: Lens' MediaLiveChannelUdpContainerSettings (Maybe MediaLiveChannelM2tsSettings)
mlcucsM2tsSettings = lens _mediaLiveChannelUdpContainerSettingsM2tsSettings (\s a -> s { _mediaLiveChannelUdpContainerSettingsM2tsSettings = a })
