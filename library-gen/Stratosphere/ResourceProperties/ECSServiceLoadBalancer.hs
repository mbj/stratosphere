{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html

module Stratosphere.ResourceProperties.ECSServiceLoadBalancer where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ECSServiceLoadBalancer. See
-- | 'ecsServiceLoadBalancer' for a more convenient constructor.
data ECSServiceLoadBalancer =
  ECSServiceLoadBalancer
  { _eCSServiceLoadBalancerContainerName :: Maybe (Val Text)
  , _eCSServiceLoadBalancerContainerPort :: Val Integer'
  , _eCSServiceLoadBalancerLoadBalancerName :: Maybe (Val Text)
  , _eCSServiceLoadBalancerTargetGroupArn :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ECSServiceLoadBalancer where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON ECSServiceLoadBalancer where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'ECSServiceLoadBalancer' containing required fields as
-- | arguments.
ecsServiceLoadBalancer
  :: Val Integer' -- ^ 'ecsslbContainerPort'
  -> ECSServiceLoadBalancer
ecsServiceLoadBalancer containerPortarg =
  ECSServiceLoadBalancer
  { _eCSServiceLoadBalancerContainerName = Nothing
  , _eCSServiceLoadBalancerContainerPort = containerPortarg
  , _eCSServiceLoadBalancerLoadBalancerName = Nothing
  , _eCSServiceLoadBalancerTargetGroupArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-containername
ecsslbContainerName :: Lens' ECSServiceLoadBalancer (Maybe (Val Text))
ecsslbContainerName = lens _eCSServiceLoadBalancerContainerName (\s a -> s { _eCSServiceLoadBalancerContainerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-containerport
ecsslbContainerPort :: Lens' ECSServiceLoadBalancer (Val Integer')
ecsslbContainerPort = lens _eCSServiceLoadBalancerContainerPort (\s a -> s { _eCSServiceLoadBalancerContainerPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-loadbalancername
ecsslbLoadBalancerName :: Lens' ECSServiceLoadBalancer (Maybe (Val Text))
ecsslbLoadBalancerName = lens _eCSServiceLoadBalancerLoadBalancerName (\s a -> s { _eCSServiceLoadBalancerLoadBalancerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-targetgrouparn
ecsslbTargetGroupArn :: Lens' ECSServiceLoadBalancer (Maybe (Val Text))
ecsslbTargetGroupArn = lens _eCSServiceLoadBalancerTargetGroupArn (\s a -> s { _eCSServiceLoadBalancerTargetGroupArn = a })
