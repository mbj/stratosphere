{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringoutputconfig.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringOutputConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringOutput

-- | Full data type definition for
-- SageMakerMonitoringScheduleMonitoringOutputConfig. See
-- 'sageMakerMonitoringScheduleMonitoringOutputConfig' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleMonitoringOutputConfig =
  SageMakerMonitoringScheduleMonitoringOutputConfig
  { _sageMakerMonitoringScheduleMonitoringOutputConfigKmsKeyId :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleMonitoringOutputConfigMonitoringOutputs :: [SageMakerMonitoringScheduleMonitoringOutput]
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleMonitoringOutputConfig where
  toJSON SageMakerMonitoringScheduleMonitoringOutputConfig{..} =
    object $
    catMaybes
    [ fmap (("KmsKeyId",) . toJSON) _sageMakerMonitoringScheduleMonitoringOutputConfigKmsKeyId
    , (Just . ("MonitoringOutputs",) . toJSON) _sageMakerMonitoringScheduleMonitoringOutputConfigMonitoringOutputs
    ]

-- | Constructor for 'SageMakerMonitoringScheduleMonitoringOutputConfig'
-- containing required fields as arguments.
sageMakerMonitoringScheduleMonitoringOutputConfig
  :: [SageMakerMonitoringScheduleMonitoringOutput] -- ^ 'smmsmocMonitoringOutputs'
  -> SageMakerMonitoringScheduleMonitoringOutputConfig
sageMakerMonitoringScheduleMonitoringOutputConfig monitoringOutputsarg =
  SageMakerMonitoringScheduleMonitoringOutputConfig
  { _sageMakerMonitoringScheduleMonitoringOutputConfigKmsKeyId = Nothing
  , _sageMakerMonitoringScheduleMonitoringOutputConfigMonitoringOutputs = monitoringOutputsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringoutputconfig.html#cfn-sagemaker-monitoringschedule-monitoringoutputconfig-kmskeyid
smmsmocKmsKeyId :: Lens' SageMakerMonitoringScheduleMonitoringOutputConfig (Maybe (Val Text))
smmsmocKmsKeyId = lens _sageMakerMonitoringScheduleMonitoringOutputConfigKmsKeyId (\s a -> s { _sageMakerMonitoringScheduleMonitoringOutputConfigKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringoutputconfig.html#cfn-sagemaker-monitoringschedule-monitoringoutputconfig-monitoringoutputs
smmsmocMonitoringOutputs :: Lens' SageMakerMonitoringScheduleMonitoringOutputConfig [SageMakerMonitoringScheduleMonitoringOutput]
smmsmocMonitoringOutputs = lens _sageMakerMonitoringScheduleMonitoringOutputConfigMonitoringOutputs (\s a -> s { _sageMakerMonitoringScheduleMonitoringOutputConfigMonitoringOutputs = a })
