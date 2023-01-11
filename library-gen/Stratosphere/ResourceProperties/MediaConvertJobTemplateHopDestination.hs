
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-hopdestination.html

module Stratosphere.ResourceProperties.MediaConvertJobTemplateHopDestination where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MediaConvertJobTemplateHopDestination. See
-- 'mediaConvertJobTemplateHopDestination' for a more convenient
-- constructor.
data MediaConvertJobTemplateHopDestination =
  MediaConvertJobTemplateHopDestination
  { _mediaConvertJobTemplateHopDestinationPriority :: Maybe (Val Integer)
  , _mediaConvertJobTemplateHopDestinationQueue :: Maybe (Val Text)
  , _mediaConvertJobTemplateHopDestinationWaitMinutes :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaConvertJobTemplateHopDestination where
  toJSON MediaConvertJobTemplateHopDestination{..} =
    object $
    catMaybes
    [ fmap (("Priority",) . toJSON) _mediaConvertJobTemplateHopDestinationPriority
    , fmap (("Queue",) . toJSON) _mediaConvertJobTemplateHopDestinationQueue
    , fmap (("WaitMinutes",) . toJSON) _mediaConvertJobTemplateHopDestinationWaitMinutes
    ]

-- | Constructor for 'MediaConvertJobTemplateHopDestination' containing
-- required fields as arguments.
mediaConvertJobTemplateHopDestination
  :: MediaConvertJobTemplateHopDestination
mediaConvertJobTemplateHopDestination  =
  MediaConvertJobTemplateHopDestination
  { _mediaConvertJobTemplateHopDestinationPriority = Nothing
  , _mediaConvertJobTemplateHopDestinationQueue = Nothing
  , _mediaConvertJobTemplateHopDestinationWaitMinutes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-hopdestination.html#cfn-mediaconvert-jobtemplate-hopdestination-priority
mcjthdPriority :: Lens' MediaConvertJobTemplateHopDestination (Maybe (Val Integer))
mcjthdPriority = lens _mediaConvertJobTemplateHopDestinationPriority (\s a -> s { _mediaConvertJobTemplateHopDestinationPriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-hopdestination.html#cfn-mediaconvert-jobtemplate-hopdestination-queue
mcjthdQueue :: Lens' MediaConvertJobTemplateHopDestination (Maybe (Val Text))
mcjthdQueue = lens _mediaConvertJobTemplateHopDestinationQueue (\s a -> s { _mediaConvertJobTemplateHopDestinationQueue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-hopdestination.html#cfn-mediaconvert-jobtemplate-hopdestination-waitminutes
mcjthdWaitMinutes :: Lens' MediaConvertJobTemplateHopDestination (Maybe (Val Integer))
mcjthdWaitMinutes = lens _mediaConvertJobTemplateHopDestinationWaitMinutes (\s a -> s { _mediaConvertJobTemplateHopDestinationWaitMinutes = a })
