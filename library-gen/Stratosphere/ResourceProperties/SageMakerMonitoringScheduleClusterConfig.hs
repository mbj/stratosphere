
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-clusterconfig.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleClusterConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerMonitoringScheduleClusterConfig.
-- See 'sageMakerMonitoringScheduleClusterConfig' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleClusterConfig =
  SageMakerMonitoringScheduleClusterConfig
  { _sageMakerMonitoringScheduleClusterConfigInstanceCount :: Val Integer
  , _sageMakerMonitoringScheduleClusterConfigInstanceType :: Val Text
  , _sageMakerMonitoringScheduleClusterConfigVolumeKmsKeyId :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleClusterConfigVolumeSizeInGB :: Val Integer
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleClusterConfig where
  toJSON SageMakerMonitoringScheduleClusterConfig{..} =
    object $
    catMaybes
    [ (Just . ("InstanceCount",) . toJSON) _sageMakerMonitoringScheduleClusterConfigInstanceCount
    , (Just . ("InstanceType",) . toJSON) _sageMakerMonitoringScheduleClusterConfigInstanceType
    , fmap (("VolumeKmsKeyId",) . toJSON) _sageMakerMonitoringScheduleClusterConfigVolumeKmsKeyId
    , (Just . ("VolumeSizeInGB",) . toJSON) _sageMakerMonitoringScheduleClusterConfigVolumeSizeInGB
    ]

-- | Constructor for 'SageMakerMonitoringScheduleClusterConfig' containing
-- required fields as arguments.
sageMakerMonitoringScheduleClusterConfig
  :: Val Integer -- ^ 'smmsccInstanceCount'
  -> Val Text -- ^ 'smmsccInstanceType'
  -> Val Integer -- ^ 'smmsccVolumeSizeInGB'
  -> SageMakerMonitoringScheduleClusterConfig
sageMakerMonitoringScheduleClusterConfig instanceCountarg instanceTypearg volumeSizeInGBarg =
  SageMakerMonitoringScheduleClusterConfig
  { _sageMakerMonitoringScheduleClusterConfigInstanceCount = instanceCountarg
  , _sageMakerMonitoringScheduleClusterConfigInstanceType = instanceTypearg
  , _sageMakerMonitoringScheduleClusterConfigVolumeKmsKeyId = Nothing
  , _sageMakerMonitoringScheduleClusterConfigVolumeSizeInGB = volumeSizeInGBarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-clusterconfig.html#cfn-sagemaker-monitoringschedule-clusterconfig-instancecount
smmsccInstanceCount :: Lens' SageMakerMonitoringScheduleClusterConfig (Val Integer)
smmsccInstanceCount = lens _sageMakerMonitoringScheduleClusterConfigInstanceCount (\s a -> s { _sageMakerMonitoringScheduleClusterConfigInstanceCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-clusterconfig.html#cfn-sagemaker-monitoringschedule-clusterconfig-instancetype
smmsccInstanceType :: Lens' SageMakerMonitoringScheduleClusterConfig (Val Text)
smmsccInstanceType = lens _sageMakerMonitoringScheduleClusterConfigInstanceType (\s a -> s { _sageMakerMonitoringScheduleClusterConfigInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-clusterconfig.html#cfn-sagemaker-monitoringschedule-clusterconfig-volumekmskeyid
smmsccVolumeKmsKeyId :: Lens' SageMakerMonitoringScheduleClusterConfig (Maybe (Val Text))
smmsccVolumeKmsKeyId = lens _sageMakerMonitoringScheduleClusterConfigVolumeKmsKeyId (\s a -> s { _sageMakerMonitoringScheduleClusterConfigVolumeKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-clusterconfig.html#cfn-sagemaker-monitoringschedule-clusterconfig-volumesizeingb
smmsccVolumeSizeInGB :: Lens' SageMakerMonitoringScheduleClusterConfig (Val Integer)
smmsccVolumeSizeInGB = lens _sageMakerMonitoringScheduleClusterConfigVolumeSizeInGB (\s a -> s { _sageMakerMonitoringScheduleClusterConfigVolumeSizeInGB = a })
