{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-actions.html

module Stratosphere.ResourceProperties.IoTTopicRuleAction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

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
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleAction where
  toJSON IoTTopicRuleAction{..} =
    object $
    catMaybes
    [ ("CloudwatchAlarm" .=) <$> _ioTTopicRuleActionCloudwatchAlarm
    , ("CloudwatchMetric" .=) <$> _ioTTopicRuleActionCloudwatchMetric
    , ("DynamoDB" .=) <$> _ioTTopicRuleActionDynamoDB
    , ("Elasticsearch" .=) <$> _ioTTopicRuleActionElasticsearch
    , ("Firehose" .=) <$> _ioTTopicRuleActionFirehose
    , ("Kinesis" .=) <$> _ioTTopicRuleActionKinesis
    , ("Lambda" .=) <$> _ioTTopicRuleActionLambda
    , ("Republish" .=) <$> _ioTTopicRuleActionRepublish
    , ("S3" .=) <$> _ioTTopicRuleActionS3
    , ("Sns" .=) <$> _ioTTopicRuleActionSns
    , ("Sqs" .=) <$> _ioTTopicRuleActionSqs
    ]

instance FromJSON IoTTopicRuleAction where
  parseJSON (Object obj) =
    IoTTopicRuleAction <$>
      obj .:? "CloudwatchAlarm" <*>
      obj .:? "CloudwatchMetric" <*>
      obj .:? "DynamoDB" <*>
      obj .:? "Elasticsearch" <*>
      obj .:? "Firehose" <*>
      obj .:? "Kinesis" <*>
      obj .:? "Lambda" <*>
      obj .:? "Republish" <*>
      obj .:? "S3" <*>
      obj .:? "Sns" <*>
      obj .:? "Sqs"
  parseJSON _ = mempty

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
