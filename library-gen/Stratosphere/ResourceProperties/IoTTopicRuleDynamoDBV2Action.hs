{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbv2action.html

module Stratosphere.ResourceProperties.IoTTopicRuleDynamoDBV2Action where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTTopicRulePutItemInput

-- | Full data type definition for IoTTopicRuleDynamoDBV2Action. See
-- 'ioTTopicRuleDynamoDBV2Action' for a more convenient constructor.
data IoTTopicRuleDynamoDBV2Action =
  IoTTopicRuleDynamoDBV2Action
  { _ioTTopicRuleDynamoDBV2ActionPutItem :: Maybe IoTTopicRulePutItemInput
  , _ioTTopicRuleDynamoDBV2ActionRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleDynamoDBV2Action where
  toJSON IoTTopicRuleDynamoDBV2Action{..} =
    object $
    catMaybes
    [ fmap (("PutItem",) . toJSON) _ioTTopicRuleDynamoDBV2ActionPutItem
    , fmap (("RoleArn",) . toJSON) _ioTTopicRuleDynamoDBV2ActionRoleArn
    ]

-- | Constructor for 'IoTTopicRuleDynamoDBV2Action' containing required fields
-- as arguments.
ioTTopicRuleDynamoDBV2Action
  :: IoTTopicRuleDynamoDBV2Action
ioTTopicRuleDynamoDBV2Action  =
  IoTTopicRuleDynamoDBV2Action
  { _ioTTopicRuleDynamoDBV2ActionPutItem = Nothing
  , _ioTTopicRuleDynamoDBV2ActionRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbv2action.html#cfn-iot-topicrule-dynamodbv2action-putitem
ittrddbvaPutItem :: Lens' IoTTopicRuleDynamoDBV2Action (Maybe IoTTopicRulePutItemInput)
ittrddbvaPutItem = lens _ioTTopicRuleDynamoDBV2ActionPutItem (\s a -> s { _ioTTopicRuleDynamoDBV2ActionPutItem = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbv2action.html#cfn-iot-topicrule-dynamodbv2action-rolearn
ittrddbvaRoleArn :: Lens' IoTTopicRuleDynamoDBV2Action (Maybe (Val Text))
ittrddbvaRoleArn = lens _ioTTopicRuleDynamoDBV2ActionRoleArn (\s a -> s { _ioTTopicRuleDynamoDBV2ActionRoleArn = a })
