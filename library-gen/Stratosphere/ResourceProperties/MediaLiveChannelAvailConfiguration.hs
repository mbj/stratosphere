{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availconfiguration.html

module Stratosphere.ResourceProperties.MediaLiveChannelAvailConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAvailSettings

-- | Full data type definition for MediaLiveChannelAvailConfiguration. See
-- 'mediaLiveChannelAvailConfiguration' for a more convenient constructor.
data MediaLiveChannelAvailConfiguration =
  MediaLiveChannelAvailConfiguration
  { _mediaLiveChannelAvailConfigurationAvailSettings :: Maybe MediaLiveChannelAvailSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAvailConfiguration where
  toJSON MediaLiveChannelAvailConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AvailSettings",) . toJSON) _mediaLiveChannelAvailConfigurationAvailSettings
    ]

-- | Constructor for 'MediaLiveChannelAvailConfiguration' containing required
-- fields as arguments.
mediaLiveChannelAvailConfiguration
  :: MediaLiveChannelAvailConfiguration
mediaLiveChannelAvailConfiguration  =
  MediaLiveChannelAvailConfiguration
  { _mediaLiveChannelAvailConfigurationAvailSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availconfiguration.html#cfn-medialive-channel-availconfiguration-availsettings
mlcacAvailSettings :: Lens' MediaLiveChannelAvailConfiguration (Maybe MediaLiveChannelAvailSettings)
mlcacAvailSettings = lens _mediaLiveChannelAvailConfigurationAvailSettings (\s a -> s { _mediaLiveChannelAvailConfigurationAvailSettings = a })
