
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorprogramid.html

module Stratosphere.ResourceProperties.MediaLiveChannelVideoSelectorProgramId where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelVideoSelectorProgramId. See
-- 'mediaLiveChannelVideoSelectorProgramId' for a more convenient
-- constructor.
data MediaLiveChannelVideoSelectorProgramId =
  MediaLiveChannelVideoSelectorProgramId
  { _mediaLiveChannelVideoSelectorProgramIdProgramId :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelVideoSelectorProgramId where
  toJSON MediaLiveChannelVideoSelectorProgramId{..} =
    object $
    catMaybes
    [ fmap (("ProgramId",) . toJSON) _mediaLiveChannelVideoSelectorProgramIdProgramId
    ]

-- | Constructor for 'MediaLiveChannelVideoSelectorProgramId' containing
-- required fields as arguments.
mediaLiveChannelVideoSelectorProgramId
  :: MediaLiveChannelVideoSelectorProgramId
mediaLiveChannelVideoSelectorProgramId  =
  MediaLiveChannelVideoSelectorProgramId
  { _mediaLiveChannelVideoSelectorProgramIdProgramId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorprogramid.html#cfn-medialive-channel-videoselectorprogramid-programid
mlcvspiProgramId :: Lens' MediaLiveChannelVideoSelectorProgramId (Maybe (Val Integer))
mlcvspiProgramId = lens _mediaLiveChannelVideoSelectorProgramIdProgramId (\s a -> s { _mediaLiveChannelVideoSelectorProgramIdProgramId = a })
