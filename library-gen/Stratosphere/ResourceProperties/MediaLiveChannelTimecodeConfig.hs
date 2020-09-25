{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-timecodeconfig.html

module Stratosphere.ResourceProperties.MediaLiveChannelTimecodeConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelTimecodeConfig. See
-- 'mediaLiveChannelTimecodeConfig' for a more convenient constructor.
data MediaLiveChannelTimecodeConfig =
  MediaLiveChannelTimecodeConfig
  { _mediaLiveChannelTimecodeConfigSource :: Maybe (Val Text)
  , _mediaLiveChannelTimecodeConfigSyncThreshold :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelTimecodeConfig where
  toJSON MediaLiveChannelTimecodeConfig{..} =
    object $
    catMaybes
    [ fmap (("Source",) . toJSON) _mediaLiveChannelTimecodeConfigSource
    , fmap (("SyncThreshold",) . toJSON) _mediaLiveChannelTimecodeConfigSyncThreshold
    ]

-- | Constructor for 'MediaLiveChannelTimecodeConfig' containing required
-- fields as arguments.
mediaLiveChannelTimecodeConfig
  :: MediaLiveChannelTimecodeConfig
mediaLiveChannelTimecodeConfig  =
  MediaLiveChannelTimecodeConfig
  { _mediaLiveChannelTimecodeConfigSource = Nothing
  , _mediaLiveChannelTimecodeConfigSyncThreshold = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-timecodeconfig.html#cfn-medialive-channel-timecodeconfig-source
mlctcSource :: Lens' MediaLiveChannelTimecodeConfig (Maybe (Val Text))
mlctcSource = lens _mediaLiveChannelTimecodeConfigSource (\s a -> s { _mediaLiveChannelTimecodeConfigSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-timecodeconfig.html#cfn-medialive-channel-timecodeconfig-syncthreshold
mlctcSyncThreshold :: Lens' MediaLiveChannelTimecodeConfig (Maybe (Val Integer))
mlctcSyncThreshold = lens _mediaLiveChannelTimecodeConfigSyncThreshold (\s a -> s { _mediaLiveChannelTimecodeConfigSyncThreshold = a })
