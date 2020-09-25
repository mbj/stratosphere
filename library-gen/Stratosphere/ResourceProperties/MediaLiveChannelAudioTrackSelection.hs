{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiotrackselection.html

module Stratosphere.ResourceProperties.MediaLiveChannelAudioTrackSelection where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAudioTrack

-- | Full data type definition for MediaLiveChannelAudioTrackSelection. See
-- 'mediaLiveChannelAudioTrackSelection' for a more convenient constructor.
data MediaLiveChannelAudioTrackSelection =
  MediaLiveChannelAudioTrackSelection
  { _mediaLiveChannelAudioTrackSelectionTracks :: Maybe [MediaLiveChannelAudioTrack]
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAudioTrackSelection where
  toJSON MediaLiveChannelAudioTrackSelection{..} =
    object $
    catMaybes
    [ fmap (("Tracks",) . toJSON) _mediaLiveChannelAudioTrackSelectionTracks
    ]

-- | Constructor for 'MediaLiveChannelAudioTrackSelection' containing required
-- fields as arguments.
mediaLiveChannelAudioTrackSelection
  :: MediaLiveChannelAudioTrackSelection
mediaLiveChannelAudioTrackSelection  =
  MediaLiveChannelAudioTrackSelection
  { _mediaLiveChannelAudioTrackSelectionTracks = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiotrackselection.html#cfn-medialive-channel-audiotrackselection-tracks
mlcatsTracks :: Lens' MediaLiveChannelAudioTrackSelection (Maybe [MediaLiveChannelAudioTrack])
mlcatsTracks = lens _mediaLiveChannelAudioTrackSelectionTracks (\s a -> s { _mediaLiveChannelAudioTrackSelectionTracks = a })
