{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html

module Stratosphere.Resources.StepFunctionsStateMachine where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.StepFunctionsStateMachineLoggingConfiguration
import Stratosphere.ResourceProperties.StepFunctionsStateMachineTagsEntry

-- | Full data type definition for StepFunctionsStateMachine. See
-- 'stepFunctionsStateMachine' for a more convenient constructor.
data StepFunctionsStateMachine =
  StepFunctionsStateMachine
  { _stepFunctionsStateMachineDefinitionString :: Val Text
  , _stepFunctionsStateMachineLoggingConfiguration :: Maybe StepFunctionsStateMachineLoggingConfiguration
  , _stepFunctionsStateMachineRoleArn :: Val Text
  , _stepFunctionsStateMachineStateMachineName :: Maybe (Val Text)
  , _stepFunctionsStateMachineStateMachineType :: Maybe (Val Text)
  , _stepFunctionsStateMachineTags :: Maybe [StepFunctionsStateMachineTagsEntry]
  } deriving (Show, Eq)

instance ToResourceProperties StepFunctionsStateMachine where
  toResourceProperties StepFunctionsStateMachine{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::StepFunctions::StateMachine"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("DefinitionString",) . toJSON) _stepFunctionsStateMachineDefinitionString
        , fmap (("LoggingConfiguration",) . toJSON) _stepFunctionsStateMachineLoggingConfiguration
        , (Just . ("RoleArn",) . toJSON) _stepFunctionsStateMachineRoleArn
        , fmap (("StateMachineName",) . toJSON) _stepFunctionsStateMachineStateMachineName
        , fmap (("StateMachineType",) . toJSON) _stepFunctionsStateMachineStateMachineType
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
  , _stepFunctionsStateMachineLoggingConfiguration = Nothing
  , _stepFunctionsStateMachineRoleArn = roleArnarg
  , _stepFunctionsStateMachineStateMachineName = Nothing
  , _stepFunctionsStateMachineStateMachineType = Nothing
  , _stepFunctionsStateMachineTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-definitionstring
sfsmDefinitionString :: Lens' StepFunctionsStateMachine (Val Text)
sfsmDefinitionString = lens _stepFunctionsStateMachineDefinitionString (\s a -> s { _stepFunctionsStateMachineDefinitionString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-loggingconfiguration
sfsmLoggingConfiguration :: Lens' StepFunctionsStateMachine (Maybe StepFunctionsStateMachineLoggingConfiguration)
sfsmLoggingConfiguration = lens _stepFunctionsStateMachineLoggingConfiguration (\s a -> s { _stepFunctionsStateMachineLoggingConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-rolearn
sfsmRoleArn :: Lens' StepFunctionsStateMachine (Val Text)
sfsmRoleArn = lens _stepFunctionsStateMachineRoleArn (\s a -> s { _stepFunctionsStateMachineRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-statemachinename
sfsmStateMachineName :: Lens' StepFunctionsStateMachine (Maybe (Val Text))
sfsmStateMachineName = lens _stepFunctionsStateMachineStateMachineName (\s a -> s { _stepFunctionsStateMachineStateMachineName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-statemachinetype
sfsmStateMachineType :: Lens' StepFunctionsStateMachine (Maybe (Val Text))
sfsmStateMachineType = lens _stepFunctionsStateMachineStateMachineType (\s a -> s { _stepFunctionsStateMachineStateMachineType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-tags
sfsmTags :: Lens' StepFunctionsStateMachine (Maybe [StepFunctionsStateMachineTagsEntry])
sfsmTags = lens _stepFunctionsStateMachineTags (\s a -> s { _stepFunctionsStateMachineTags = a })
