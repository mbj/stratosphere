{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpgroupsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelUdpGroupSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelUdpGroupSettings. See
-- 'mediaLiveChannelUdpGroupSettings' for a more convenient constructor.
data MediaLiveChannelUdpGroupSettings =
  MediaLiveChannelUdpGroupSettings
  { _mediaLiveChannelUdpGroupSettingsInputLossAction :: Maybe (Val Text)
  , _mediaLiveChannelUdpGroupSettingsTimedMetadataId3Frame :: Maybe (Val Text)
  , _mediaLiveChannelUdpGroupSettingsTimedMetadataId3Period :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelUdpGroupSettings where
  toJSON MediaLiveChannelUdpGroupSettings{..} =
    object $
    catMaybes
    [ fmap (("InputLossAction",) . toJSON) _mediaLiveChannelUdpGroupSettingsInputLossAction
    , fmap (("TimedMetadataId3Frame",) . toJSON) _mediaLiveChannelUdpGroupSettingsTimedMetadataId3Frame
    , fmap (("TimedMetadataId3Period",) . toJSON) _mediaLiveChannelUdpGroupSettingsTimedMetadataId3Period
    ]

-- | Constructor for 'MediaLiveChannelUdpGroupSettings' containing required
-- fields as arguments.
mediaLiveChannelUdpGroupSettings
  :: MediaLiveChannelUdpGroupSettings
mediaLiveChannelUdpGroupSettings  =
  MediaLiveChannelUdpGroupSettings
  { _mediaLiveChannelUdpGroupSettingsInputLossAction = Nothing
  , _mediaLiveChannelUdpGroupSettingsTimedMetadataId3Frame = Nothing
  , _mediaLiveChannelUdpGroupSettingsTimedMetadataId3Period = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpgroupsettings.html#cfn-medialive-channel-udpgroupsettings-inputlossaction
mlcugsInputLossAction :: Lens' MediaLiveChannelUdpGroupSettings (Maybe (Val Text))
mlcugsInputLossAction = lens _mediaLiveChannelUdpGroupSettingsInputLossAction (\s a -> s { _mediaLiveChannelUdpGroupSettingsInputLossAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpgroupsettings.html#cfn-medialive-channel-udpgroupsettings-timedmetadataid3frame
mlcugsTimedMetadataId3Frame :: Lens' MediaLiveChannelUdpGroupSettings (Maybe (Val Text))
mlcugsTimedMetadataId3Frame = lens _mediaLiveChannelUdpGroupSettingsTimedMetadataId3Frame (\s a -> s { _mediaLiveChannelUdpGroupSettingsTimedMetadataId3Frame = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpgroupsettings.html#cfn-medialive-channel-udpgroupsettings-timedmetadataid3period
mlcugsTimedMetadataId3Period :: Lens' MediaLiveChannelUdpGroupSettings (Maybe (Val Integer))
mlcugsTimedMetadataId3Period = lens _mediaLiveChannelUdpGroupSettingsTimedMetadataId3Period (\s a -> s { _mediaLiveChannelUdpGroupSettingsTimedMetadataId3Period = a })
