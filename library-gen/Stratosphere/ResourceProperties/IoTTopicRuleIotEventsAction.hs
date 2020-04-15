{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-ioteventsaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleIotEventsAction where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleIotEventsAction. See
-- 'ioTTopicRuleIotEventsAction' for a more convenient constructor.
data IoTTopicRuleIotEventsAction =
  IoTTopicRuleIotEventsAction
  { _ioTTopicRuleIotEventsActionInputName :: Val Text
  , _ioTTopicRuleIotEventsActionMessageId :: Maybe (Val Text)
  , _ioTTopicRuleIotEventsActionRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleIotEventsAction where
  toJSON IoTTopicRuleIotEventsAction{..} =
    object $
    catMaybes
    [ (Just . ("InputName",) . toJSON) _ioTTopicRuleIotEventsActionInputName
    , fmap (("MessageId",) . toJSON) _ioTTopicRuleIotEventsActionMessageId
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleIotEventsActionRoleArn
    ]

-- | Constructor for 'IoTTopicRuleIotEventsAction' containing required fields
-- as arguments.
ioTTopicRuleIotEventsAction
  :: Val Text -- ^ 'ittrieaInputName'
  -> Val Text -- ^ 'ittrieaRoleArn'
  -> IoTTopicRuleIotEventsAction
ioTTopicRuleIotEventsAction inputNamearg roleArnarg =
  IoTTopicRuleIotEventsAction
  { _ioTTopicRuleIotEventsActionInputName = inputNamearg
  , _ioTTopicRuleIotEventsActionMessageId = Nothing
  , _ioTTopicRuleIotEventsActionRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-ioteventsaction.html#cfn-iot-topicrule-ioteventsaction-inputname
ittrieaInputName :: Lens' IoTTopicRuleIotEventsAction (Val Text)
ittrieaInputName = lens _ioTTopicRuleIotEventsActionInputName (\s a -> s { _ioTTopicRuleIotEventsActionInputName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-ioteventsaction.html#cfn-iot-topicrule-ioteventsaction-messageid
ittrieaMessageId :: Lens' IoTTopicRuleIotEventsAction (Maybe (Val Text))
ittrieaMessageId = lens _ioTTopicRuleIotEventsActionMessageId (\s a -> s { _ioTTopicRuleIotEventsActionMessageId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-ioteventsaction.html#cfn-iot-topicrule-ioteventsaction-rolearn
ittrieaRoleArn :: Lens' IoTTopicRuleIotEventsAction (Val Text)
ittrieaRoleArn = lens _ioTTopicRuleIotEventsActionRoleArn (\s a -> s { _ioTTopicRuleIotEventsActionRoleArn = a })
