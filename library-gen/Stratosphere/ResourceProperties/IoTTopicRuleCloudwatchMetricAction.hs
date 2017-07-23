{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchmetric.html

module Stratosphere.ResourceProperties.IoTTopicRuleCloudwatchMetricAction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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

instance FromJSON IoTTopicRuleCloudwatchMetricAction where
  parseJSON (Object obj) =
    IoTTopicRuleCloudwatchMetricAction <$>
      (obj .: "MetricName") <*>
      (obj .: "MetricNamespace") <*>
      (obj .:? "MetricTimestamp") <*>
      (obj .: "MetricUnit") <*>
      (obj .: "MetricValue") <*>
      (obj .: "RoleArn")
  parseJSON _ = mempty

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchmetric.html#cfn-iot-cloudwatchmetric-metricname
ittrcmaMetricName :: Lens' IoTTopicRuleCloudwatchMetricAction (Val Text)
ittrcmaMetricName = lens _ioTTopicRuleCloudwatchMetricActionMetricName (\s a -> s { _ioTTopicRuleCloudwatchMetricActionMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchmetric.html#cfn-iot-cloudwatchmetric-metricnamespace
ittrcmaMetricNamespace :: Lens' IoTTopicRuleCloudwatchMetricAction (Val Text)
ittrcmaMetricNamespace = lens _ioTTopicRuleCloudwatchMetricActionMetricNamespace (\s a -> s { _ioTTopicRuleCloudwatchMetricActionMetricNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchmetric.html#cfn-iot-cloudwatchmetric-metrictimestamp
ittrcmaMetricTimestamp :: Lens' IoTTopicRuleCloudwatchMetricAction (Maybe (Val Text))
ittrcmaMetricTimestamp = lens _ioTTopicRuleCloudwatchMetricActionMetricTimestamp (\s a -> s { _ioTTopicRuleCloudwatchMetricActionMetricTimestamp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchmetric.html#cfn-iot-cloudwatchmetric-metricunit
ittrcmaMetricUnit :: Lens' IoTTopicRuleCloudwatchMetricAction (Val Text)
ittrcmaMetricUnit = lens _ioTTopicRuleCloudwatchMetricActionMetricUnit (\s a -> s { _ioTTopicRuleCloudwatchMetricActionMetricUnit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchmetric.html#cfn-iot-cloudwatchmetric-metricvalue
ittrcmaMetricValue :: Lens' IoTTopicRuleCloudwatchMetricAction (Val Text)
ittrcmaMetricValue = lens _ioTTopicRuleCloudwatchMetricActionMetricValue (\s a -> s { _ioTTopicRuleCloudwatchMetricActionMetricValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchmetric.html#cfn-iot-cloudwatchmetric-rolearn
ittrcmaRoleArn :: Lens' IoTTopicRuleCloudwatchMetricAction (Val Text)
ittrcmaRoleArn = lens _ioTTopicRuleCloudwatchMetricActionRoleArn (\s a -> s { _ioTTopicRuleCloudwatchMetricActionRoleArn = a })
