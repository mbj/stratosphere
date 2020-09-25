{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-temporalfiltersettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelTemporalFilterSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelTemporalFilterSettings. See
-- 'mediaLiveChannelTemporalFilterSettings' for a more convenient
-- constructor.
data MediaLiveChannelTemporalFilterSettings =
  MediaLiveChannelTemporalFilterSettings
  { _mediaLiveChannelTemporalFilterSettingsPostFilterSharpening :: Maybe (Val Text)
  , _mediaLiveChannelTemporalFilterSettingsStrength :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelTemporalFilterSettings where
  toJSON MediaLiveChannelTemporalFilterSettings{..} =
    object $
    catMaybes
    [ fmap (("PostFilterSharpening",) . toJSON) _mediaLiveChannelTemporalFilterSettingsPostFilterSharpening
    , fmap (("Strength",) . toJSON) _mediaLiveChannelTemporalFilterSettingsStrength
    ]

-- | Constructor for 'MediaLiveChannelTemporalFilterSettings' containing
-- required fields as arguments.
mediaLiveChannelTemporalFilterSettings
  :: MediaLiveChannelTemporalFilterSettings
mediaLiveChannelTemporalFilterSettings  =
  MediaLiveChannelTemporalFilterSettings
  { _mediaLiveChannelTemporalFilterSettingsPostFilterSharpening = Nothing
  , _mediaLiveChannelTemporalFilterSettingsStrength = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-temporalfiltersettings.html#cfn-medialive-channel-temporalfiltersettings-postfiltersharpening
mlctfsPostFilterSharpening :: Lens' MediaLiveChannelTemporalFilterSettings (Maybe (Val Text))
mlctfsPostFilterSharpening = lens _mediaLiveChannelTemporalFilterSettingsPostFilterSharpening (\s a -> s { _mediaLiveChannelTemporalFilterSettingsPostFilterSharpening = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-temporalfiltersettings.html#cfn-medialive-channel-temporalfiltersettings-strength
mlctfsStrength :: Lens' MediaLiveChannelTemporalFilterSettings (Maybe (Val Text))
mlctfsStrength = lens _mediaLiveChannelTemporalFilterSettingsStrength (\s a -> s { _mediaLiveChannelTemporalFilterSettingsStrength = a })
