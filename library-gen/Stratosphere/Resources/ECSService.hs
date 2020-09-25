{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html

module Stratosphere.Resources.ECSService where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSServiceCapacityProviderStrategyItem
import Stratosphere.ResourceProperties.ECSServiceDeploymentConfiguration
import Stratosphere.ResourceProperties.ECSServiceDeploymentController
import Stratosphere.ResourceProperties.ECSServiceLoadBalancer
import Stratosphere.ResourceProperties.ECSServiceNetworkConfiguration
import Stratosphere.ResourceProperties.ECSServicePlacementConstraint
import Stratosphere.ResourceProperties.ECSServicePlacementStrategy
import Stratosphere.ResourceProperties.ECSServiceServiceRegistry
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ECSService. See 'ecsService' for a more
-- convenient constructor.
data ECSService =
  ECSService
  { _eCSServiceCapacityProviderStrategy :: Maybe [ECSServiceCapacityProviderStrategyItem]
  , _eCSServiceCluster :: Maybe (Val Text)
  , _eCSServiceDeploymentConfiguration :: Maybe ECSServiceDeploymentConfiguration
  , _eCSServiceDeploymentController :: Maybe ECSServiceDeploymentController
  , _eCSServiceDesiredCount :: Maybe (Val Integer)
  , _eCSServiceEnableECSManagedTags :: Maybe (Val Bool)
  , _eCSServiceHealthCheckGracePeriodSeconds :: Maybe (Val Integer)
  , _eCSServiceLaunchType :: Maybe (Val Text)
  , _eCSServiceLoadBalancers :: Maybe [ECSServiceLoadBalancer]
  , _eCSServiceNetworkConfiguration :: Maybe ECSServiceNetworkConfiguration
  , _eCSServicePlacementConstraints :: Maybe [ECSServicePlacementConstraint]
  , _eCSServicePlacementStrategies :: Maybe [ECSServicePlacementStrategy]
  , _eCSServicePlatformVersion :: Maybe (Val Text)
  , _eCSServicePropagateTags :: Maybe (Val Text)
  , _eCSServiceRole :: Maybe (Val Text)
  , _eCSServiceSchedulingStrategy :: Maybe (Val Text)
  , _eCSServiceServiceArn :: Maybe (Val Text)
  , _eCSServiceServiceName :: Maybe (Val Text)
  , _eCSServiceServiceRegistries :: Maybe [ECSServiceServiceRegistry]
  , _eCSServiceTags :: Maybe [Tag]
  , _eCSServiceTaskDefinition :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ECSService where
  toResourceProperties ECSService{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ECS::Service"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("CapacityProviderStrategy",) . toJSON) _eCSServiceCapacityProviderStrategy
        , fmap (("Cluster",) . toJSON) _eCSServiceCluster
        , fmap (("DeploymentConfiguration",) . toJSON) _eCSServiceDeploymentConfiguration
        , fmap (("DeploymentController",) . toJSON) _eCSServiceDeploymentController
        , fmap (("DesiredCount",) . toJSON) _eCSServiceDesiredCount
        , fmap (("EnableECSManagedTags",) . toJSON) _eCSServiceEnableECSManagedTags
        , fmap (("HealthCheckGracePeriodSeconds",) . toJSON) _eCSServiceHealthCheckGracePeriodSeconds
        , fmap (("LaunchType",) . toJSON) _eCSServiceLaunchType
        , fmap (("LoadBalancers",) . toJSON) _eCSServiceLoadBalancers
        , fmap (("NetworkConfiguration",) . toJSON) _eCSServiceNetworkConfiguration
        , fmap (("PlacementConstraints",) . toJSON) _eCSServicePlacementConstraints
        , fmap (("PlacementStrategies",) . toJSON) _eCSServicePlacementStrategies
        , fmap (("PlatformVersion",) . toJSON) _eCSServicePlatformVersion
        , fmap (("PropagateTags",) . toJSON) _eCSServicePropagateTags
        , fmap (("Role",) . toJSON) _eCSServiceRole
        , fmap (("SchedulingStrategy",) . toJSON) _eCSServiceSchedulingStrategy
        , fmap (("ServiceArn",) . toJSON) _eCSServiceServiceArn
        , fmap (("ServiceName",) . toJSON) _eCSServiceServiceName
        , fmap (("ServiceRegistries",) . toJSON) _eCSServiceServiceRegistries
        , fmap (("Tags",) . toJSON) _eCSServiceTags
        , fmap (("TaskDefinition",) . toJSON) _eCSServiceTaskDefinition
        ]
    }

-- | Constructor for 'ECSService' containing required fields as arguments.
ecsService
  :: ECSService
ecsService  =
  ECSService
  { _eCSServiceCapacityProviderStrategy = Nothing
  , _eCSServiceCluster = Nothing
  , _eCSServiceDeploymentConfiguration = Nothing
  , _eCSServiceDeploymentController = Nothing
  , _eCSServiceDesiredCount = Nothing
  , _eCSServiceEnableECSManagedTags = Nothing
  , _eCSServiceHealthCheckGracePeriodSeconds = Nothing
  , _eCSServiceLaunchType = Nothing
  , _eCSServiceLoadBalancers = Nothing
  , _eCSServiceNetworkConfiguration = Nothing
  , _eCSServicePlacementConstraints = Nothing
  , _eCSServicePlacementStrategies = Nothing
  , _eCSServicePlatformVersion = Nothing
  , _eCSServicePropagateTags = Nothing
  , _eCSServiceRole = Nothing
  , _eCSServiceSchedulingStrategy = Nothing
  , _eCSServiceServiceArn = Nothing
  , _eCSServiceServiceName = Nothing
  , _eCSServiceServiceRegistries = Nothing
  , _eCSServiceTags = Nothing
  , _eCSServiceTaskDefinition = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-capacityproviderstrategy
ecssCapacityProviderStrategy :: Lens' ECSService (Maybe [ECSServiceCapacityProviderStrategyItem])
ecssCapacityProviderStrategy = lens _eCSServiceCapacityProviderStrategy (\s a -> s { _eCSServiceCapacityProviderStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-cluster
ecssCluster :: Lens' ECSService (Maybe (Val Text))
ecssCluster = lens _eCSServiceCluster (\s a -> s { _eCSServiceCluster = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-deploymentconfiguration
ecssDeploymentConfiguration :: Lens' ECSService (Maybe ECSServiceDeploymentConfiguration)
ecssDeploymentConfiguration = lens _eCSServiceDeploymentConfiguration (\s a -> s { _eCSServiceDeploymentConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-deploymentcontroller
ecssDeploymentController :: Lens' ECSService (Maybe ECSServiceDeploymentController)
ecssDeploymentController = lens _eCSServiceDeploymentController (\s a -> s { _eCSServiceDeploymentController = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-desiredcount
ecssDesiredCount :: Lens' ECSService (Maybe (Val Integer))
ecssDesiredCount = lens _eCSServiceDesiredCount (\s a -> s { _eCSServiceDesiredCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-enableecsmanagedtags
ecssEnableECSManagedTags :: Lens' ECSService (Maybe (Val Bool))
ecssEnableECSManagedTags = lens _eCSServiceEnableECSManagedTags (\s a -> s { _eCSServiceEnableECSManagedTags = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-propagatetags
ecssPropagateTags :: Lens' ECSService (Maybe (Val Text))
ecssPropagateTags = lens _eCSServicePropagateTags (\s a -> s { _eCSServicePropagateTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-role
ecssRole :: Lens' ECSService (Maybe (Val Text))
ecssRole = lens _eCSServiceRole (\s a -> s { _eCSServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-schedulingstrategy
ecssSchedulingStrategy :: Lens' ECSService (Maybe (Val Text))
ecssSchedulingStrategy = lens _eCSServiceSchedulingStrategy (\s a -> s { _eCSServiceSchedulingStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-servicearn
ecssServiceArn :: Lens' ECSService (Maybe (Val Text))
ecssServiceArn = lens _eCSServiceServiceArn (\s a -> s { _eCSServiceServiceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-servicename
ecssServiceName :: Lens' ECSService (Maybe (Val Text))
ecssServiceName = lens _eCSServiceServiceName (\s a -> s { _eCSServiceServiceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-serviceregistries
ecssServiceRegistries :: Lens' ECSService (Maybe [ECSServiceServiceRegistry])
ecssServiceRegistries = lens _eCSServiceServiceRegistries (\s a -> s { _eCSServiceServiceRegistries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-tags
ecssTags :: Lens' ECSService (Maybe [Tag])
ecssTags = lens _eCSServiceTags (\s a -> s { _eCSServiceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-taskdefinition
ecssTaskDefinition :: Lens' ECSService (Maybe (Val Text))
ecssTaskDefinition = lens _eCSServiceTaskDefinition (\s a -> s { _eCSServiceTaskDefinition = a })
