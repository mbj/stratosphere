
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html

module Stratosphere.ResourceProperties.PinpointSegmentRecency where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for PinpointSegmentRecency. See
-- 'pinpointSegmentRecency' for a more convenient constructor.
data PinpointSegmentRecency =
  PinpointSegmentRecency
  { _pinpointSegmentRecencyDuration :: Val Text
  , _pinpointSegmentRecencyRecencyType :: Val Text
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentRecency where
  toJSON PinpointSegmentRecency{..} =
    object $
    catMaybes
    [ (Just . ("Duration",) . toJSON) _pinpointSegmentRecencyDuration
    , (Just . ("RecencyType",) . toJSON) _pinpointSegmentRecencyRecencyType
    ]

-- | Constructor for 'PinpointSegmentRecency' containing required fields as
-- arguments.
pinpointSegmentRecency
  :: Val Text -- ^ 'psrDuration'
  -> Val Text -- ^ 'psrRecencyType'
  -> PinpointSegmentRecency
pinpointSegmentRecency durationarg recencyTypearg =
  PinpointSegmentRecency
  { _pinpointSegmentRecencyDuration = durationarg
  , _pinpointSegmentRecencyRecencyType = recencyTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency-duration
psrDuration :: Lens' PinpointSegmentRecency (Val Text)
psrDuration = lens _pinpointSegmentRecencyDuration (\s a -> s { _pinpointSegmentRecencyDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency-recencytype
psrRecencyType :: Lens' PinpointSegmentRecency (Val Text)
psrRecencyType = lens _pinpointSegmentRecencyRecencyType (\s a -> s { _pinpointSegmentRecencyRecencyType = a })
