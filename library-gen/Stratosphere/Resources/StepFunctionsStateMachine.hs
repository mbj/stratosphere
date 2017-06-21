{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html

module Stratosphere.Resources.StepFunctionsStateMachine where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for StepFunctionsStateMachine. See
-- 'stepFunctionsStateMachine' for a more convenient constructor.
data StepFunctionsStateMachine =
  StepFunctionsStateMachine
  { _stepFunctionsStateMachineDefinitionString :: Val Text
  , _stepFunctionsStateMachineRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON StepFunctionsStateMachine where
  toJSON StepFunctionsStateMachine{..} =
    object $
    catMaybes
    [ Just ("DefinitionString" .= _stepFunctionsStateMachineDefinitionString)
    , Just ("RoleArn" .= _stepFunctionsStateMachineRoleArn)
    ]

instance FromJSON StepFunctionsStateMachine where
  parseJSON (Object obj) =
    StepFunctionsStateMachine <$>
      obj .: "DefinitionString" <*>
      obj .: "RoleArn"
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
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-definitionstring
sfsmDefinitionString :: Lens' StepFunctionsStateMachine (Val Text)
sfsmDefinitionString = lens _stepFunctionsStateMachineDefinitionString (\s a -> s { _stepFunctionsStateMachineDefinitionString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-rolearn
sfsmRoleArn :: Lens' StepFunctionsStateMachine (Val Text)
sfsmRoleArn = lens _stepFunctionsStateMachineRoleArn (\s a -> s { _stepFunctionsStateMachineRoleArn = a })
