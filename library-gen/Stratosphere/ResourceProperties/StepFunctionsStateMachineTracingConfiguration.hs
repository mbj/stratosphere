
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tracingconfiguration.html

module Stratosphere.ResourceProperties.StepFunctionsStateMachineTracingConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- StepFunctionsStateMachineTracingConfiguration. See
-- 'stepFunctionsStateMachineTracingConfiguration' for a more convenient
-- constructor.
data StepFunctionsStateMachineTracingConfiguration =
  StepFunctionsStateMachineTracingConfiguration
  { _stepFunctionsStateMachineTracingConfigurationEnabled :: Val Bool
  } deriving (Show, Eq)

instance ToJSON StepFunctionsStateMachineTracingConfiguration where
  toJSON StepFunctionsStateMachineTracingConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("Enabled",) . toJSON) _stepFunctionsStateMachineTracingConfigurationEnabled
    ]

-- | Constructor for 'StepFunctionsStateMachineTracingConfiguration'
-- containing required fields as arguments.
stepFunctionsStateMachineTracingConfiguration
  :: Val Bool -- ^ 'sfsmtcEnabled'
  -> StepFunctionsStateMachineTracingConfiguration
stepFunctionsStateMachineTracingConfiguration enabledarg =
  StepFunctionsStateMachineTracingConfiguration
  { _stepFunctionsStateMachineTracingConfigurationEnabled = enabledarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tracingconfiguration.html#cfn-stepfunctions-statemachine-tracingconfiguration-enabled
sfsmtcEnabled :: Lens' StepFunctionsStateMachineTracingConfiguration (Val Bool)
sfsmtcEnabled = lens _stepFunctionsStateMachineTracingConfigurationEnabled (\s a -> s { _stepFunctionsStateMachineTracingConfigurationEnabled = a })
