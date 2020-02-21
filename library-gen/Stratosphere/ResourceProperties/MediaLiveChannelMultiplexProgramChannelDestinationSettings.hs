{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexprogramchanneldestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelMultiplexProgramChannelDestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- MediaLiveChannelMultiplexProgramChannelDestinationSettings. See
-- 'mediaLiveChannelMultiplexProgramChannelDestinationSettings' for a more
-- convenient constructor.
data MediaLiveChannelMultiplexProgramChannelDestinationSettings =
  MediaLiveChannelMultiplexProgramChannelDestinationSettings
  { _mediaLiveChannelMultiplexProgramChannelDestinationSettingsMultiplexId :: Maybe (Val Text)
  , _mediaLiveChannelMultiplexProgramChannelDestinationSettingsProgramName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelMultiplexProgramChannelDestinationSettings where
  toJSON MediaLiveChannelMultiplexProgramChannelDestinationSettings{..} =
    object $
    catMaybes
    [ fmap (("MultiplexId",) . toJSON) _mediaLiveChannelMultiplexProgramChannelDestinationSettingsMultiplexId
    , fmap (("ProgramName",) . toJSON) _mediaLiveChannelMultiplexProgramChannelDestinationSettingsProgramName
    ]

-- | Constructor for
-- 'MediaLiveChannelMultiplexProgramChannelDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelMultiplexProgramChannelDestinationSettings
  :: MediaLiveChannelMultiplexProgramChannelDestinationSettings
mediaLiveChannelMultiplexProgramChannelDestinationSettings  =
  MediaLiveChannelMultiplexProgramChannelDestinationSettings
  { _mediaLiveChannelMultiplexProgramChannelDestinationSettingsMultiplexId = Nothing
  , _mediaLiveChannelMultiplexProgramChannelDestinationSettingsProgramName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexprogramchanneldestinationsettings.html#cfn-medialive-channel-multiplexprogramchanneldestinationsettings-multiplexid
mlcmpcdsMultiplexId :: Lens' MediaLiveChannelMultiplexProgramChannelDestinationSettings (Maybe (Val Text))
mlcmpcdsMultiplexId = lens _mediaLiveChannelMultiplexProgramChannelDestinationSettingsMultiplexId (\s a -> s { _mediaLiveChannelMultiplexProgramChannelDestinationSettingsMultiplexId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-multiplexprogramchanneldestinationsettings.html#cfn-medialive-channel-multiplexprogramchanneldestinationsettings-programname
mlcmpcdsProgramName :: Lens' MediaLiveChannelMultiplexProgramChannelDestinationSettings (Maybe (Val Text))
mlcmpcdsProgramName = lens _mediaLiveChannelMultiplexProgramChannelDestinationSettingsProgramName (\s a -> s { _mediaLiveChannelMultiplexProgramChannelDestinationSettingsProgramName = a })
