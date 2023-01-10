
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates.html

module Stratosphere.ResourceProperties.PinpointSegmentCoordinates where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for PinpointSegmentCoordinates. See
-- 'pinpointSegmentCoordinates' for a more convenient constructor.
data PinpointSegmentCoordinates =
  PinpointSegmentCoordinates
  { _pinpointSegmentCoordinatesLatitude :: Val Double
  , _pinpointSegmentCoordinatesLongitude :: Val Double
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentCoordinates where
  toJSON PinpointSegmentCoordinates{..} =
    object $
    catMaybes
    [ (Just . ("Latitude",) . toJSON) _pinpointSegmentCoordinatesLatitude
    , (Just . ("Longitude",) . toJSON) _pinpointSegmentCoordinatesLongitude
    ]

-- | Constructor for 'PinpointSegmentCoordinates' containing required fields
-- as arguments.
pinpointSegmentCoordinates
  :: Val Double -- ^ 'pscLatitude'
  -> Val Double -- ^ 'pscLongitude'
  -> PinpointSegmentCoordinates
pinpointSegmentCoordinates latitudearg longitudearg =
  PinpointSegmentCoordinates
  { _pinpointSegmentCoordinatesLatitude = latitudearg
  , _pinpointSegmentCoordinatesLongitude = longitudearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates-latitude
pscLatitude :: Lens' PinpointSegmentCoordinates (Val Double)
pscLatitude = lens _pinpointSegmentCoordinatesLatitude (\s a -> s { _pinpointSegmentCoordinatesLatitude = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates-longitude
pscLongitude :: Lens' PinpointSegmentCoordinates (Val Double)
pscLongitude = lens _pinpointSegmentCoordinatesLongitude (\s a -> s { _pinpointSegmentCoordinatesLongitude = a })
