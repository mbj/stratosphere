{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringresources.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringResources where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleClusterConfig

-- | Full data type definition for
-- SageMakerMonitoringScheduleMonitoringResources. See
-- 'sageMakerMonitoringScheduleMonitoringResources' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleMonitoringResources =
  SageMakerMonitoringScheduleMonitoringResources
  { _sageMakerMonitoringScheduleMonitoringResourcesClusterConfig :: SageMakerMonitoringScheduleClusterConfig
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleMonitoringResources where
  toJSON SageMakerMonitoringScheduleMonitoringResources{..} =
    object $
    catMaybes
    [ (Just . ("ClusterConfig",) . toJSON) _sageMakerMonitoringScheduleMonitoringResourcesClusterConfig
    ]

-- | Constructor for 'SageMakerMonitoringScheduleMonitoringResources'
-- containing required fields as arguments.
sageMakerMonitoringScheduleMonitoringResources
  :: SageMakerMonitoringScheduleClusterConfig -- ^ 'smmsmrClusterConfig'
  -> SageMakerMonitoringScheduleMonitoringResources
sageMakerMonitoringScheduleMonitoringResources clusterConfigarg =
  SageMakerMonitoringScheduleMonitoringResources
  { _sageMakerMonitoringScheduleMonitoringResourcesClusterConfig = clusterConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringresources.html#cfn-sagemaker-monitoringschedule-monitoringresources-clusterconfig
smmsmrClusterConfig :: Lens' SageMakerMonitoringScheduleMonitoringResources SageMakerMonitoringScheduleClusterConfig
smmsmrClusterConfig = lens _sageMakerMonitoringScheduleMonitoringResourcesClusterConfig (\s a -> s { _sageMakerMonitoringScheduleMonitoringResourcesClusterConfig = a })
