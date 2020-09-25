{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ttmldestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelTtmlDestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelTtmlDestinationSettings.
-- See 'mediaLiveChannelTtmlDestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelTtmlDestinationSettings =
  MediaLiveChannelTtmlDestinationSettings
  { _mediaLiveChannelTtmlDestinationSettingsStyleControl :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelTtmlDestinationSettings where
  toJSON MediaLiveChannelTtmlDestinationSettings{..} =
    object $
    catMaybes
    [ fmap (("StyleControl",) . toJSON) _mediaLiveChannelTtmlDestinationSettingsStyleControl
    ]

-- | Constructor for 'MediaLiveChannelTtmlDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelTtmlDestinationSettings
  :: MediaLiveChannelTtmlDestinationSettings
mediaLiveChannelTtmlDestinationSettings  =
  MediaLiveChannelTtmlDestinationSettings
  { _mediaLiveChannelTtmlDestinationSettingsStyleControl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ttmldestinationsettings.html#cfn-medialive-channel-ttmldestinationsettings-stylecontrol
mlctdsStyleControl :: Lens' MediaLiveChannelTtmlDestinationSettings (Maybe (Val Text))
mlctdsStyleControl = lens _mediaLiveChannelTtmlDestinationSettingsStyleControl (\s a -> s { _mediaLiveChannelTtmlDestinationSettingsStyleControl = a })
