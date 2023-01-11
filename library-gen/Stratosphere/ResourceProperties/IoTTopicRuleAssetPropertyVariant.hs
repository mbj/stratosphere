
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvariant.html

module Stratosphere.ResourceProperties.IoTTopicRuleAssetPropertyVariant where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleAssetPropertyVariant. See
-- 'ioTTopicRuleAssetPropertyVariant' for a more convenient constructor.
data IoTTopicRuleAssetPropertyVariant =
  IoTTopicRuleAssetPropertyVariant
  { _ioTTopicRuleAssetPropertyVariantBooleanValue :: Maybe (Val Text)
  , _ioTTopicRuleAssetPropertyVariantDoubleValue :: Maybe (Val Text)
  , _ioTTopicRuleAssetPropertyVariantIntegerValue :: Maybe (Val Text)
  , _ioTTopicRuleAssetPropertyVariantStringValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleAssetPropertyVariant where
  toJSON IoTTopicRuleAssetPropertyVariant{..} =
    object $
    catMaybes
    [ fmap (("BooleanValue",) . toJSON) _ioTTopicRuleAssetPropertyVariantBooleanValue
    , fmap (("DoubleValue",) . toJSON) _ioTTopicRuleAssetPropertyVariantDoubleValue
    , fmap (("IntegerValue",) . toJSON) _ioTTopicRuleAssetPropertyVariantIntegerValue
    , fmap (("StringValue",) . toJSON) _ioTTopicRuleAssetPropertyVariantStringValue
    ]

-- | Constructor for 'IoTTopicRuleAssetPropertyVariant' containing required
-- fields as arguments.
ioTTopicRuleAssetPropertyVariant
  :: IoTTopicRuleAssetPropertyVariant
ioTTopicRuleAssetPropertyVariant  =
  IoTTopicRuleAssetPropertyVariant
  { _ioTTopicRuleAssetPropertyVariantBooleanValue = Nothing
  , _ioTTopicRuleAssetPropertyVariantDoubleValue = Nothing
  , _ioTTopicRuleAssetPropertyVariantIntegerValue = Nothing
  , _ioTTopicRuleAssetPropertyVariantStringValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvariant.html#cfn-iot-topicrule-assetpropertyvariant-booleanvalue
ittrapvBooleanValue :: Lens' IoTTopicRuleAssetPropertyVariant (Maybe (Val Text))
ittrapvBooleanValue = lens _ioTTopicRuleAssetPropertyVariantBooleanValue (\s a -> s { _ioTTopicRuleAssetPropertyVariantBooleanValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvariant.html#cfn-iot-topicrule-assetpropertyvariant-doublevalue
ittrapvDoubleValue :: Lens' IoTTopicRuleAssetPropertyVariant (Maybe (Val Text))
ittrapvDoubleValue = lens _ioTTopicRuleAssetPropertyVariantDoubleValue (\s a -> s { _ioTTopicRuleAssetPropertyVariantDoubleValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvariant.html#cfn-iot-topicrule-assetpropertyvariant-integervalue
ittrapvIntegerValue :: Lens' IoTTopicRuleAssetPropertyVariant (Maybe (Val Text))
ittrapvIntegerValue = lens _ioTTopicRuleAssetPropertyVariantIntegerValue (\s a -> s { _ioTTopicRuleAssetPropertyVariantIntegerValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvariant.html#cfn-iot-topicrule-assetpropertyvariant-stringvalue
ittrapvStringValue :: Lens' IoTTopicRuleAssetPropertyVariant (Maybe (Val Text))
ittrapvStringValue = lens _ioTTopicRuleAssetPropertyVariantStringValue (\s a -> s { _ioTTopicRuleAssetPropertyVariantStringValue = a })
