
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html

module Stratosphere.ResourceProperties.PinpointSegmentGPSPoint where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointSegmentCoordinates

-- | Full data type definition for PinpointSegmentGPSPoint. See
-- 'pinpointSegmentGPSPoint' for a more convenient constructor.
data PinpointSegmentGPSPoint =
  PinpointSegmentGPSPoint
  { _pinpointSegmentGPSPointCoordinates :: PinpointSegmentCoordinates
  , _pinpointSegmentGPSPointRangeInKilometers :: Val Double
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentGPSPoint where
  toJSON PinpointSegmentGPSPoint{..} =
    object $
    catMaybes
    [ (Just . ("Coordinates",) . toJSON) _pinpointSegmentGPSPointCoordinates
    , (Just . ("RangeInKilometers",) . toJSON) _pinpointSegmentGPSPointRangeInKilometers
    ]

-- | Constructor for 'PinpointSegmentGPSPoint' containing required fields as
-- arguments.
pinpointSegmentGPSPoint
  :: PinpointSegmentCoordinates -- ^ 'psgpspCoordinates'
  -> Val Double -- ^ 'psgpspRangeInKilometers'
  -> PinpointSegmentGPSPoint
pinpointSegmentGPSPoint coordinatesarg rangeInKilometersarg =
  PinpointSegmentGPSPoint
  { _pinpointSegmentGPSPointCoordinates = coordinatesarg
  , _pinpointSegmentGPSPointRangeInKilometers = rangeInKilometersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates
psgpspCoordinates :: Lens' PinpointSegmentGPSPoint PinpointSegmentCoordinates
psgpspCoordinates = lens _pinpointSegmentGPSPointCoordinates (\s a -> s { _pinpointSegmentGPSPointCoordinates = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-rangeinkilometers
psgpspRangeInKilometers :: Lens' PinpointSegmentGPSPoint (Val Double)
psgpspRangeInKilometers = lens _pinpointSegmentGPSPointRangeInKilometers (\s a -> s { _pinpointSegmentGPSPointRangeInKilometers = a })
