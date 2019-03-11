{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleSqsAction where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleSqsAction. See
-- 'ioTTopicRuleSqsAction' for a more convenient constructor.
data IoTTopicRuleSqsAction =
  IoTTopicRuleSqsAction
  { _ioTTopicRuleSqsActionQueueUrl :: Val Text
  , _ioTTopicRuleSqsActionRoleArn :: Val Text
  , _ioTTopicRuleSqsActionUseBase64 :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleSqsAction where
  toJSON IoTTopicRuleSqsAction{..} =
    object $
    catMaybes
    [ (Just . ("QueueUrl",) . toJSON) _ioTTopicRuleSqsActionQueueUrl
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleSqsActionRoleArn
    , fmap (("UseBase64",) . toJSON . fmap Bool') _ioTTopicRuleSqsActionUseBase64
    ]

-- | Constructor for 'IoTTopicRuleSqsAction' containing required fields as
-- arguments.
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html#cfn-iot-topicrule-sqsaction-queueurl
ittrsqaQueueUrl :: Lens' IoTTopicRuleSqsAction (Val Text)
ittrsqaQueueUrl = lens _ioTTopicRuleSqsActionQueueUrl (\s a -> s { _ioTTopicRuleSqsActionQueueUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html#cfn-iot-topicrule-sqsaction-rolearn
ittrsqaRoleArn :: Lens' IoTTopicRuleSqsAction (Val Text)
ittrsqaRoleArn = lens _ioTTopicRuleSqsActionRoleArn (\s a -> s { _ioTTopicRuleSqsActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html#cfn-iot-topicrule-sqsaction-usebase64
ittrsqaUseBase64 :: Lens' IoTTopicRuleSqsAction (Maybe (Val Bool))
ittrsqaUseBase64 = lens _ioTTopicRuleSqsActionUseBase64 (\s a -> s { _ioTTopicRuleSqsActionUseBase64 = a })
