{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-republish.html

module Stratosphere.ResourceProperties.IoTTopicRuleRepublishAction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleRepublishAction. See
-- 'ioTTopicRuleRepublishAction' for a more convenient constructor.
data IoTTopicRuleRepublishAction =
  IoTTopicRuleRepublishAction
  { _ioTTopicRuleRepublishActionRoleArn :: Val Text
  , _ioTTopicRuleRepublishActionTopic :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleRepublishAction where
  toJSON IoTTopicRuleRepublishAction{..} =
    object $
    catMaybes
    [ (Just . ("RoleArn",) . toJSON) _ioTTopicRuleRepublishActionRoleArn
    , (Just . ("Topic",) . toJSON) _ioTTopicRuleRepublishActionTopic
    ]

instance FromJSON IoTTopicRuleRepublishAction where
  parseJSON (Object obj) =
    IoTTopicRuleRepublishAction <$>
      (obj .: "RoleArn") <*>
      (obj .: "Topic")
  parseJSON _ = mempty

-- | Constructor for 'IoTTopicRuleRepublishAction' containing required fields
-- as arguments.
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
