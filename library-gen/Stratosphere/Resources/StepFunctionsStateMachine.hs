{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html

module Stratosphere.Resources.StepFunctionsStateMachine where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.StepFunctionsStateMachineS3Location
import Stratosphere.ResourceProperties.StepFunctionsStateMachineLoggingConfiguration
import Stratosphere.ResourceProperties.StepFunctionsStateMachineTagsEntry
import Stratosphere.ResourceProperties.StepFunctionsStateMachineTracingConfiguration

-- | Full data type definition for StepFunctionsStateMachine. See
-- 'stepFunctionsStateMachine' for a more convenient constructor.
data StepFunctionsStateMachine =
  StepFunctionsStateMachine
  { _stepFunctionsStateMachineDefinitionS3Location :: Maybe StepFunctionsStateMachineS3Location
  , _stepFunctionsStateMachineDefinitionString :: Maybe (Val Text)
  , _stepFunctionsStateMachineLoggingConfiguration :: Maybe StepFunctionsStateMachineLoggingConfiguration
  , _stepFunctionsStateMachineRoleArn :: Val Text
  , _stepFunctionsStateMachineStateMachineName :: Maybe (Val Text)
  , _stepFunctionsStateMachineStateMachineType :: Maybe (Val Text)
  , _stepFunctionsStateMachineTags :: Maybe [StepFunctionsStateMachineTagsEntry]
  , _stepFunctionsStateMachineTracingConfiguration :: Maybe StepFunctionsStateMachineTracingConfiguration
  } deriving (Show, Eq)

instance ToResourceProperties StepFunctionsStateMachine where
  toResourceProperties StepFunctionsStateMachine{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::StepFunctions::StateMachine"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("DefinitionS3Location",) . toJSON) _stepFunctionsStateMachineDefinitionS3Location
        , fmap (("DefinitionString",) . toJSON) _stepFunctionsStateMachineDefinitionString
        , fmap (("LoggingConfiguration",) . toJSON) _stepFunctionsStateMachineLoggingConfiguration
        , (Just . ("RoleArn",) . toJSON) _stepFunctionsStateMachineRoleArn
        , fmap (("StateMachineName",) . toJSON) _stepFunctionsStateMachineStateMachineName
        , fmap (("StateMachineType",) . toJSON) _stepFunctionsStateMachineStateMachineType
        , fmap (("Tags",) . toJSON) _stepFunctionsStateMachineTags
        , fmap (("TracingConfiguration",) . toJSON) _stepFunctionsStateMachineTracingConfiguration
        ]
    }

-- | Constructor for 'StepFunctionsStateMachine' containing required fields as
-- arguments.
stepFunctionsStateMachine
  :: Val Text -- ^ 'sfsmRoleArn'
  -> StepFunctionsStateMachine
stepFunctionsStateMachine roleArnarg =
  StepFunctionsStateMachine
  { _stepFunctionsStateMachineDefinitionS3Location = Nothing
  , _stepFunctionsStateMachineDefinitionString = Nothing
  , _stepFunctionsStateMachineLoggingConfiguration = Nothing
  , _stepFunctionsStateMachineRoleArn = roleArnarg
  , _stepFunctionsStateMachineStateMachineName = Nothing
  , _stepFunctionsStateMachineStateMachineType = Nothing
  , _stepFunctionsStateMachineTags = Nothing
  , _stepFunctionsStateMachineTracingConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-definitions3location
sfsmDefinitionS3Location :: Lens' StepFunctionsStateMachine (Maybe StepFunctionsStateMachineS3Location)
sfsmDefinitionS3Location = lens _stepFunctionsStateMachineDefinitionS3Location (\s a -> s { _stepFunctionsStateMachineDefinitionS3Location = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-definitionstring
sfsmDefinitionString :: Lens' StepFunctionsStateMachine (Maybe (Val Text))
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-tracingconfiguration
sfsmTracingConfiguration :: Lens' StepFunctionsStateMachine (Maybe StepFunctionsStateMachineTracingConfiguration)
sfsmTracingConfiguration = lens _stepFunctionsStateMachineTracingConfiguration (\s a -> s { _stepFunctionsStateMachineTracingConfiguration = a })
