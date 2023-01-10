
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvariant.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelAssetPropertyVariant where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsDetectorModelAssetPropertyVariant.
-- See 'ioTEventsDetectorModelAssetPropertyVariant' for a more convenient
-- constructor.
data IoTEventsDetectorModelAssetPropertyVariant =
  IoTEventsDetectorModelAssetPropertyVariant
  { _ioTEventsDetectorModelAssetPropertyVariantBooleanValue :: Maybe (Val Text)
  , _ioTEventsDetectorModelAssetPropertyVariantDoubleValue :: Maybe (Val Text)
  , _ioTEventsDetectorModelAssetPropertyVariantIntegerValue :: Maybe (Val Text)
  , _ioTEventsDetectorModelAssetPropertyVariantStringValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelAssetPropertyVariant where
  toJSON IoTEventsDetectorModelAssetPropertyVariant{..} =
    object $
    catMaybes
    [ fmap (("BooleanValue",) . toJSON) _ioTEventsDetectorModelAssetPropertyVariantBooleanValue
    , fmap (("DoubleValue",) . toJSON) _ioTEventsDetectorModelAssetPropertyVariantDoubleValue
    , fmap (("IntegerValue",) . toJSON) _ioTEventsDetectorModelAssetPropertyVariantIntegerValue
    , fmap (("StringValue",) . toJSON) _ioTEventsDetectorModelAssetPropertyVariantStringValue
    ]

-- | Constructor for 'IoTEventsDetectorModelAssetPropertyVariant' containing
-- required fields as arguments.
ioTEventsDetectorModelAssetPropertyVariant
  :: IoTEventsDetectorModelAssetPropertyVariant
ioTEventsDetectorModelAssetPropertyVariant  =
  IoTEventsDetectorModelAssetPropertyVariant
  { _ioTEventsDetectorModelAssetPropertyVariantBooleanValue = Nothing
  , _ioTEventsDetectorModelAssetPropertyVariantDoubleValue = Nothing
  , _ioTEventsDetectorModelAssetPropertyVariantIntegerValue = Nothing
  , _ioTEventsDetectorModelAssetPropertyVariantStringValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvariant.html#cfn-iotevents-detectormodel-assetpropertyvariant-booleanvalue
itedmapvBooleanValue :: Lens' IoTEventsDetectorModelAssetPropertyVariant (Maybe (Val Text))
itedmapvBooleanValue = lens _ioTEventsDetectorModelAssetPropertyVariantBooleanValue (\s a -> s { _ioTEventsDetectorModelAssetPropertyVariantBooleanValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvariant.html#cfn-iotevents-detectormodel-assetpropertyvariant-doublevalue
itedmapvDoubleValue :: Lens' IoTEventsDetectorModelAssetPropertyVariant (Maybe (Val Text))
itedmapvDoubleValue = lens _ioTEventsDetectorModelAssetPropertyVariantDoubleValue (\s a -> s { _ioTEventsDetectorModelAssetPropertyVariantDoubleValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvariant.html#cfn-iotevents-detectormodel-assetpropertyvariant-integervalue
itedmapvIntegerValue :: Lens' IoTEventsDetectorModelAssetPropertyVariant (Maybe (Val Text))
itedmapvIntegerValue = lens _ioTEventsDetectorModelAssetPropertyVariantIntegerValue (\s a -> s { _ioTEventsDetectorModelAssetPropertyVariantIntegerValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvariant.html#cfn-iotevents-detectormodel-assetpropertyvariant-stringvalue
itedmapvStringValue :: Lens' IoTEventsDetectorModelAssetPropertyVariant (Maybe (Val Text))
itedmapvStringValue = lens _ioTEventsDetectorModelAssetPropertyVariantStringValue (\s a -> s { _ioTEventsDetectorModelAssetPropertyVariantStringValue = a })
