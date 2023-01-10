
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertytimestamp.html

module Stratosphere.ResourceProperties.IoTTopicRuleAssetPropertyTimestamp where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleAssetPropertyTimestamp. See
-- 'ioTTopicRuleAssetPropertyTimestamp' for a more convenient constructor.
data IoTTopicRuleAssetPropertyTimestamp =
  IoTTopicRuleAssetPropertyTimestamp
  { _ioTTopicRuleAssetPropertyTimestampOffsetInNanos :: Maybe (Val Text)
  , _ioTTopicRuleAssetPropertyTimestampTimeInSeconds :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleAssetPropertyTimestamp where
  toJSON IoTTopicRuleAssetPropertyTimestamp{..} =
    object $
    catMaybes
    [ fmap (("OffsetInNanos",) . toJSON) _ioTTopicRuleAssetPropertyTimestampOffsetInNanos
    , (Just . ("TimeInSeconds",) . toJSON) _ioTTopicRuleAssetPropertyTimestampTimeInSeconds
    ]

-- | Constructor for 'IoTTopicRuleAssetPropertyTimestamp' containing required
-- fields as arguments.
ioTTopicRuleAssetPropertyTimestamp
  :: Val Text -- ^ 'ittraptTimeInSeconds'
  -> IoTTopicRuleAssetPropertyTimestamp
ioTTopicRuleAssetPropertyTimestamp timeInSecondsarg =
  IoTTopicRuleAssetPropertyTimestamp
  { _ioTTopicRuleAssetPropertyTimestampOffsetInNanos = Nothing
  , _ioTTopicRuleAssetPropertyTimestampTimeInSeconds = timeInSecondsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertytimestamp.html#cfn-iot-topicrule-assetpropertytimestamp-offsetinnanos
ittraptOffsetInNanos :: Lens' IoTTopicRuleAssetPropertyTimestamp (Maybe (Val Text))
ittraptOffsetInNanos = lens _ioTTopicRuleAssetPropertyTimestampOffsetInNanos (\s a -> s { _ioTTopicRuleAssetPropertyTimestampOffsetInNanos = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertytimestamp.html#cfn-iot-topicrule-assetpropertytimestamp-timeinseconds
ittraptTimeInSeconds :: Lens' IoTTopicRuleAssetPropertyTimestamp (Val Text)
ittraptTimeInSeconds = lens _ioTTopicRuleAssetPropertyTimestampTimeInSeconds (\s a -> s { _ioTTopicRuleAssetPropertyTimestampTimeInSeconds = a })
