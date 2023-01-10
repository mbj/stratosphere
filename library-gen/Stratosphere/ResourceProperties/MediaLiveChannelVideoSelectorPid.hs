
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorpid.html

module Stratosphere.ResourceProperties.MediaLiveChannelVideoSelectorPid where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelVideoSelectorPid. See
-- 'mediaLiveChannelVideoSelectorPid' for a more convenient constructor.
data MediaLiveChannelVideoSelectorPid =
  MediaLiveChannelVideoSelectorPid
  { _mediaLiveChannelVideoSelectorPidPid :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelVideoSelectorPid where
  toJSON MediaLiveChannelVideoSelectorPid{..} =
    object $
    catMaybes
    [ fmap (("Pid",) . toJSON) _mediaLiveChannelVideoSelectorPidPid
    ]

-- | Constructor for 'MediaLiveChannelVideoSelectorPid' containing required
-- fields as arguments.
mediaLiveChannelVideoSelectorPid
  :: MediaLiveChannelVideoSelectorPid
mediaLiveChannelVideoSelectorPid  =
  MediaLiveChannelVideoSelectorPid
  { _mediaLiveChannelVideoSelectorPidPid = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorpid.html#cfn-medialive-channel-videoselectorpid-pid
mlcvspPid :: Lens' MediaLiveChannelVideoSelectorPid (Maybe (Val Integer))
mlcvspPid = lens _mediaLiveChannelVideoSelectorPidPid (\s a -> s { _mediaLiveChannelVideoSelectorPidPid = a })
