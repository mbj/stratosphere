
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiopidselection.html

module Stratosphere.ResourceProperties.MediaLiveChannelAudioPidSelection where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelAudioPidSelection. See
-- 'mediaLiveChannelAudioPidSelection' for a more convenient constructor.
data MediaLiveChannelAudioPidSelection =
  MediaLiveChannelAudioPidSelection
  { _mediaLiveChannelAudioPidSelectionPid :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelAudioPidSelection where
  toJSON MediaLiveChannelAudioPidSelection{..} =
    object $
    catMaybes
    [ fmap (("Pid",) . toJSON) _mediaLiveChannelAudioPidSelectionPid
    ]

-- | Constructor for 'MediaLiveChannelAudioPidSelection' containing required
-- fields as arguments.
mediaLiveChannelAudioPidSelection
  :: MediaLiveChannelAudioPidSelection
mediaLiveChannelAudioPidSelection  =
  MediaLiveChannelAudioPidSelection
  { _mediaLiveChannelAudioPidSelectionPid = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiopidselection.html#cfn-medialive-channel-audiopidselection-pid
mlcapsPid :: Lens' MediaLiveChannelAudioPidSelection (Maybe (Val Integer))
mlcapsPid = lens _mediaLiveChannelAudioPidSelectionPid (\s a -> s { _mediaLiveChannelAudioPidSelectionPid = a })
