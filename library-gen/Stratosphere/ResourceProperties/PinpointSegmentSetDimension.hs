
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-setdimension.html

module Stratosphere.ResourceProperties.PinpointSegmentSetDimension where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointSegmentSetDimension. See
-- 'pinpointSegmentSetDimension' for a more convenient constructor.
data PinpointSegmentSetDimension =
  PinpointSegmentSetDimension
  { _pinpointSegmentSetDimensionDimensionType :: Maybe (Val Text)
  , _pinpointSegmentSetDimensionValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentSetDimension where
  toJSON PinpointSegmentSetDimension{..} =
    object $
    catMaybes
    [ fmap (("DimensionType",) . toJSON) _pinpointSegmentSetDimensionDimensionType
    , fmap (("Values",) . toJSON) _pinpointSegmentSetDimensionValues
    ]

-- | Constructor for 'PinpointSegmentSetDimension' containing required fields
-- as arguments.
pinpointSegmentSetDimension
  :: PinpointSegmentSetDimension
pinpointSegmentSetDimension  =
  PinpointSegmentSetDimension
  { _pinpointSegmentSetDimensionDimensionType = Nothing
  , _pinpointSegmentSetDimensionValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-setdimension.html#cfn-pinpoint-segment-setdimension-dimensiontype
pssdDimensionType :: Lens' PinpointSegmentSetDimension (Maybe (Val Text))
pssdDimensionType = lens _pinpointSegmentSetDimensionDimensionType (\s a -> s { _pinpointSegmentSetDimensionDimensionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-setdimension.html#cfn-pinpoint-segment-setdimension-values
pssdValues :: Lens' PinpointSegmentSetDimension (Maybe (ValList Text))
pssdValues = lens _pinpointSegmentSetDimensionValues (\s a -> s { _pinpointSegmentSetDimensionValues = a })
