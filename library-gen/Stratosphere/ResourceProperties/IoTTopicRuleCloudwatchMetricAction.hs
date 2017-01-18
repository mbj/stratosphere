{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchmetric.html

module Stratosphere.ResourceProperties.IoTTopicRuleCloudwatchMetricAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleCloudwatchMetricAction. See
-- | 'ioTTopicRuleCloudwatchMetricAction' for a more convenient constructor.
data IoTTopicRuleCloudwatchMetricAction =
  IoTTopicRuleCloudwatchMetricAction
  { _ioTTopicRuleCloudwatchMetricActionMetricName :: Val Text
  , _ioTTopicRuleCloudwatchMetricActionMetricNamespace :: Val Text
  , _ioTTopicRuleCloudwatchMetricActionMetricTimestamp :: Maybe (Val Text)
  , _ioTTopicRuleCloudwatchMetricActionMetricUnit :: Val Text
  , _ioTTopicRuleCloudwatchMetricActionMetricValue :: Val Text
  , _ioTTopicRuleCloudwatchMetricActionRoleArn :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON IoTTopicRuleCloudwatchMetricAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

instance FromJSON IoTTopicRuleCloudwatchMetricAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

-- | Constructor for 'IoTTopicRuleCloudwatchMetricAction' containing required
-- | fields as arguments.
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
