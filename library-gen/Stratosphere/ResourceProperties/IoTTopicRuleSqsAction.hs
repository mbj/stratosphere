{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-sqs.html

module Stratosphere.ResourceProperties.IoTTopicRuleSqsAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleSqsAction. See
-- | 'ioTTopicRuleSqsAction' for a more convenient constructor.
data IoTTopicRuleSqsAction =
  IoTTopicRuleSqsAction
  { _ioTTopicRuleSqsActionQueueUrl :: Val Text
  , _ioTTopicRuleSqsActionRoleArn :: Val Text
  , _ioTTopicRuleSqsActionUseBase64 :: Maybe (Val Bool')
  } deriving (Show, Eq, Generic)

instance ToJSON IoTTopicRuleSqsAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON IoTTopicRuleSqsAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

-- | Constructor for 'IoTTopicRuleSqsAction' containing required fields as
-- | arguments.
ioTTopicRuleSqsAction
  :: Val Text -- ^ 'ittrsqaQueueUrl'
  -> Val Text -- ^ 'ittrsqaRoleArn'
  -> IoTTopicRuleSqsAction
ioTTopicRuleSqsAction queueUrlarg roleArnarg =
  IoTTopicRuleSqsAction
  { _ioTTopicRuleSqsActionQueueUrl = queueUrlarg
  , _ioTTopicRuleSqsActionRoleArn = roleArnarg
  , _ioTTopicRuleSqsActionUseBase64 = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-sqs.html#cfn-iot-sqs-queueurl
ittrsqaQueueUrl :: Lens' IoTTopicRuleSqsAction (Val Text)
ittrsqaQueueUrl = lens _ioTTopicRuleSqsActionQueueUrl (\s a -> s { _ioTTopicRuleSqsActionQueueUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-sqs.html#cfn-iot-sqs-rolearn
ittrsqaRoleArn :: Lens' IoTTopicRuleSqsAction (Val Text)
ittrsqaRoleArn = lens _ioTTopicRuleSqsActionRoleArn (\s a -> s { _ioTTopicRuleSqsActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-sqs.html#cfn-iot-sqs-usebase64
ittrsqaUseBase64 :: Lens' IoTTopicRuleSqsAction (Maybe (Val Bool'))
ittrsqaUseBase64 = lens _ioTTopicRuleSqsActionUseBase64 (\s a -> s { _ioTTopicRuleSqsActionUseBase64 = a })
