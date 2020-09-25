{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancer.html

module Stratosphere.ResourceProperties.ECSServiceLoadBalancer where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSServiceLoadBalancer. See
-- 'ecsServiceLoadBalancer' for a more convenient constructor.
data ECSServiceLoadBalancer =
  ECSServiceLoadBalancer
  { _eCSServiceLoadBalancerContainerName :: Maybe (Val Text)
  , _eCSServiceLoadBalancerContainerPort :: Maybe (Val Integer)
  , _eCSServiceLoadBalancerLoadBalancerName :: Maybe (Val Text)
  , _eCSServiceLoadBalancerTargetGroupArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSServiceLoadBalancer where
  toJSON ECSServiceLoadBalancer{..} =
    object $
    catMaybes
    [ fmap (("ContainerName",) . toJSON) _eCSServiceLoadBalancerContainerName
    , fmap (("ContainerPort",) . toJSON) _eCSServiceLoadBalancerContainerPort
    , fmap (("LoadBalancerName",) . toJSON) _eCSServiceLoadBalancerLoadBalancerName
    , fmap (("TargetGroupArn",) . toJSON) _eCSServiceLoadBalancerTargetGroupArn
    ]

-- | Constructor for 'ECSServiceLoadBalancer' containing required fields as
-- arguments.
ecsServiceLoadBalancer
  :: ECSServiceLoadBalancer
ecsServiceLoadBalancer  =
  ECSServiceLoadBalancer
  { _eCSServiceLoadBalancerContainerName = Nothing
  , _eCSServiceLoadBalancerContainerPort = Nothing
  , _eCSServiceLoadBalancerLoadBalancerName = Nothing
  , _eCSServiceLoadBalancerTargetGroupArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancer.html#cfn-ecs-service-loadbalancer-containername
ecsslbContainerName :: Lens' ECSServiceLoadBalancer (Maybe (Val Text))
ecsslbContainerName = lens _eCSServiceLoadBalancerContainerName (\s a -> s { _eCSServiceLoadBalancerContainerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancer.html#cfn-ecs-service-loadbalancer-containerport
ecsslbContainerPort :: Lens' ECSServiceLoadBalancer (Maybe (Val Integer))
ecsslbContainerPort = lens _eCSServiceLoadBalancerContainerPort (\s a -> s { _eCSServiceLoadBalancerContainerPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancer.html#cfn-ecs-service-loadbalancer-loadbalancername
ecsslbLoadBalancerName :: Lens' ECSServiceLoadBalancer (Maybe (Val Text))
ecsslbLoadBalancerName = lens _eCSServiceLoadBalancerLoadBalancerName (\s a -> s { _eCSServiceLoadBalancerLoadBalancerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancer.html#cfn-ecs-service-loadbalancer-targetgrouparn
ecsslbTargetGroupArn :: Lens' ECSServiceLoadBalancer (Maybe (Val Text))
ecsslbTargetGroupArn = lens _eCSServiceLoadBalancerTargetGroupArn (\s a -> s { _eCSServiceLoadBalancerTargetGroupArn = a })
