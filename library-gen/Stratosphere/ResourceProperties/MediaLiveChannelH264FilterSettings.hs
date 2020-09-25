{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264filtersettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelH264FilterSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelTemporalFilterSettings

-- | Full data type definition for MediaLiveChannelH264FilterSettings. See
-- 'mediaLiveChannelH264FilterSettings' for a more convenient constructor.
data MediaLiveChannelH264FilterSettings =
  MediaLiveChannelH264FilterSettings
  { _mediaLiveChannelH264FilterSettingsTemporalFilterSettings :: Maybe MediaLiveChannelTemporalFilterSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelH264FilterSettings where
  toJSON MediaLiveChannelH264FilterSettings{..} =
    object $
    catMaybes
    [ fmap (("TemporalFilterSettings",) . toJSON) _mediaLiveChannelH264FilterSettingsTemporalFilterSettings
    ]

-- | Constructor for 'MediaLiveChannelH264FilterSettings' containing required
-- fields as arguments.
mediaLiveChannelH264FilterSettings
  :: MediaLiveChannelH264FilterSettings
mediaLiveChannelH264FilterSettings  =
  MediaLiveChannelH264FilterSettings
  { _mediaLiveChannelH264FilterSettingsTemporalFilterSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264filtersettings.html#cfn-medialive-channel-h264filtersettings-temporalfiltersettings
mlchfsTemporalFilterSettings :: Lens' MediaLiveChannelH264FilterSettings (Maybe MediaLiveChannelTemporalFilterSettings)
mlchfsTemporalFilterSettings = lens _mediaLiveChannelH264FilterSettingsTemporalFilterSettings (\s a -> s { _mediaLiveChannelH264FilterSettingsTemporalFilterSettings = a })
