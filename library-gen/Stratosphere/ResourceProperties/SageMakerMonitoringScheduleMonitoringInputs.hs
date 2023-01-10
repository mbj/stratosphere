
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringinputs.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringInputs where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringInput

-- | Full data type definition for
-- SageMakerMonitoringScheduleMonitoringInputs. See
-- 'sageMakerMonitoringScheduleMonitoringInputs' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleMonitoringInputs =
  SageMakerMonitoringScheduleMonitoringInputs
  { _sageMakerMonitoringScheduleMonitoringInputsMonitoringInputs :: Maybe [SageMakerMonitoringScheduleMonitoringInput]
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleMonitoringInputs where
  toJSON SageMakerMonitoringScheduleMonitoringInputs{..} =
    object $
    catMaybes
    [ fmap (("MonitoringInputs",) . toJSON) _sageMakerMonitoringScheduleMonitoringInputsMonitoringInputs
    ]

-- | Constructor for 'SageMakerMonitoringScheduleMonitoringInputs' containing
-- required fields as arguments.
sageMakerMonitoringScheduleMonitoringInputs
  :: SageMakerMonitoringScheduleMonitoringInputs
sageMakerMonitoringScheduleMonitoringInputs  =
  SageMakerMonitoringScheduleMonitoringInputs
  { _sageMakerMonitoringScheduleMonitoringInputsMonitoringInputs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringinputs.html#cfn-sagemaker-monitoringschedule-monitoringinputs-monitoringinputs
smmsmiMonitoringInputs :: Lens' SageMakerMonitoringScheduleMonitoringInputs (Maybe [SageMakerMonitoringScheduleMonitoringInput])
smmsmiMonitoringInputs = lens _sageMakerMonitoringScheduleMonitoringInputsMonitoringInputs (\s a -> s { _sageMakerMonitoringScheduleMonitoringInputsMonitoringInputs = a })
