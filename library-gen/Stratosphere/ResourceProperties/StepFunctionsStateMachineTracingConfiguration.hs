{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tracingconfiguration.html

module Stratosphere.ResourceProperties.StepFunctionsStateMachineTracingConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- StepFunctionsStateMachineTracingConfiguration. See
-- 'stepFunctionsStateMachineTracingConfiguration' for a more convenient
-- constructor.
data StepFunctionsStateMachineTracingConfiguration =
  StepFunctionsStateMachineTracingConfiguration
  { _stepFunctionsStateMachineTracingConfigurationEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON StepFunctionsStateMachineTracingConfiguration where
  toJSON StepFunctionsStateMachineTracingConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Enabled",) . toJSON) _stepFunctionsStateMachineTracingConfigurationEnabled
    ]

-- | Constructor for 'StepFunctionsStateMachineTracingConfiguration'
-- containing required fields as arguments.
stepFunctionsStateMachineTracingConfiguration
  :: StepFunctionsStateMachineTracingConfiguration
stepFunctionsStateMachineTracingConfiguration  =
  StepFunctionsStateMachineTracingConfiguration
  { _stepFunctionsStateMachineTracingConfigurationEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tracingconfiguration.html#cfn-stepfunctions-statemachine-tracingconfiguration-enabled
sfsmtcEnabled :: Lens' StepFunctionsStateMachineTracingConfiguration (Maybe (Val Bool))
sfsmtcEnabled = lens _stepFunctionsStateMachineTracingConfigurationEnabled (\s a -> s { _stepFunctionsStateMachineTracingConfigurationEnabled = a })
