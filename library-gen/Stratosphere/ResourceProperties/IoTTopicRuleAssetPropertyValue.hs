
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvalue.html

module Stratosphere.ResourceProperties.IoTTopicRuleAssetPropertyValue where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTTopicRuleAssetPropertyTimestamp
import Stratosphere.ResourceProperties.IoTTopicRuleAssetPropertyVariant

-- | Full data type definition for IoTTopicRuleAssetPropertyValue. See
-- 'ioTTopicRuleAssetPropertyValue' for a more convenient constructor.
data IoTTopicRuleAssetPropertyValue =
  IoTTopicRuleAssetPropertyValue
  { _ioTTopicRuleAssetPropertyValueQuality :: Maybe (Val Text)
  , _ioTTopicRuleAssetPropertyValueTimestamp :: IoTTopicRuleAssetPropertyTimestamp
  , _ioTTopicRuleAssetPropertyValueValue :: IoTTopicRuleAssetPropertyVariant
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleAssetPropertyValue where
  toJSON IoTTopicRuleAssetPropertyValue{..} =
    object $
    catMaybes
    [ fmap (("Quality",) . toJSON) _ioTTopicRuleAssetPropertyValueQuality
    , (Just . ("Timestamp",) . toJSON) _ioTTopicRuleAssetPropertyValueTimestamp
    , (Just . ("Value",) . toJSON) _ioTTopicRuleAssetPropertyValueValue
    ]

-- | Constructor for 'IoTTopicRuleAssetPropertyValue' containing required
-- fields as arguments.
ioTTopicRuleAssetPropertyValue
  :: IoTTopicRuleAssetPropertyTimestamp -- ^ 'ittrapvTimestamp'
  -> IoTTopicRuleAssetPropertyVariant -- ^ 'ittrapvValue'
  -> IoTTopicRuleAssetPropertyValue
ioTTopicRuleAssetPropertyValue timestamparg valuearg =
  IoTTopicRuleAssetPropertyValue
  { _ioTTopicRuleAssetPropertyValueQuality = Nothing
  , _ioTTopicRuleAssetPropertyValueTimestamp = timestamparg
  , _ioTTopicRuleAssetPropertyValueValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvalue.html#cfn-iot-topicrule-assetpropertyvalue-quality
ittrapvQuality :: Lens' IoTTopicRuleAssetPropertyValue (Maybe (Val Text))
ittrapvQuality = lens _ioTTopicRuleAssetPropertyValueQuality (\s a -> s { _ioTTopicRuleAssetPropertyValueQuality = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvalue.html#cfn-iot-topicrule-assetpropertyvalue-timestamp
ittrapvTimestamp :: Lens' IoTTopicRuleAssetPropertyValue IoTTopicRuleAssetPropertyTimestamp
ittrapvTimestamp = lens _ioTTopicRuleAssetPropertyValueTimestamp (\s a -> s { _ioTTopicRuleAssetPropertyValueTimestamp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvalue.html#cfn-iot-topicrule-assetpropertyvalue-value
ittrapvValue :: Lens' IoTTopicRuleAssetPropertyValue IoTTopicRuleAssetPropertyVariant
ittrapvValue = lens _ioTTopicRuleAssetPropertyValueValue (\s a -> s { _ioTTopicRuleAssetPropertyValueValue = a })
