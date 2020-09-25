{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelAvailSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelScte35SpliceInsert
import Stratosphere.ResourceProperties.MediaLiveChannelScte35TimeSignalApos

-- | Full data type definition for MediaLiveChannelAvailSettings. See
-- 'mediaLiveChannelAvailSettings' for a more convenient constructor.
data MediaLiveChannelAvailSettings =
  MediaLiveChannelAvailSettings
  { _mediaLiveChannelAvailSettingsScte35SpliceInsert :: Maybe MediaLiveChannelScte35SpliceInsert
  , _mediaLiveChannelAvailSettingsScte35TimeSignalApos :: Maybe MediaLiveChannelScte35TimeSignalApos
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAvailSettings where
  toJSON MediaLiveChannelAvailSettings{..} =
    object $
    catMaybes
    [ fmap (("Scte35SpliceInsert",) . toJSON) _mediaLiveChannelAvailSettingsScte35SpliceInsert
    , fmap (("Scte35TimeSignalApos",) . toJSON) _mediaLiveChannelAvailSettingsScte35TimeSignalApos
    ]

-- | Constructor for 'MediaLiveChannelAvailSettings' containing required
-- fields as arguments.
mediaLiveChannelAvailSettings
  :: MediaLiveChannelAvailSettings
mediaLiveChannelAvailSettings  =
  MediaLiveChannelAvailSettings
  { _mediaLiveChannelAvailSettingsScte35SpliceInsert = Nothing
  , _mediaLiveChannelAvailSettingsScte35TimeSignalApos = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html#cfn-medialive-channel-availsettings-scte35spliceinsert
mlcasScte35SpliceInsert :: Lens' MediaLiveChannelAvailSettings (Maybe MediaLiveChannelScte35SpliceInsert)
mlcasScte35SpliceInsert = lens _mediaLiveChannelAvailSettingsScte35SpliceInsert (\s a -> s { _mediaLiveChannelAvailSettingsScte35SpliceInsert = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html#cfn-medialive-channel-availsettings-scte35timesignalapos
mlcasScte35TimeSignalApos :: Lens' MediaLiveChannelAvailSettings (Maybe MediaLiveChannelScte35TimeSignalApos)
mlcasScte35TimeSignalApos = lens _mediaLiveChannelAvailSettingsScte35TimeSignalApos (\s a -> s { _mediaLiveChannelAvailSettingsScte35TimeSignalApos = a })
