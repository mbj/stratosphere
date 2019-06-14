{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-attributedimension.html

module Stratosphere.ResourceProperties.PinpointSegmentAttributeDimension where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointSegmentAttributeDimension. See
-- 'pinpointSegmentAttributeDimension' for a more convenient constructor.
data PinpointSegmentAttributeDimension =
  PinpointSegmentAttributeDimension
  { _pinpointSegmentAttributeDimensionAttributeType :: Maybe (Val Text)
  , _pinpointSegmentAttributeDimensionValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentAttributeDimension where
  toJSON PinpointSegmentAttributeDimension{..} =
    object $
    catMaybes
    [ fmap (("AttributeType",) . toJSON) _pinpointSegmentAttributeDimensionAttributeType
    , fmap (("Values",) . toJSON) _pinpointSegmentAttributeDimensionValues
    ]

-- | Constructor for 'PinpointSegmentAttributeDimension' containing required
-- fields as arguments.
pinpointSegmentAttributeDimension
  :: PinpointSegmentAttributeDimension
pinpointSegmentAttributeDimension  =
  PinpointSegmentAttributeDimension
  { _pinpointSegmentAttributeDimensionAttributeType = Nothing
  , _pinpointSegmentAttributeDimensionValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-attributedimension.html#cfn-pinpoint-segment-attributedimension-attributetype
psadAttributeType :: Lens' PinpointSegmentAttributeDimension (Maybe (Val Text))
psadAttributeType = lens _pinpointSegmentAttributeDimensionAttributeType (\s a -> s { _pinpointSegmentAttributeDimensionAttributeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-attributedimension.html#cfn-pinpoint-segment-attributedimension-values
psadValues :: Lens' PinpointSegmentAttributeDimension (Maybe (ValList Text))
psadValues = lens _pinpointSegmentAttributeDimensionValues (\s a -> s { _pinpointSegmentAttributeDimensionValues = a })
