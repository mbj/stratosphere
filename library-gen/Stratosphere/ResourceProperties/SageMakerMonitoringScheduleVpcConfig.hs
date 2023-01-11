
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-vpcconfig.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleVpcConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerMonitoringScheduleVpcConfig. See
-- 'sageMakerMonitoringScheduleVpcConfig' for a more convenient constructor.
data SageMakerMonitoringScheduleVpcConfig =
  SageMakerMonitoringScheduleVpcConfig
  { _sageMakerMonitoringScheduleVpcConfigSecurityGroupIds :: ValList Text
  , _sageMakerMonitoringScheduleVpcConfigSubnets :: ValList Text
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleVpcConfig where
  toJSON SageMakerMonitoringScheduleVpcConfig{..} =
    object $
    catMaybes
    [ (Just . ("SecurityGroupIds",) . toJSON) _sageMakerMonitoringScheduleVpcConfigSecurityGroupIds
    , (Just . ("Subnets",) . toJSON) _sageMakerMonitoringScheduleVpcConfigSubnets
    ]

-- | Constructor for 'SageMakerMonitoringScheduleVpcConfig' containing
-- required fields as arguments.
sageMakerMonitoringScheduleVpcConfig
  :: ValList Text -- ^ 'smmsvcSecurityGroupIds'
  -> ValList Text -- ^ 'smmsvcSubnets'
  -> SageMakerMonitoringScheduleVpcConfig
sageMakerMonitoringScheduleVpcConfig securityGroupIdsarg subnetsarg =
  SageMakerMonitoringScheduleVpcConfig
  { _sageMakerMonitoringScheduleVpcConfigSecurityGroupIds = securityGroupIdsarg
  , _sageMakerMonitoringScheduleVpcConfigSubnets = subnetsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-vpcconfig.html#cfn-sagemaker-monitoringschedule-vpcconfig-securitygroupids
smmsvcSecurityGroupIds :: Lens' SageMakerMonitoringScheduleVpcConfig (ValList Text)
smmsvcSecurityGroupIds = lens _sageMakerMonitoringScheduleVpcConfigSecurityGroupIds (\s a -> s { _sageMakerMonitoringScheduleVpcConfigSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-vpcconfig.html#cfn-sagemaker-monitoringschedule-vpcconfig-subnets
smmsvcSubnets :: Lens' SageMakerMonitoringScheduleVpcConfig (ValList Text)
smmsvcSubnets = lens _sageMakerMonitoringScheduleVpcConfigSubnets (\s a -> s { _sageMakerMonitoringScheduleVpcConfigSubnets = a })
