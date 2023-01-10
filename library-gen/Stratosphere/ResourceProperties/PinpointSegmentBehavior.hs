
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior.html

module Stratosphere.ResourceProperties.PinpointSegmentBehavior where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointSegmentRecency

-- | Full data type definition for PinpointSegmentBehavior. See
-- 'pinpointSegmentBehavior' for a more convenient constructor.
data PinpointSegmentBehavior =
  PinpointSegmentBehavior
  { _pinpointSegmentBehaviorRecency :: Maybe PinpointSegmentRecency
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentBehavior where
  toJSON PinpointSegmentBehavior{..} =
    object $
    catMaybes
    [ fmap (("Recency",) . toJSON) _pinpointSegmentBehaviorRecency
    ]

-- | Constructor for 'PinpointSegmentBehavior' containing required fields as
-- arguments.
pinpointSegmentBehavior
  :: PinpointSegmentBehavior
pinpointSegmentBehavior  =
  PinpointSegmentBehavior
  { _pinpointSegmentBehaviorRecency = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency
psbRecency :: Lens' PinpointSegmentBehavior (Maybe PinpointSegmentRecency)
psbRecency = lens _pinpointSegmentBehaviorRecency (\s a -> s { _pinpointSegmentBehaviorRecency = a })
