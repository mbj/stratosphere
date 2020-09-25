{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiotrack.html

module Stratosphere.ResourceProperties.MediaLiveChannelAudioTrack where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelAudioTrack. See
-- 'mediaLiveChannelAudioTrack' for a more convenient constructor.
data MediaLiveChannelAudioTrack =
  MediaLiveChannelAudioTrack
  { _mediaLiveChannelAudioTrackTrack :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAudioTrack where
  toJSON MediaLiveChannelAudioTrack{..} =
    object $
    catMaybes
    [ fmap (("Track",) . toJSON) _mediaLiveChannelAudioTrackTrack
    ]

-- | Constructor for 'MediaLiveChannelAudioTrack' containing required fields
-- as arguments.
mediaLiveChannelAudioTrack
  :: MediaLiveChannelAudioTrack
mediaLiveChannelAudioTrack  =
  MediaLiveChannelAudioTrack
  { _mediaLiveChannelAudioTrackTrack = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiotrack.html#cfn-medialive-channel-audiotrack-track
mlcatTrack :: Lens' MediaLiveChannelAudioTrack (Maybe (Val Integer))
mlcatTrack = lens _mediaLiveChannelAudioTrackTrack (\s a -> s { _mediaLiveChannelAudioTrackTrack = a })
