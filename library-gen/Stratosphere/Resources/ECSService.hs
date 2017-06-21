{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html

module Stratosphere.Resources.ECSService where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ECSServiceDeploymentConfiguration
import Stratosphere.ResourceProperties.ECSServiceLoadBalancer
import Stratosphere.ResourceProperties.ECSServicePlacementConstraint
import Stratosphere.ResourceProperties.ECSServicePlacementStrategy

-- | Full data type definition for ECSService. See 'ecsService' for a more
-- convenient constructor.
data ECSService =
  ECSService
  { _eCSServiceCluster :: Maybe (Val Text)
  , _eCSServiceDeploymentConfiguration :: Maybe ECSServiceDeploymentConfiguration
  , _eCSServiceDesiredCount :: Maybe (Val Integer')
  , _eCSServiceLoadBalancers :: Maybe [ECSServiceLoadBalancer]
  , _eCSServicePlacementConstraints :: Maybe [ECSServicePlacementConstraint]
  , _eCSServicePlacementStrategies :: Maybe [ECSServicePlacementStrategy]
  , _eCSServiceRole :: Maybe (Val Text)
  , _eCSServiceServiceName :: Maybe (Val Text)
  , _eCSServiceTaskDefinition :: Val Text
  } deriving (Show, Eq)

instance ToJSON ECSService where
  toJSON ECSService{..} =
    object $
    catMaybes
    [ ("Cluster" .=) <$> _eCSServiceCluster
    , ("DeploymentConfiguration" .=) <$> _eCSServiceDeploymentConfiguration
    , ("DesiredCount" .=) <$> _eCSServiceDesiredCount
    , ("LoadBalancers" .=) <$> _eCSServiceLoadBalancers
    , ("PlacementConstraints" .=) <$> _eCSServicePlacementConstraints
    , ("PlacementStrategies" .=) <$> _eCSServicePlacementStrategies
    , ("Role" .=) <$> _eCSServiceRole
    , ("ServiceName" .=) <$> _eCSServiceServiceName
    , Just ("TaskDefinition" .= _eCSServiceTaskDefinition)
    ]

instance FromJSON ECSService where
  parseJSON (Object obj) =
    ECSService <$>
      obj .:? "Cluster" <*>
      obj .:? "DeploymentConfiguration" <*>
      obj .:? "DesiredCount" <*>
      obj .:? "LoadBalancers" <*>
      obj .:? "PlacementConstraints" <*>
      obj .:? "PlacementStrategies" <*>
      obj .:? "Role" <*>
      obj .:? "ServiceName" <*>
      obj .: "TaskDefinition"
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
  , _eCSServiceLoadBalancers = Nothing
  , _eCSServicePlacementConstraints = Nothing
  , _eCSServicePlacementStrategies = Nothing
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
ecssDesiredCount :: Lens' ECSService (Maybe (Val Integer'))
ecssDesiredCount = lens _eCSServiceDesiredCount (\s a -> s { _eCSServiceDesiredCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-loadbalancers
ecssLoadBalancers :: Lens' ECSService (Maybe [ECSServiceLoadBalancer])
ecssLoadBalancers = lens _eCSServiceLoadBalancers (\s a -> s { _eCSServiceLoadBalancers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-placementconstraints
ecssPlacementConstraints :: Lens' ECSService (Maybe [ECSServicePlacementConstraint])
ecssPlacementConstraints = lens _eCSServicePlacementConstraints (\s a -> s { _eCSServicePlacementConstraints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-placementstrategies
ecssPlacementStrategies :: Lens' ECSService (Maybe [ECSServicePlacementStrategy])
ecssPlacementStrategies = lens _eCSServicePlacementStrategies (\s a -> s { _eCSServicePlacementStrategies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-role
ecssRole :: Lens' ECSService (Maybe (Val Text))
ecssRole = lens _eCSServiceRole (\s a -> s { _eCSServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-servicename
ecssServiceName :: Lens' ECSService (Maybe (Val Text))
ecssServiceName = lens _eCSServiceServiceName (\s a -> s { _eCSServiceServiceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-taskdefinition
ecssTaskDefinition :: Lens' ECSService (Val Text)
ecssTaskDefinition = lens _eCSServiceTaskDefinition (\s a -> s { _eCSServiceTaskDefinition = a })
