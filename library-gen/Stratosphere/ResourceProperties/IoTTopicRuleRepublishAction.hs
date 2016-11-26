{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-republish.html

module Stratosphere.ResourceProperties.IoTTopicRuleRepublishAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleRepublishAction. See
-- | 'ioTTopicRuleRepublishAction' for a more convenient constructor.
data IoTTopicRuleRepublishAction =
  IoTTopicRuleRepublishAction
  { _ioTTopicRuleRepublishActionRoleArn :: Val Text
  , _ioTTopicRuleRepublishActionTopic :: Val Text
  } deriving (Show, Generic)

instance ToJSON IoTTopicRuleRepublishAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON IoTTopicRuleRepublishAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'IoTTopicRuleRepublishAction' containing required fields
-- | as arguments.
ioTTopicRuleRepublishAction
  :: Val Text -- ^ 'ittrraRoleArn'
  -> Val Text -- ^ 'ittrraTopic'
  -> IoTTopicRuleRepublishAction
ioTTopicRuleRepublishAction roleArnarg topicarg =
  IoTTopicRuleRepublishAction
  { _ioTTopicRuleRepublishActionRoleArn = roleArnarg
  , _ioTTopicRuleRepublishActionTopic = topicarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-republish.html#cfn-iot-republish-rolearn
ittrraRoleArn :: Lens' IoTTopicRuleRepublishAction (Val Text)
ittrraRoleArn = lens _ioTTopicRuleRepublishActionRoleArn (\s a -> s { _ioTTopicRuleRepublishActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-republish.html#cfn-iot-republish-topic
ittrraTopic :: Lens' IoTTopicRuleRepublishAction (Val Text)
ittrraTopic = lens _ioTTopicRuleRepublishActionTopic (\s a -> s { _ioTTopicRuleRepublishActionTopic = a })
