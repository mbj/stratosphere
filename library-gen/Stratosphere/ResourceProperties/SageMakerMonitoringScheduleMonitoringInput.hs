
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringinput.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringInput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleEndpointInput

-- | Full data type definition for SageMakerMonitoringScheduleMonitoringInput.
-- See 'sageMakerMonitoringScheduleMonitoringInput' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleMonitoringInput =
  SageMakerMonitoringScheduleMonitoringInput
  { _sageMakerMonitoringScheduleMonitoringInputEndpointInput :: SageMakerMonitoringScheduleEndpointInput
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleMonitoringInput where
  toJSON SageMakerMonitoringScheduleMonitoringInput{..} =
    object $
    catMaybes
    [ (Just . ("EndpointInput",) . toJSON) _sageMakerMonitoringScheduleMonitoringInputEndpointInput
    ]

-- | Constructor for 'SageMakerMonitoringScheduleMonitoringInput' containing
-- required fields as arguments.
sageMakerMonitoringScheduleMonitoringInput
  :: SageMakerMonitoringScheduleEndpointInput -- ^ 'smmsmiEndpointInput'
  -> SageMakerMonitoringScheduleMonitoringInput
sageMakerMonitoringScheduleMonitoringInput endpointInputarg =
  SageMakerMonitoringScheduleMonitoringInput
  { _sageMakerMonitoringScheduleMonitoringInputEndpointInput = endpointInputarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringinput.html#cfn-sagemaker-monitoringschedule-monitoringinput-endpointinput
smmsmiEndpointInput :: Lens' SageMakerMonitoringScheduleMonitoringInput SageMakerMonitoringScheduleEndpointInput
smmsmiEndpointInput = lens _sageMakerMonitoringScheduleMonitoringInputEndpointInput (\s a -> s { _sageMakerMonitoringScheduleMonitoringInputEndpointInput = a })
