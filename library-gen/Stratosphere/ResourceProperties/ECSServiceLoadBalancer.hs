{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html

module Stratosphere.ResourceProperties.ECSServiceLoadBalancer where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ECSServiceLoadBalancer. See
-- | 'ecsServiceLoadBalancer' for a more convenient constructor.
data ECSServiceLoadBalancer =
  ECSServiceLoadBalancer
  { _eCSServiceLoadBalancerContainerName :: Maybe (Val Text)
  , _eCSServiceLoadBalancerContainerPort :: Val Integer'
  , _eCSServiceLoadBalancerLoadBalancerName :: Maybe (Val Text)
  , _eCSServiceLoadBalancerTargetGroupArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSServiceLoadBalancer where
  toJSON ECSServiceLoadBalancer{..} =
    object $
    catMaybes
    [ ("ContainerName" .=) <$> _eCSServiceLoadBalancerContainerName
    , Just ("ContainerPort" .= _eCSServiceLoadBalancerContainerPort)
    , ("LoadBalancerName" .=) <$> _eCSServiceLoadBalancerLoadBalancerName
    , ("TargetGroupArn" .=) <$> _eCSServiceLoadBalancerTargetGroupArn
    ]

instance FromJSON ECSServiceLoadBalancer where
  parseJSON (Object obj) =
    ECSServiceLoadBalancer <$>
      obj .:? "ContainerName" <*>
      obj .: "ContainerPort" <*>
      obj .:? "LoadBalancerName" <*>
      obj .:? "TargetGroupArn"
  parseJSON _ = mempty

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
