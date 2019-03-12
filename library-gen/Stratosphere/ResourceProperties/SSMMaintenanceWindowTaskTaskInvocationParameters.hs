{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html

module Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskTaskInvocationParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters
import Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters
import Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters
import Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters

-- | Full data type definition for
-- SSMMaintenanceWindowTaskTaskInvocationParameters. See
-- 'ssmMaintenanceWindowTaskTaskInvocationParameters' for a more convenient
-- constructor.
data SSMMaintenanceWindowTaskTaskInvocationParameters =
  SSMMaintenanceWindowTaskTaskInvocationParameters
  { _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowAutomationParameters :: Maybe SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters
  , _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowLambdaParameters :: Maybe SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters
  , _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowRunCommandParameters :: Maybe SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters
  , _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowStepFunctionsParameters :: Maybe SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters
  } deriving (Show, Eq)

instance ToJSON SSMMaintenanceWindowTaskTaskInvocationParameters where
  toJSON SSMMaintenanceWindowTaskTaskInvocationParameters{..} =
    object $
    catMaybes
    [ fmap (("MaintenanceWindowAutomationParameters",) . toJSON) _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowAutomationParameters
    , fmap (("MaintenanceWindowLambdaParameters",) . toJSON) _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowLambdaParameters
    , fmap (("MaintenanceWindowRunCommandParameters",) . toJSON) _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowRunCommandParameters
    , fmap (("MaintenanceWindowStepFunctionsParameters",) . toJSON) _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowStepFunctionsParameters
    ]

-- | Constructor for 'SSMMaintenanceWindowTaskTaskInvocationParameters'
-- containing required fields as arguments.
ssmMaintenanceWindowTaskTaskInvocationParameters
  :: SSMMaintenanceWindowTaskTaskInvocationParameters
ssmMaintenanceWindowTaskTaskInvocationParameters  =
  SSMMaintenanceWindowTaskTaskInvocationParameters
  { _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowAutomationParameters = Nothing
  , _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowLambdaParameters = Nothing
  , _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowRunCommandParameters = Nothing
  , _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowStepFunctionsParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters
ssmmwttipMaintenanceWindowAutomationParameters :: Lens' SSMMaintenanceWindowTaskTaskInvocationParameters (Maybe SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters)
ssmmwttipMaintenanceWindowAutomationParameters = lens _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowAutomationParameters (\s a -> s { _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowAutomationParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters
ssmmwttipMaintenanceWindowLambdaParameters :: Lens' SSMMaintenanceWindowTaskTaskInvocationParameters (Maybe SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters)
ssmmwttipMaintenanceWindowLambdaParameters = lens _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowLambdaParameters (\s a -> s { _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowLambdaParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters
ssmmwttipMaintenanceWindowRunCommandParameters :: Lens' SSMMaintenanceWindowTaskTaskInvocationParameters (Maybe SSMMaintenanceWindowTaskMaintenanceWindowRunCommandParameters)
ssmmwttipMaintenanceWindowRunCommandParameters = lens _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowRunCommandParameters (\s a -> s { _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowRunCommandParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowstepfunctionsparameters
ssmmwttipMaintenanceWindowStepFunctionsParameters :: Lens' SSMMaintenanceWindowTaskTaskInvocationParameters (Maybe SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters)
ssmmwttipMaintenanceWindowStepFunctionsParameters = lens _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowStepFunctionsParameters (\s a -> s { _sSMMaintenanceWindowTaskTaskInvocationParametersMaintenanceWindowStepFunctionsParameters = a })
