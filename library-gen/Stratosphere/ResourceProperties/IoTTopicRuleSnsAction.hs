
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleSnsAction where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleSnsAction. See
-- 'ioTTopicRuleSnsAction' for a more convenient constructor.
data IoTTopicRuleSnsAction =
  IoTTopicRuleSnsAction
  { _ioTTopicRuleSnsActionMessageFormat :: Maybe (Val Text)
  , _ioTTopicRuleSnsActionRoleArn :: Val Text
  , _ioTTopicRuleSnsActionTargetArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleSnsAction where
  toJSON IoTTopicRuleSnsAction{..} =
    object $
    catMaybes
    [ fmap (("MessageFormat",) . toJSON) _ioTTopicRuleSnsActionMessageFormat
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleSnsActionRoleArn
    , (Just . ("TargetArn",) . toJSON) _ioTTopicRuleSnsActionTargetArn
    ]

-- | Constructor for 'IoTTopicRuleSnsAction' containing required fields as
-- arguments.
ioTTopicRuleSnsAction
  :: Val Text -- ^ 'ittrsnaRoleArn'
  -> Val Text -- ^ 'ittrsnaTargetArn'
  -> IoTTopicRuleSnsAction
ioTTopicRuleSnsAction roleArnarg targetArnarg =
  IoTTopicRuleSnsAction
  { _ioTTopicRuleSnsActionMessageFormat = Nothing
  , _ioTTopicRuleSnsActionRoleArn = roleArnarg
  , _ioTTopicRuleSnsActionTargetArn = targetArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-messageformat
ittrsnaMessageFormat :: Lens' IoTTopicRuleSnsAction (Maybe (Val Text))
ittrsnaMessageFormat = lens _ioTTopicRuleSnsActionMessageFormat (\s a -> s { _ioTTopicRuleSnsActionMessageFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-rolearn
ittrsnaRoleArn :: Lens' IoTTopicRuleSnsAction (Val Text)
ittrsnaRoleArn = lens _ioTTopicRuleSnsActionRoleArn (\s a -> s { _ioTTopicRuleSnsActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-targetarn
ittrsnaTargetArn :: Lens' IoTTopicRuleSnsAction (Val Text)
ittrsnaTargetArn = lens _ioTTopicRuleSnsActionTargetArn (\s a -> s { _ioTTopicRuleSnsActionTargetArn = a })
