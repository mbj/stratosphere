
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-lambdaaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleLambdaAction where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleLambdaAction. See
-- 'ioTTopicRuleLambdaAction' for a more convenient constructor.
data IoTTopicRuleLambdaAction =
  IoTTopicRuleLambdaAction
  { _ioTTopicRuleLambdaActionFunctionArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleLambdaAction where
  toJSON IoTTopicRuleLambdaAction{..} =
    object $
    catMaybes
    [ fmap (("FunctionArn",) . toJSON) _ioTTopicRuleLambdaActionFunctionArn
    ]

-- | Constructor for 'IoTTopicRuleLambdaAction' containing required fields as
-- arguments.
ioTTopicRuleLambdaAction
  :: IoTTopicRuleLambdaAction
ioTTopicRuleLambdaAction  =
  IoTTopicRuleLambdaAction
  { _ioTTopicRuleLambdaActionFunctionArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-lambdaaction.html#cfn-iot-topicrule-lambdaaction-functionarn
ittrlaFunctionArn :: Lens' IoTTopicRuleLambdaAction (Maybe (Val Text))
ittrlaFunctionArn = lens _ioTTopicRuleLambdaActionFunctionArn (\s a -> s { _ioTTopicRuleLambdaActionFunctionArn = a })
