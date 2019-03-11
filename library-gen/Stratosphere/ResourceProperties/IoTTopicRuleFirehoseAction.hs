{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleFirehoseAction where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleFirehoseAction. See
-- 'ioTTopicRuleFirehoseAction' for a more convenient constructor.
data IoTTopicRuleFirehoseAction =
  IoTTopicRuleFirehoseAction
  { _ioTTopicRuleFirehoseActionDeliveryStreamName :: Val Text
  , _ioTTopicRuleFirehoseActionRoleArn :: Val Text
  , _ioTTopicRuleFirehoseActionSeparator :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleFirehoseAction where
  toJSON IoTTopicRuleFirehoseAction{..} =
    object $
    catMaybes
    [ (Just . ("DeliveryStreamName",) . toJSON) _ioTTopicRuleFirehoseActionDeliveryStreamName
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleFirehoseActionRoleArn
    , fmap (("Separator",) . toJSON) _ioTTopicRuleFirehoseActionSeparator
    ]

-- | Constructor for 'IoTTopicRuleFirehoseAction' containing required fields
-- as arguments.
ioTTopicRuleFirehoseAction
  :: Val Text -- ^ 'ittrfaDeliveryStreamName'
  -> Val Text -- ^ 'ittrfaRoleArn'
  -> IoTTopicRuleFirehoseAction
ioTTopicRuleFirehoseAction deliveryStreamNamearg roleArnarg =
  IoTTopicRuleFirehoseAction
  { _ioTTopicRuleFirehoseActionDeliveryStreamName = deliveryStreamNamearg
  , _ioTTopicRuleFirehoseActionRoleArn = roleArnarg
  , _ioTTopicRuleFirehoseActionSeparator = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html#cfn-iot-topicrule-firehoseaction-deliverystreamname
ittrfaDeliveryStreamName :: Lens' IoTTopicRuleFirehoseAction (Val Text)
ittrfaDeliveryStreamName = lens _ioTTopicRuleFirehoseActionDeliveryStreamName (\s a -> s { _ioTTopicRuleFirehoseActionDeliveryStreamName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html#cfn-iot-topicrule-firehoseaction-rolearn
ittrfaRoleArn :: Lens' IoTTopicRuleFirehoseAction (Val Text)
ittrfaRoleArn = lens _ioTTopicRuleFirehoseActionRoleArn (\s a -> s { _ioTTopicRuleFirehoseActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html#cfn-iot-topicrule-firehoseaction-separator
ittrfaSeparator :: Lens' IoTTopicRuleFirehoseAction (Maybe (Val Text))
ittrfaSeparator = lens _ioTTopicRuleFirehoseActionSeparator (\s a -> s { _ioTTopicRuleFirehoseActionSeparator = a })
