
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleCloudwatchMetricAction where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleCloudwatchMetricAction. See
-- 'ioTTopicRuleCloudwatchMetricAction' for a more convenient constructor.
data IoTTopicRuleCloudwatchMetricAction =
  IoTTopicRuleCloudwatchMetricAction
  { _ioTTopicRuleCloudwatchMetricActionMetricName :: Val Text
  , _ioTTopicRuleCloudwatchMetricActionMetricNamespace :: Val Text
  , _ioTTopicRuleCloudwatchMetricActionMetricTimestamp :: Maybe (Val Text)
  , _ioTTopicRuleCloudwatchMetricActionMetricUnit :: Val Text
  , _ioTTopicRuleCloudwatchMetricActionMetricValue :: Val Text
  , _ioTTopicRuleCloudwatchMetricActionRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleCloudwatchMetricAction where
  toJSON IoTTopicRuleCloudwatchMetricAction{..} =
    object $
    catMaybes
    [ (Just . ("MetricName",) . toJSON) _ioTTopicRuleCloudwatchMetricActionMetricName
    , (Just . ("MetricNamespace",) . toJSON) _ioTTopicRuleCloudwatchMetricActionMetricNamespace
    , fmap (("MetricTimestamp",) . toJSON) _ioTTopicRuleCloudwatchMetricActionMetricTimestamp
    , (Just . ("MetricUnit",) . toJSON) _ioTTopicRuleCloudwatchMetricActionMetricUnit
    , (Just . ("MetricValue",) . toJSON) _ioTTopicRuleCloudwatchMetricActionMetricValue
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleCloudwatchMetricActionRoleArn
    ]

-- | Constructor for 'IoTTopicRuleCloudwatchMetricAction' containing required
-- fields as arguments.
ioTTopicRuleCloudwatchMetricAction
  :: Val Text -- ^ 'ittrcmaMetricName'
  -> Val Text -- ^ 'ittrcmaMetricNamespace'
  -> Val Text -- ^ 'ittrcmaMetricUnit'
  -> Val Text -- ^ 'ittrcmaMetricValue'
  -> Val Text -- ^ 'ittrcmaRoleArn'
  -> IoTTopicRuleCloudwatchMetricAction
ioTTopicRuleCloudwatchMetricAction metricNamearg metricNamespacearg metricUnitarg metricValuearg roleArnarg =
  IoTTopicRuleCloudwatchMetricAction
  { _ioTTopicRuleCloudwatchMetricActionMetricName = metricNamearg
  , _ioTTopicRuleCloudwatchMetricActionMetricNamespace = metricNamespacearg
  , _ioTTopicRuleCloudwatchMetricActionMetricTimestamp = Nothing
  , _ioTTopicRuleCloudwatchMetricActionMetricUnit = metricUnitarg
  , _ioTTopicRuleCloudwatchMetricActionMetricValue = metricValuearg
  , _ioTTopicRuleCloudwatchMetricActionRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricname
ittrcmaMetricName :: Lens' IoTTopicRuleCloudwatchMetricAction (Val Text)
ittrcmaMetricName = lens _ioTTopicRuleCloudwatchMetricActionMetricName (\s a -> s { _ioTTopicRuleCloudwatchMetricActionMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricnamespace
ittrcmaMetricNamespace :: Lens' IoTTopicRuleCloudwatchMetricAction (Val Text)
ittrcmaMetricNamespace = lens _ioTTopicRuleCloudwatchMetricActionMetricNamespace (\s a -> s { _ioTTopicRuleCloudwatchMetricActionMetricNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metrictimestamp
ittrcmaMetricTimestamp :: Lens' IoTTopicRuleCloudwatchMetricAction (Maybe (Val Text))
ittrcmaMetricTimestamp = lens _ioTTopicRuleCloudwatchMetricActionMetricTimestamp (\s a -> s { _ioTTopicRuleCloudwatchMetricActionMetricTimestamp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricunit
ittrcmaMetricUnit :: Lens' IoTTopicRuleCloudwatchMetricAction (Val Text)
ittrcmaMetricUnit = lens _ioTTopicRuleCloudwatchMetricActionMetricUnit (\s a -> s { _ioTTopicRuleCloudwatchMetricActionMetricUnit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricvalue
ittrcmaMetricValue :: Lens' IoTTopicRuleCloudwatchMetricAction (Val Text)
ittrcmaMetricValue = lens _ioTTopicRuleCloudwatchMetricActionMetricValue (\s a -> s { _ioTTopicRuleCloudwatchMetricActionMetricValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-rolearn
ittrcmaRoleArn :: Lens' IoTTopicRuleCloudwatchMetricAction (Val Text)
ittrcmaRoleArn = lens _ioTTopicRuleCloudwatchMetricActionRoleArn (\s a -> s { _ioTTopicRuleCloudwatchMetricActionRoleArn = a })
