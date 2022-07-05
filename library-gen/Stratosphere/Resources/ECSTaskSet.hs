{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html

module Stratosphere.Resources.ECSTaskSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSTaskSetLoadBalancer
import Stratosphere.ResourceProperties.ECSTaskSetNetworkConfiguration
import Stratosphere.ResourceProperties.ECSTaskSetScale
import Stratosphere.ResourceProperties.ECSTaskSetServiceRegistry

-- | Full data type definition for ECSTaskSet. See 'ecsTaskSet' for a more
-- convenient constructor.
data ECSTaskSet =
  ECSTaskSet
  { _eCSTaskSetCluster :: Val Text
  , _eCSTaskSetExternalId :: Maybe (Val Text)
  , _eCSTaskSetLaunchType :: Maybe (Val Text)
  , _eCSTaskSetLoadBalancers :: Maybe [ECSTaskSetLoadBalancer]
  , _eCSTaskSetNetworkConfiguration :: Maybe ECSTaskSetNetworkConfiguration
  , _eCSTaskSetPlatformVersion :: Maybe (Val Text)
  , _eCSTaskSetScale :: Maybe ECSTaskSetScale
  , _eCSTaskSetService :: Val Text
  , _eCSTaskSetServiceRegistries :: Maybe [ECSTaskSetServiceRegistry]
  , _eCSTaskSetTaskDefinition :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ECSTaskSet where
  toResourceProperties ECSTaskSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ECS::TaskSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Cluster",) . toJSON) _eCSTaskSetCluster
        , fmap (("ExternalId",) . toJSON) _eCSTaskSetExternalId
        , fmap (("LaunchType",) . toJSON) _eCSTaskSetLaunchType
        , fmap (("LoadBalancers",) . toJSON) _eCSTaskSetLoadBalancers
        , fmap (("NetworkConfiguration",) . toJSON) _eCSTaskSetNetworkConfiguration
        , fmap (("PlatformVersion",) . toJSON) _eCSTaskSetPlatformVersion
        , fmap (("Scale",) . toJSON) _eCSTaskSetScale
        , (Just . ("Service",) . toJSON) _eCSTaskSetService
        , fmap (("ServiceRegistries",) . toJSON) _eCSTaskSetServiceRegistries
        , (Just . ("TaskDefinition",) . toJSON) _eCSTaskSetTaskDefinition
        ]
    }

-- | Constructor for 'ECSTaskSet' containing required fields as arguments.
ecsTaskSet
  :: Val Text -- ^ 'ecstsCluster'
  -> Val Text -- ^ 'ecstsService'
  -> Val Text -- ^ 'ecstsTaskDefinition'
  -> ECSTaskSet
ecsTaskSet clusterarg servicearg taskDefinitionarg =
  ECSTaskSet
  { _eCSTaskSetCluster = clusterarg
  , _eCSTaskSetExternalId = Nothing
  , _eCSTaskSetLaunchType = Nothing
  , _eCSTaskSetLoadBalancers = Nothing
  , _eCSTaskSetNetworkConfiguration = Nothing
  , _eCSTaskSetPlatformVersion = Nothing
  , _eCSTaskSetScale = Nothing
  , _eCSTaskSetService = servicearg
  , _eCSTaskSetServiceRegistries = Nothing
  , _eCSTaskSetTaskDefinition = taskDefinitionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-cluster
ecstsCluster :: Lens' ECSTaskSet (Val Text)
ecstsCluster = lens _eCSTaskSetCluster (\s a -> s { _eCSTaskSetCluster = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-externalid
ecstsExternalId :: Lens' ECSTaskSet (Maybe (Val Text))
ecstsExternalId = lens _eCSTaskSetExternalId (\s a -> s { _eCSTaskSetExternalId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-launchtype
ecstsLaunchType :: Lens' ECSTaskSet (Maybe (Val Text))
ecstsLaunchType = lens _eCSTaskSetLaunchType (\s a -> s { _eCSTaskSetLaunchType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-loadbalancers
ecstsLoadBalancers :: Lens' ECSTaskSet (Maybe [ECSTaskSetLoadBalancer])
ecstsLoadBalancers = lens _eCSTaskSetLoadBalancers (\s a -> s { _eCSTaskSetLoadBalancers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-networkconfiguration
ecstsNetworkConfiguration :: Lens' ECSTaskSet (Maybe ECSTaskSetNetworkConfiguration)
ecstsNetworkConfiguration = lens _eCSTaskSetNetworkConfiguration (\s a -> s { _eCSTaskSetNetworkConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-platformversion
ecstsPlatformVersion :: Lens' ECSTaskSet (Maybe (Val Text))
ecstsPlatformVersion = lens _eCSTaskSetPlatformVersion (\s a -> s { _eCSTaskSetPlatformVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-scale
ecstsScale :: Lens' ECSTaskSet (Maybe ECSTaskSetScale)
ecstsScale = lens _eCSTaskSetScale (\s a -> s { _eCSTaskSetScale = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-service
ecstsService :: Lens' ECSTaskSet (Val Text)
ecstsService = lens _eCSTaskSetService (\s a -> s { _eCSTaskSetService = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-serviceregistries
ecstsServiceRegistries :: Lens' ECSTaskSet (Maybe [ECSTaskSetServiceRegistry])
ecstsServiceRegistries = lens _eCSTaskSetServiceRegistries (\s a -> s { _eCSTaskSetServiceRegistries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-taskdefinition
ecstsTaskDefinition :: Lens' ECSTaskSet (Val Text)
ecstsTaskDefinition = lens _eCSTaskSetTaskDefinition (\s a -> s { _eCSTaskSetTaskDefinition = a })
