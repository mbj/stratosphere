{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html

module Stratosphere.Resources.StepFunctionsStateMachine where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.StepFunctionsStateMachineTagsEntry

-- | Full data type definition for StepFunctionsStateMachine. See
-- 'stepFunctionsStateMachine' for a more convenient constructor.
data StepFunctionsStateMachine =
  StepFunctionsStateMachine
  { _stepFunctionsStateMachineDefinitionString :: Val Text
  , _stepFunctionsStateMachineRoleArn :: Val Text
  , _stepFunctionsStateMachineStateMachineName :: Maybe (Val Text)
  , _stepFunctionsStateMachineTags :: Maybe [StepFunctionsStateMachineTagsEntry]
  } deriving (Show, Eq)

instance ToResourceProperties StepFunctionsStateMachine where
  toResourceProperties StepFunctionsStateMachine{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::StepFunctions::StateMachine"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("DefinitionString",) . toJSON) _stepFunctionsStateMachineDefinitionString
        , (Just . ("RoleArn",) . toJSON) _stepFunctionsStateMachineRoleArn
        , fmap (("StateMachineName",) . toJSON) _stepFunctionsStateMachineStateMachineName
        , fmap (("Tags",) . toJSON) _stepFunctionsStateMachineTags
        ]
    }

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
  , _stepFunctionsStateMachineTags = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-tags
sfsmTags :: Lens' StepFunctionsStateMachine (Maybe [StepFunctionsStateMachineTagsEntry])
sfsmTags = lens _stepFunctionsStateMachineTags (\s a -> s { _stepFunctionsStateMachineTags = a })
