
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location.html

module Stratosphere.ResourceProperties.PinpointSegmentLocation where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointSegmentSetDimension
import Stratosphere.ResourceProperties.PinpointSegmentGPSPoint

-- | Full data type definition for PinpointSegmentLocation. See
-- 'pinpointSegmentLocation' for a more convenient constructor.
data PinpointSegmentLocation =
  PinpointSegmentLocation
  { _pinpointSegmentLocationCountry :: Maybe PinpointSegmentSetDimension
  , _pinpointSegmentLocationGPSPoint :: Maybe PinpointSegmentGPSPoint
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentLocation where
  toJSON PinpointSegmentLocation{..} =
    object $
    catMaybes
    [ fmap (("Country",) . toJSON) _pinpointSegmentLocationCountry
    , fmap (("GPSPoint",) . toJSON) _pinpointSegmentLocationGPSPoint
    ]

-- | Constructor for 'PinpointSegmentLocation' containing required fields as
-- arguments.
pinpointSegmentLocation
  :: PinpointSegmentLocation
pinpointSegmentLocation  =
  PinpointSegmentLocation
  { _pinpointSegmentLocationCountry = Nothing
  , _pinpointSegmentLocationGPSPoint = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location.html#cfn-pinpoint-segment-segmentdimensions-location-country
pslCountry :: Lens' PinpointSegmentLocation (Maybe PinpointSegmentSetDimension)
pslCountry = lens _pinpointSegmentLocationCountry (\s a -> s { _pinpointSegmentLocationCountry = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint
pslGPSPoint :: Lens' PinpointSegmentLocation (Maybe PinpointSegmentGPSPoint)
pslGPSPoint = lens _pinpointSegmentLocationGPSPoint (\s a -> s { _pinpointSegmentLocationGPSPoint = a })
