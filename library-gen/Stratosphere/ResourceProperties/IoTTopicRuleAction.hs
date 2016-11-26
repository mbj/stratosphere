{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html

module Stratosphere.ResourceProperties.IoTTopicRuleAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.IoTTopicRuleCloudwatchAlarmAction
import Stratosphere.ResourceProperties.IoTTopicRuleCloudwatchMetricAction
import Stratosphere.ResourceProperties.IoTTopicRuleDynamoDBAction
import Stratosphere.ResourceProperties.IoTTopicRuleElasticsearchAction
import Stratosphere.ResourceProperties.IoTTopicRuleFirehoseAction
import Stratosphere.ResourceProperties.IoTTopicRuleKinesisAction
import Stratosphere.ResourceProperties.IoTTopicRuleLambdaAction
import Stratosphere.ResourceProperties.IoTTopicRuleRepublishAction
import Stratosphere.ResourceProperties.IoTTopicRuleS3Action
import Stratosphere.ResourceProperties.IoTTopicRuleSnsAction
import Stratosphere.ResourceProperties.IoTTopicRuleSqsAction

-- | Full data type definition for IoTTopicRuleAction. See
-- | 'ioTTopicRuleAction' for a more convenient constructor.
data IoTTopicRuleAction =
  IoTTopicRuleAction
  { _ioTTopicRuleActionCloudwatchAlarm :: Maybe IoTTopicRuleCloudwatchAlarmAction
  , _ioTTopicRuleActionCloudwatchMetric :: Maybe IoTTopicRuleCloudwatchMetricAction
  , _ioTTopicRuleActionDynamoDB :: Maybe IoTTopicRuleDynamoDBAction
  , _ioTTopicRuleActionElasticsearch :: Maybe IoTTopicRuleElasticsearchAction
  , _ioTTopicRuleActionFirehose :: Maybe IoTTopicRuleFirehoseAction
  , _ioTTopicRuleActionKinesis :: Maybe IoTTopicRuleKinesisAction
  , _ioTTopicRuleActionLambda :: Maybe IoTTopicRuleLambdaAction
  , _ioTTopicRuleActionRepublish :: Maybe IoTTopicRuleRepublishAction
  , _ioTTopicRuleActionS3 :: Maybe IoTTopicRuleS3Action
  , _ioTTopicRuleActionSns :: Maybe IoTTopicRuleSnsAction
  , _ioTTopicRuleActionSqs :: Maybe IoTTopicRuleSqsAction
  } deriving (Show, Generic)

instance ToJSON IoTTopicRuleAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON IoTTopicRuleAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'IoTTopicRuleAction' containing required fields as
-- | arguments.
ioTTopicRuleAction
  :: IoTTopicRuleAction
ioTTopicRuleAction  =
  IoTTopicRuleAction
  { _ioTTopicRuleActionCloudwatchAlarm = Nothing
  , _ioTTopicRuleActionCloudwatchMetric = Nothing
  , _ioTTopicRuleActionDynamoDB = Nothing
  , _ioTTopicRuleActionElasticsearch = Nothing
  , _ioTTopicRuleActionFirehose = Nothing
  , _ioTTopicRuleActionKinesis = Nothing
  , _ioTTopicRuleActionLambda = Nothing
  , _ioTTopicRuleActionRepublish = Nothing
  , _ioTTopicRuleActionS3 = Nothing
  , _ioTTopicRuleActionSns = Nothing
  , _ioTTopicRuleActionSqs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-cloudwatchalarm
ittraCloudwatchAlarm :: Lens' IoTTopicRuleAction (Maybe IoTTopicRuleCloudwatchAlarmAction)
ittraCloudwatchAlarm = lens _ioTTopicRuleActionCloudwatchAlarm (\s a -> s { _ioTTopicRuleActionCloudwatchAlarm = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-cloudwatchmetric
ittraCloudwatchMetric :: Lens' IoTTopicRuleAction (Maybe IoTTopicRuleCloudwatchMetricAction)
ittraCloudwatchMetric = lens _ioTTopicRuleActionCloudwatchMetric (\s a -> s { _ioTTopicRuleActionCloudwatchMetric = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-dynamodb
ittraDynamoDB :: Lens' IoTTopicRuleAction (Maybe IoTTopicRuleDynamoDBAction)
ittraDynamoDB = lens _ioTTopicRuleActionDynamoDB (\s a -> s { _ioTTopicRuleActionDynamoDB = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-elasticsearch
ittraElasticsearch :: Lens' IoTTopicRuleAction (Maybe IoTTopicRuleElasticsearchAction)
ittraElasticsearch = lens _ioTTopicRuleActionElasticsearch (\s a -> s { _ioTTopicRuleActionElasticsearch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-firehose
ittraFirehose :: Lens' IoTTopicRuleAction (Maybe IoTTopicRuleFirehoseAction)
ittraFirehose = lens _ioTTopicRuleActionFirehose (\s a -> s { _ioTTopicRuleActionFirehose = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-kinesis
ittraKinesis :: Lens' IoTTopicRuleAction (Maybe IoTTopicRuleKinesisAction)
ittraKinesis = lens _ioTTopicRuleActionKinesis (\s a -> s { _ioTTopicRuleActionKinesis = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-lambda
ittraLambda :: Lens' IoTTopicRuleAction (Maybe IoTTopicRuleLambdaAction)
ittraLambda = lens _ioTTopicRuleActionLambda (\s a -> s { _ioTTopicRuleActionLambda = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-republish
ittraRepublish :: Lens' IoTTopicRuleAction (Maybe IoTTopicRuleRepublishAction)
ittraRepublish = lens _ioTTopicRuleActionRepublish (\s a -> s { _ioTTopicRuleActionRepublish = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-s3
ittraS3 :: Lens' IoTTopicRuleAction (Maybe IoTTopicRuleS3Action)
ittraS3 = lens _ioTTopicRuleActionS3 (\s a -> s { _ioTTopicRuleActionS3 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-sns
ittraSns :: Lens' IoTTopicRuleAction (Maybe IoTTopicRuleSnsAction)
ittraSns = lens _ioTTopicRuleActionSns (\s a -> s { _ioTTopicRuleActionSns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html#cfn-iot-action-sqs
ittraSqs :: Lens' IoTTopicRuleAction (Maybe IoTTopicRuleSqsAction)
ittraSqs = lens _ioTTopicRuleActionSqs (\s a -> s { _ioTTopicRuleActionSqs = a })
