
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleStepFunctionsAction where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleStepFunctionsAction. See
-- 'ioTTopicRuleStepFunctionsAction' for a more convenient constructor.
data IoTTopicRuleStepFunctionsAction =
  IoTTopicRuleStepFunctionsAction
  { _ioTTopicRuleStepFunctionsActionExecutionNamePrefix :: Maybe (Val Text)
  , _ioTTopicRuleStepFunctionsActionRoleArn :: Val Text
  , _ioTTopicRuleStepFunctionsActionStateMachineName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleStepFunctionsAction where
  toJSON IoTTopicRuleStepFunctionsAction{..} =
    object $
    catMaybes
    [ fmap (("ExecutionNamePrefix",) . toJSON) _ioTTopicRuleStepFunctionsActionExecutionNamePrefix
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleStepFunctionsActionRoleArn
    , (Just . ("StateMachineName",) . toJSON) _ioTTopicRuleStepFunctionsActionStateMachineName
    ]

-- | Constructor for 'IoTTopicRuleStepFunctionsAction' containing required
-- fields as arguments.
ioTTopicRuleStepFunctionsAction
  :: Val Text -- ^ 'ittrsfaRoleArn'
  -> Val Text -- ^ 'ittrsfaStateMachineName'
  -> IoTTopicRuleStepFunctionsAction
ioTTopicRuleStepFunctionsAction roleArnarg stateMachineNamearg =
  IoTTopicRuleStepFunctionsAction
  { _ioTTopicRuleStepFunctionsActionExecutionNamePrefix = Nothing
  , _ioTTopicRuleStepFunctionsActionRoleArn = roleArnarg
  , _ioTTopicRuleStepFunctionsActionStateMachineName = stateMachineNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html#cfn-iot-topicrule-stepfunctionsaction-executionnameprefix
ittrsfaExecutionNamePrefix :: Lens' IoTTopicRuleStepFunctionsAction (Maybe (Val Text))
ittrsfaExecutionNamePrefix = lens _ioTTopicRuleStepFunctionsActionExecutionNamePrefix (\s a -> s { _ioTTopicRuleStepFunctionsActionExecutionNamePrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html#cfn-iot-topicrule-stepfunctionsaction-rolearn
ittrsfaRoleArn :: Lens' IoTTopicRuleStepFunctionsAction (Val Text)
ittrsfaRoleArn = lens _ioTTopicRuleStepFunctionsActionRoleArn (\s a -> s { _ioTTopicRuleStepFunctionsActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html#cfn-iot-topicrule-stepfunctionsaction-statemachinename
ittrsfaStateMachineName :: Lens' IoTTopicRuleStepFunctionsAction (Val Text)
ittrsfaStateMachineName = lens _ioTTopicRuleStepFunctionsActionStateMachineName (\s a -> s { _ioTTopicRuleStepFunctionsActionStateMachineName = a })
