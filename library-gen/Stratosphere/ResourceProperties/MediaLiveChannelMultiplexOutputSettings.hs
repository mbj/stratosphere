{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexoutputsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelMultiplexOutputSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelOutputLocationRef

-- | Full data type definition for MediaLiveChannelMultiplexOutputSettings.
-- See 'mediaLiveChannelMultiplexOutputSettings' for a more convenient
-- constructor.
data MediaLiveChannelMultiplexOutputSettings =
  MediaLiveChannelMultiplexOutputSettings
  { _mediaLiveChannelMultiplexOutputSettingsDestination :: Maybe MediaLiveChannelOutputLocationRef
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelMultiplexOutputSettings where
  toJSON MediaLiveChannelMultiplexOutputSettings{..} =
    object $
    catMaybes
    [ fmap (("Destination",) . toJSON) _mediaLiveChannelMultiplexOutputSettingsDestination
    ]

-- | Constructor for 'MediaLiveChannelMultiplexOutputSettings' containing
-- required fields as arguments.
mediaLiveChannelMultiplexOutputSettings
  :: MediaLiveChannelMultiplexOutputSettings
mediaLiveChannelMultiplexOutputSettings  =
  MediaLiveChannelMultiplexOutputSettings
  { _mediaLiveChannelMultiplexOutputSettingsDestination = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexoutputsettings.html#cfn-medialive-channel-multiplexoutputsettings-destination
mlcmosDestination :: Lens' MediaLiveChannelMultiplexOutputSettings (Maybe MediaLiveChannelOutputLocationRef)
mlcmosDestination = lens _mediaLiveChannelMultiplexOutputSettingsDestination (\s a -> s { _mediaLiveChannelMultiplexOutputSettingsDestination = a })
