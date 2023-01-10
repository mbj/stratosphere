
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html

module Stratosphere.ResourceProperties.StepFunctionsStateMachineLoggingConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.StepFunctionsStateMachineLogDestination

-- | Full data type definition for
-- StepFunctionsStateMachineLoggingConfiguration. See
-- 'stepFunctionsStateMachineLoggingConfiguration' for a more convenient
-- constructor.
data StepFunctionsStateMachineLoggingConfiguration =
  StepFunctionsStateMachineLoggingConfiguration
  { _stepFunctionsStateMachineLoggingConfigurationDestinations :: Maybe [StepFunctionsStateMachineLogDestination]
  , _stepFunctionsStateMachineLoggingConfigurationIncludeExecutionData :: Maybe (Val Bool)
  , _stepFunctionsStateMachineLoggingConfigurationLevel :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON StepFunctionsStateMachineLoggingConfiguration where
  toJSON StepFunctionsStateMachineLoggingConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Destinations",) . toJSON) _stepFunctionsStateMachineLoggingConfigurationDestinations
    , fmap (("IncludeExecutionData",) . toJSON) _stepFunctionsStateMachineLoggingConfigurationIncludeExecutionData
    , fmap (("Level",) . toJSON) _stepFunctionsStateMachineLoggingConfigurationLevel
    ]

-- | Constructor for 'StepFunctionsStateMachineLoggingConfiguration'
-- containing required fields as arguments.
stepFunctionsStateMachineLoggingConfiguration
  :: StepFunctionsStateMachineLoggingConfiguration
stepFunctionsStateMachineLoggingConfiguration  =
  StepFunctionsStateMachineLoggingConfiguration
  { _stepFunctionsStateMachineLoggingConfigurationDestinations = Nothing
  , _stepFunctionsStateMachineLoggingConfigurationIncludeExecutionData = Nothing
  , _stepFunctionsStateMachineLoggingConfigurationLevel = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-destinations
sfsmlcDestinations :: Lens' StepFunctionsStateMachineLoggingConfiguration (Maybe [StepFunctionsStateMachineLogDestination])
sfsmlcDestinations = lens _stepFunctionsStateMachineLoggingConfigurationDestinations (\s a -> s { _stepFunctionsStateMachineLoggingConfigurationDestinations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-includeexecutiondata
sfsmlcIncludeExecutionData :: Lens' StepFunctionsStateMachineLoggingConfiguration (Maybe (Val Bool))
sfsmlcIncludeExecutionData = lens _stepFunctionsStateMachineLoggingConfigurationIncludeExecutionData (\s a -> s { _stepFunctionsStateMachineLoggingConfigurationIncludeExecutionData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-level
sfsmlcLevel :: Lens' StepFunctionsStateMachineLoggingConfiguration (Maybe (Val Text))
sfsmlcLevel = lens _stepFunctionsStateMachineLoggingConfigurationLevel (\s a -> s { _stepFunctionsStateMachineLoggingConfigurationLevel = a })
