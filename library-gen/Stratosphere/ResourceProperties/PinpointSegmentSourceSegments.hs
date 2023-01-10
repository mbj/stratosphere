
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html

module Stratosphere.ResourceProperties.PinpointSegmentSourceSegments where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for PinpointSegmentSourceSegments. See
-- 'pinpointSegmentSourceSegments' for a more convenient constructor.
data PinpointSegmentSourceSegments =
  PinpointSegmentSourceSegments
  { _pinpointSegmentSourceSegmentsId :: Val Text
  , _pinpointSegmentSourceSegmentsVersion :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentSourceSegments where
  toJSON PinpointSegmentSourceSegments{..} =
    object $
    catMaybes
    [ (Just . ("Id",) . toJSON) _pinpointSegmentSourceSegmentsId
    , fmap (("Version",) . toJSON) _pinpointSegmentSourceSegmentsVersion
    ]

-- | Constructor for 'PinpointSegmentSourceSegments' containing required
-- fields as arguments.
pinpointSegmentSourceSegments
  :: Val Text -- ^ 'psssId'
  -> PinpointSegmentSourceSegments
pinpointSegmentSourceSegments idarg =
  PinpointSegmentSourceSegments
  { _pinpointSegmentSourceSegmentsId = idarg
  , _pinpointSegmentSourceSegmentsVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments-id
psssId :: Lens' PinpointSegmentSourceSegments (Val Text)
psssId = lens _pinpointSegmentSourceSegmentsId (\s a -> s { _pinpointSegmentSourceSegmentsId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments-version
psssVersion :: Lens' PinpointSegmentSourceSegments (Maybe (Val Integer))
psssVersion = lens _pinpointSegmentSourceSegmentsVersion (\s a -> s { _pinpointSegmentSourceSegmentsVersion = a })
