{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html

module Stratosphere.ResourceProperties.PinpointSegmentSegmentDimensions where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointSegmentBehavior
import Stratosphere.ResourceProperties.PinpointSegmentDemographic
import Stratosphere.ResourceProperties.PinpointSegmentLocation

-- | Full data type definition for PinpointSegmentSegmentDimensions. See
-- 'pinpointSegmentSegmentDimensions' for a more convenient constructor.
data PinpointSegmentSegmentDimensions =
  PinpointSegmentSegmentDimensions
  { _pinpointSegmentSegmentDimensionsAttributes :: Maybe Object
  , _pinpointSegmentSegmentDimensionsBehavior :: Maybe PinpointSegmentBehavior
  , _pinpointSegmentSegmentDimensionsDemographic :: Maybe PinpointSegmentDemographic
  , _pinpointSegmentSegmentDimensionsLocation :: Maybe PinpointSegmentLocation
  , _pinpointSegmentSegmentDimensionsMetrics :: Maybe Object
  , _pinpointSegmentSegmentDimensionsUserAttributes :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentSegmentDimensions where
  toJSON PinpointSegmentSegmentDimensions{..} =
    object $
    catMaybes
    [ fmap (("Attributes",) . toJSON) _pinpointSegmentSegmentDimensionsAttributes
    , fmap (("Behavior",) . toJSON) _pinpointSegmentSegmentDimensionsBehavior
    , fmap (("Demographic",) . toJSON) _pinpointSegmentSegmentDimensionsDemographic
    , fmap (("Location",) . toJSON) _pinpointSegmentSegmentDimensionsLocation
    , fmap (("Metrics",) . toJSON) _pinpointSegmentSegmentDimensionsMetrics
    , fmap (("UserAttributes",) . toJSON) _pinpointSegmentSegmentDimensionsUserAttributes
    ]

-- | Constructor for 'PinpointSegmentSegmentDimensions' containing required
-- fields as arguments.
pinpointSegmentSegmentDimensions
  :: PinpointSegmentSegmentDimensions
pinpointSegmentSegmentDimensions  =
  PinpointSegmentSegmentDimensions
  { _pinpointSegmentSegmentDimensionsAttributes = Nothing
  , _pinpointSegmentSegmentDimensionsBehavior = Nothing
  , _pinpointSegmentSegmentDimensionsDemographic = Nothing
  , _pinpointSegmentSegmentDimensionsLocation = Nothing
  , _pinpointSegmentSegmentDimensionsMetrics = Nothing
  , _pinpointSegmentSegmentDimensionsUserAttributes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-attributes
pssdAttributes :: Lens' PinpointSegmentSegmentDimensions (Maybe Object)
pssdAttributes = lens _pinpointSegmentSegmentDimensionsAttributes (\s a -> s { _pinpointSegmentSegmentDimensionsAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-behavior
pssdBehavior :: Lens' PinpointSegmentSegmentDimensions (Maybe PinpointSegmentBehavior)
pssdBehavior = lens _pinpointSegmentSegmentDimensionsBehavior (\s a -> s { _pinpointSegmentSegmentDimensionsBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-demographic
pssdDemographic :: Lens' PinpointSegmentSegmentDimensions (Maybe PinpointSegmentDemographic)
pssdDemographic = lens _pinpointSegmentSegmentDimensionsDemographic (\s a -> s { _pinpointSegmentSegmentDimensionsDemographic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-location
pssdLocation :: Lens' PinpointSegmentSegmentDimensions (Maybe PinpointSegmentLocation)
pssdLocation = lens _pinpointSegmentSegmentDimensionsLocation (\s a -> s { _pinpointSegmentSegmentDimensionsLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-metrics
pssdMetrics :: Lens' PinpointSegmentSegmentDimensions (Maybe Object)
pssdMetrics = lens _pinpointSegmentSegmentDimensionsMetrics (\s a -> s { _pinpointSegmentSegmentDimensionsMetrics = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-userattributes
pssdUserAttributes :: Lens' PinpointSegmentSegmentDimensions (Maybe Object)
pssdUserAttributes = lens _pinpointSegmentSegmentDimensionsUserAttributes (\s a -> s { _pinpointSegmentSegmentDimensionsUserAttributes = a })
