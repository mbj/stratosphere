{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html

module Stratosphere.Resources.StepFunctionsStateMachine where

import Stratosphere.ResourceImports


-- | Full data type definition for StepFunctionsStateMachine. See
-- 'stepFunctionsStateMachine' for a more convenient constructor.
data StepFunctionsStateMachine =
  StepFunctionsStateMachine
  { _stepFunctionsStateMachineDefinitionString :: Val Text
  , _stepFunctionsStateMachineRoleArn :: Val Text
  , _stepFunctionsStateMachineStateMachineName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON StepFunctionsStateMachine where
  toJSON StepFunctionsStateMachine{..} =
    object $
    catMaybes
    [ (Just . ("DefinitionString",) . toJSON) _stepFunctionsStateMachineDefinitionString
    , (Just . ("RoleArn",) . toJSON) _stepFunctionsStateMachineRoleArn
    , fmap (("StateMachineName",) . toJSON) _stepFunctionsStateMachineStateMachineName
    ]

instance FromJSON StepFunctionsStateMachine where
  parseJSON (Object obj) =
    StepFunctionsStateMachine <$>
      (obj .: "DefinitionString") <*>
      (obj .: "RoleArn") <*>
      (obj .:? "StateMachineName")
  parseJSON _ = mempty

-- | Constructor for 'StepFunctionsStateMachine' containing required fields as
-- arguments.
stepFunctionsStateMachine
  :: Val Text -- ^ 'sfsmDefinitionString'
  -> Val Text -- ^ 'sfsmRoleArn'
  -> StepFunctionsStateMachine
stepFunctionsStateMachine definitionStringarg roleArnarg =
  StepFunctionsStateMachine
  { _stepFunctionsStateMachineDefinitionString = definitionStringarg
  , _stepFunctionsStateMachineRoleArn = roleArnarg
  , _stepFunctionsStateMachineStateMachineName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-definitionstring
sfsmDefinitionString :: Lens' StepFunctionsStateMachine (Val Text)
sfsmDefinitionString = lens _stepFunctionsStateMachineDefinitionString (\s a -> s { _stepFunctionsStateMachineDefinitionString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-rolearn
sfsmRoleArn :: Lens' StepFunctionsStateMachine (Val Text)
sfsmRoleArn = lens _stepFunctionsStateMachineRoleArn (\s a -> s { _stepFunctionsStateMachineRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-statemachinename
sfsmStateMachineName :: Lens' StepFunctionsStateMachine (Maybe (Val Text))
sfsmStateMachineName = lens _stepFunctionsStateMachineStateMachineName (\s a -> s { _stepFunctionsStateMachineStateMachineName = a })
