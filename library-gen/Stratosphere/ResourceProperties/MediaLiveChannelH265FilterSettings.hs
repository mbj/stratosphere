{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265filtersettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelH265FilterSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelTemporalFilterSettings

-- | Full data type definition for MediaLiveChannelH265FilterSettings. See
-- 'mediaLiveChannelH265FilterSettings' for a more convenient constructor.
data MediaLiveChannelH265FilterSettings =
  MediaLiveChannelH265FilterSettings
  { _mediaLiveChannelH265FilterSettingsTemporalFilterSettings :: Maybe MediaLiveChannelTemporalFilterSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelH265FilterSettings where
  toJSON MediaLiveChannelH265FilterSettings{..} =
    object $
    catMaybes
    [ fmap (("TemporalFilterSettings",) . toJSON) _mediaLiveChannelH265FilterSettingsTemporalFilterSettings
    ]

-- | Constructor for 'MediaLiveChannelH265FilterSettings' containing required
-- fields as arguments.
mediaLiveChannelH265FilterSettings
  :: MediaLiveChannelH265FilterSettings
mediaLiveChannelH265FilterSettings  =
  MediaLiveChannelH265FilterSettings
  { _mediaLiveChannelH265FilterSettingsTemporalFilterSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265filtersettings.html#cfn-medialive-channel-h265filtersettings-temporalfiltersettings
mlchfsTemporalFilterSettings :: Lens' MediaLiveChannelH265FilterSettings (Maybe MediaLiveChannelTemporalFilterSettings)
mlchfsTemporalFilterSettings = lens _mediaLiveChannelH265FilterSettingsTemporalFilterSettings (\s a -> s { _mediaLiveChannelH265FilterSettingsTemporalFilterSettings = a })
