{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html

module Stratosphere.Resources.ECSService where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ECSServiceDeploymentConfiguration
import Stratosphere.ResourceProperties.ECSServiceLoadBalancer

-- | Full data type definition for ECSService. See 'ecsService' for a more
-- | convenient constructor.
data ECSService =
  ECSService
  { _eCSServiceCluster :: Maybe (Val Text)
  , _eCSServiceDeploymentConfiguration :: Maybe ECSServiceDeploymentConfiguration
  , _eCSServiceDesiredCount :: Val Integer'
  , _eCSServiceLoadBalancers :: Maybe [ECSServiceLoadBalancer]
  , _eCSServiceRole :: Maybe (Val Text)
  , _eCSServiceTaskDefinition :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON ECSService where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

instance FromJSON ECSService where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

-- | Constructor for 'ECSService' containing required fields as arguments.
ecsService
  :: Val Integer' -- ^ 'ecssDesiredCount'
  -> Val Text -- ^ 'ecssTaskDefinition'
  -> ECSService
ecsService desiredCountarg taskDefinitionarg =
  ECSService
  { _eCSServiceCluster = Nothing
  , _eCSServiceDeploymentConfiguration = Nothing
  , _eCSServiceDesiredCount = desiredCountarg
  , _eCSServiceLoadBalancers = Nothing
  , _eCSServiceRole = Nothing
  , _eCSServiceTaskDefinition = taskDefinitionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-cluster
ecssCluster :: Lens' ECSService (Maybe (Val Text))
ecssCluster = lens _eCSServiceCluster (\s a -> s { _eCSServiceCluster = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-deploymentconfiguration
ecssDeploymentConfiguration :: Lens' ECSService (Maybe ECSServiceDeploymentConfiguration)
ecssDeploymentConfiguration = lens _eCSServiceDeploymentConfiguration (\s a -> s { _eCSServiceDeploymentConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-desiredcount
ecssDesiredCount :: Lens' ECSService (Val Integer')
ecssDesiredCount = lens _eCSServiceDesiredCount (\s a -> s { _eCSServiceDesiredCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-loadbalancers
ecssLoadBalancers :: Lens' ECSService (Maybe [ECSServiceLoadBalancer])
ecssLoadBalancers = lens _eCSServiceLoadBalancers (\s a -> s { _eCSServiceLoadBalancers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-role
ecssRole :: Lens' ECSService (Maybe (Val Text))
ecssRole = lens _eCSServiceRole (\s a -> s { _eCSServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-taskdefinition
ecssTaskDefinition :: Lens' ECSService (Val Text)
ecssTaskDefinition = lens _eCSServiceTaskDefinition (\s a -> s { _eCSServiceTaskDefinition = a })
