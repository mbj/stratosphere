{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-remixsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelRemixSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAudioChannelMapping

-- | Full data type definition for MediaLiveChannelRemixSettings. See
-- 'mediaLiveChannelRemixSettings' for a more convenient constructor.
data MediaLiveChannelRemixSettings =
  MediaLiveChannelRemixSettings
  { _mediaLiveChannelRemixSettingsChannelMappings :: Maybe [MediaLiveChannelAudioChannelMapping]
  , _mediaLiveChannelRemixSettingsChannelsIn :: Maybe (Val Integer)
  , _mediaLiveChannelRemixSettingsChannelsOut :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelRemixSettings where
  toJSON MediaLiveChannelRemixSettings{..} =
    object $
    catMaybes
    [ fmap (("ChannelMappings",) . toJSON) _mediaLiveChannelRemixSettingsChannelMappings
    , fmap (("ChannelsIn",) . toJSON) _mediaLiveChannelRemixSettingsChannelsIn
    , fmap (("ChannelsOut",) . toJSON) _mediaLiveChannelRemixSettingsChannelsOut
    ]

-- | Constructor for 'MediaLiveChannelRemixSettings' containing required
-- fields as arguments.
mediaLiveChannelRemixSettings
  :: MediaLiveChannelRemixSettings
mediaLiveChannelRemixSettings  =
  MediaLiveChannelRemixSettings
  { _mediaLiveChannelRemixSettingsChannelMappings = Nothing
  , _mediaLiveChannelRemixSettingsChannelsIn = Nothing
  , _mediaLiveChannelRemixSettingsChannelsOut = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-remixsettings.html#cfn-medialive-channel-remixsettings-channelmappings
mlcrsChannelMappings :: Lens' MediaLiveChannelRemixSettings (Maybe [MediaLiveChannelAudioChannelMapping])
mlcrsChannelMappings = lens _mediaLiveChannelRemixSettingsChannelMappings (\s a -> s { _mediaLiveChannelRemixSettingsChannelMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-remixsettings.html#cfn-medialive-channel-remixsettings-channelsin
mlcrsChannelsIn :: Lens' MediaLiveChannelRemixSettings (Maybe (Val Integer))
mlcrsChannelsIn = lens _mediaLiveChannelRemixSettingsChannelsIn (\s a -> s { _mediaLiveChannelRemixSettingsChannelsIn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-remixsettings.html#cfn-medialive-channel-remixsettings-channelsout
mlcrsChannelsOut :: Lens' MediaLiveChannelRemixSettings (Maybe (Val Integer))
mlcrsChannelsOut = lens _mediaLiveChannelRemixSettingsChannelsOut (\s a -> s { _mediaLiveChannelRemixSettingsChannelsOut = a })
