{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html

module Stratosphere.Resources.ECSService where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSServiceDeploymentConfiguration
import Stratosphere.ResourceProperties.ECSServiceLoadBalancer
import Stratosphere.ResourceProperties.ECSServiceNetworkConfiguration
import Stratosphere.ResourceProperties.ECSServicePlacementConstraint
import Stratosphere.ResourceProperties.ECSServicePlacementStrategy

-- | Full data type definition for ECSService. See 'ecsService' for a more
-- convenient constructor.
data ECSService =
  ECSService
  { _eCSServiceCluster :: Maybe (Val Text)
  , _eCSServiceDeploymentConfiguration :: Maybe ECSServiceDeploymentConfiguration
  , _eCSServiceDesiredCount :: Maybe (Val Integer)
  , _eCSServiceHealthCheckGracePeriodSeconds :: Maybe (Val Integer)
  , _eCSServiceLaunchType :: Maybe (Val Text)
  , _eCSServiceLoadBalancers :: Maybe [ECSServiceLoadBalancer]
  , _eCSServiceNetworkConfiguration :: Maybe ECSServiceNetworkConfiguration
  , _eCSServicePlacementConstraints :: Maybe [ECSServicePlacementConstraint]
  , _eCSServicePlacementStrategies :: Maybe [ECSServicePlacementStrategy]
  , _eCSServicePlatformVersion :: Maybe (Val Text)
  , _eCSServiceRole :: Maybe (Val Text)
  , _eCSServiceServiceName :: Maybe (Val Text)
  , _eCSServiceTaskDefinition :: Val Text
  } deriving (Show, Eq)

instance ToJSON ECSService where
  toJSON ECSService{..} =
    object $
    catMaybes
    [ fmap (("Cluster",) . toJSON) _eCSServiceCluster
    , fmap (("DeploymentConfiguration",) . toJSON) _eCSServiceDeploymentConfiguration
    , fmap (("DesiredCount",) . toJSON . fmap Integer') _eCSServiceDesiredCount
    , fmap (("HealthCheckGracePeriodSeconds",) . toJSON . fmap Integer') _eCSServiceHealthCheckGracePeriodSeconds
    , fmap (("LaunchType",) . toJSON) _eCSServiceLaunchType
    , fmap (("LoadBalancers",) . toJSON) _eCSServiceLoadBalancers
    , fmap (("NetworkConfiguration",) . toJSON) _eCSServiceNetworkConfiguration
    , fmap (("PlacementConstraints",) . toJSON) _eCSServicePlacementConstraints
    , fmap (("PlacementStrategies",) . toJSON) _eCSServicePlacementStrategies
    , fmap (("PlatformVersion",) . toJSON) _eCSServicePlatformVersion
    , fmap (("Role",) . toJSON) _eCSServiceRole
    , fmap (("ServiceName",) . toJSON) _eCSServiceServiceName
    , (Just . ("TaskDefinition",) . toJSON) _eCSServiceTaskDefinition
    ]

instance FromJSON ECSService where
  parseJSON (Object obj) =
    ECSService <$>
      (obj .:? "Cluster") <*>
      (obj .:? "DeploymentConfiguration") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "DesiredCount") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "HealthCheckGracePeriodSeconds") <*>
      (obj .:? "LaunchType") <*>
      (obj .:? "LoadBalancers") <*>
      (obj .:? "NetworkConfiguration") <*>
      (obj .:? "PlacementConstraints") <*>
      (obj .:? "PlacementStrategies") <*>
      (obj .:? "PlatformVersion") <*>
      (obj .:? "Role") <*>
      (obj .:? "ServiceName") <*>
      (obj .: "TaskDefinition")
  parseJSON _ = mempty

-- | Constructor for 'ECSService' containing required fields as arguments.
ecsService
  :: Val Text -- ^ 'ecssTaskDefinition'
  -> ECSService
ecsService taskDefinitionarg =
  ECSService
  { _eCSServiceCluster = Nothing
  , _eCSServiceDeploymentConfiguration = Nothing
  , _eCSServiceDesiredCount = Nothing
  , _eCSServiceHealthCheckGracePeriodSeconds = Nothing
  , _eCSServiceLaunchType = Nothing
  , _eCSServiceLoadBalancers = Nothing
  , _eCSServiceNetworkConfiguration = Nothing
  , _eCSServicePlacementConstraints = Nothing
  , _eCSServicePlacementStrategies = Nothing
  , _eCSServicePlatformVersion = Nothing
  , _eCSServiceRole = Nothing
  , _eCSServiceServiceName = Nothing
  , _eCSServiceTaskDefinition = taskDefinitionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-cluster
ecssCluster :: Lens' ECSService (Maybe (Val Text))
ecssCluster = lens _eCSServiceCluster (\s a -> s { _eCSServiceCluster = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-deploymentconfiguration
ecssDeploymentConfiguration :: Lens' ECSService (Maybe ECSServiceDeploymentConfiguration)
ecssDeploymentConfiguration = lens _eCSServiceDeploymentConfiguration (\s a -> s { _eCSServiceDeploymentConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-desiredcount
ecssDesiredCount :: Lens' ECSService (Maybe (Val Integer))
ecssDesiredCount = lens _eCSServiceDesiredCount (\s a -> s { _eCSServiceDesiredCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-healthcheckgraceperiodseconds
ecssHealthCheckGracePeriodSeconds :: Lens' ECSService (Maybe (Val Integer))
ecssHealthCheckGracePeriodSeconds = lens _eCSServiceHealthCheckGracePeriodSeconds (\s a -> s { _eCSServiceHealthCheckGracePeriodSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-launchtype
ecssLaunchType :: Lens' ECSService (Maybe (Val Text))
ecssLaunchType = lens _eCSServiceLaunchType (\s a -> s { _eCSServiceLaunchType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-loadbalancers
ecssLoadBalancers :: Lens' ECSService (Maybe [ECSServiceLoadBalancer])
ecssLoadBalancers = lens _eCSServiceLoadBalancers (\s a -> s { _eCSServiceLoadBalancers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-networkconfiguration
ecssNetworkConfiguration :: Lens' ECSService (Maybe ECSServiceNetworkConfiguration)
ecssNetworkConfiguration = lens _eCSServiceNetworkConfiguration (\s a -> s { _eCSServiceNetworkConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-placementconstraints
ecssPlacementConstraints :: Lens' ECSService (Maybe [ECSServicePlacementConstraint])
ecssPlacementConstraints = lens _eCSServicePlacementConstraints (\s a -> s { _eCSServicePlacementConstraints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-placementstrategies
ecssPlacementStrategies :: Lens' ECSService (Maybe [ECSServicePlacementStrategy])
ecssPlacementStrategies = lens _eCSServicePlacementStrategies (\s a -> s { _eCSServicePlacementStrategies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-platformversion
ecssPlatformVersion :: Lens' ECSService (Maybe (Val Text))
ecssPlatformVersion = lens _eCSServicePlatformVersion (\s a -> s { _eCSServicePlatformVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-role
ecssRole :: Lens' ECSService (Maybe (Val Text))
ecssRole = lens _eCSServiceRole (\s a -> s { _eCSServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-servicename
ecssServiceName :: Lens' ECSService (Maybe (Val Text))
ecssServiceName = lens _eCSServiceServiceName (\s a -> s { _eCSServiceServiceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-taskdefinition
ecssTaskDefinition :: Lens' ECSService (Val Text)
ecssTaskDefinition = lens _eCSServiceTaskDefinition (\s a -> s { _eCSServiceTaskDefinition = a })
