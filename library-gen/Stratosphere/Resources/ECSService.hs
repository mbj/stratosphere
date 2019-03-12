{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html

module Stratosphere.Resources.ECSService where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSServiceDeploymentConfiguration
import Stratosphere.ResourceProperties.ECSServiceLoadBalancer
import Stratosphere.ResourceProperties.ECSServiceNetworkConfiguration
import Stratosphere.ResourceProperties.ECSServicePlacementConstraint
import Stratosphere.ResourceProperties.ECSServicePlacementStrategy
import Stratosphere.ResourceProperties.ECSServiceServiceRegistry

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
  , _eCSServiceSchedulingStrategy :: Maybe (Val Text)
  , _eCSServiceServiceName :: Maybe (Val Text)
  , _eCSServiceServiceRegistries :: Maybe [ECSServiceServiceRegistry]
  , _eCSServiceTaskDefinition :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ECSService where
  toResourceProperties ECSService{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ECS::Service"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
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
        , fmap (("SchedulingStrategy",) . toJSON) _eCSServiceSchedulingStrategy
        , fmap (("ServiceName",) . toJSON) _eCSServiceServiceName
        , fmap (("ServiceRegistries",) . toJSON) _eCSServiceServiceRegistries
        , (Just . ("TaskDefinition",) . toJSON) _eCSServiceTaskDefinition
        ]
    }

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
  , _eCSServiceSchedulingStrategy = Nothing
  , _eCSServiceServiceName = Nothing
  , _eCSServiceServiceRegistries = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-schedulingstrategy
ecssSchedulingStrategy :: Lens' ECSService (Maybe (Val Text))
ecssSchedulingStrategy = lens _eCSServiceSchedulingStrategy (\s a -> s { _eCSServiceSchedulingStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-servicename
ecssServiceName :: Lens' ECSService (Maybe (Val Text))
ecssServiceName = lens _eCSServiceServiceName (\s a -> s { _eCSServiceServiceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-serviceregistries
ecssServiceRegistries :: Lens' ECSService (Maybe [ECSServiceServiceRegistry])
ecssServiceRegistries = lens _eCSServiceServiceRegistries (\s a -> s { _eCSServiceServiceRegistries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-taskdefinition
ecssTaskDefinition :: Lens' ECSService (Val Text)
ecssTaskDefinition = lens _eCSServiceTaskDefinition (\s a -> s { _eCSServiceTaskDefinition = a })
