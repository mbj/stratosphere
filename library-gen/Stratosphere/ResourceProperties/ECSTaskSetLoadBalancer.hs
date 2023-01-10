
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-loadbalancer.html

module Stratosphere.ResourceProperties.ECSTaskSetLoadBalancer where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskSetLoadBalancer. See
-- 'ecsTaskSetLoadBalancer' for a more convenient constructor.
data ECSTaskSetLoadBalancer =
  ECSTaskSetLoadBalancer
  { _eCSTaskSetLoadBalancerContainerName :: Maybe (Val Text)
  , _eCSTaskSetLoadBalancerContainerPort :: Maybe (Val Integer)
  , _eCSTaskSetLoadBalancerLoadBalancerName :: Maybe (Val Text)
  , _eCSTaskSetLoadBalancerTargetGroupArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskSetLoadBalancer where
  toJSON ECSTaskSetLoadBalancer{..} =
    object $
    catMaybes
    [ fmap (("ContainerName",) . toJSON) _eCSTaskSetLoadBalancerContainerName
    , fmap (("ContainerPort",) . toJSON) _eCSTaskSetLoadBalancerContainerPort
    , fmap (("LoadBalancerName",) . toJSON) _eCSTaskSetLoadBalancerLoadBalancerName
    , fmap (("TargetGroupArn",) . toJSON) _eCSTaskSetLoadBalancerTargetGroupArn
    ]

-- | Constructor for 'ECSTaskSetLoadBalancer' containing required fields as
-- arguments.
ecsTaskSetLoadBalancer
  :: ECSTaskSetLoadBalancer
ecsTaskSetLoadBalancer  =
  ECSTaskSetLoadBalancer
  { _eCSTaskSetLoadBalancerContainerName = Nothing
  , _eCSTaskSetLoadBalancerContainerPort = Nothing
  , _eCSTaskSetLoadBalancerLoadBalancerName = Nothing
  , _eCSTaskSetLoadBalancerTargetGroupArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-loadbalancer.html#cfn-ecs-taskset-loadbalancer-containername
ecstslbContainerName :: Lens' ECSTaskSetLoadBalancer (Maybe (Val Text))
ecstslbContainerName = lens _eCSTaskSetLoadBalancerContainerName (\s a -> s { _eCSTaskSetLoadBalancerContainerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-loadbalancer.html#cfn-ecs-taskset-loadbalancer-containerport
ecstslbContainerPort :: Lens' ECSTaskSetLoadBalancer (Maybe (Val Integer))
ecstslbContainerPort = lens _eCSTaskSetLoadBalancerContainerPort (\s a -> s { _eCSTaskSetLoadBalancerContainerPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-loadbalancer.html#cfn-ecs-taskset-loadbalancer-loadbalancername
ecstslbLoadBalancerName :: Lens' ECSTaskSetLoadBalancer (Maybe (Val Text))
ecstslbLoadBalancerName = lens _eCSTaskSetLoadBalancerLoadBalancerName (\s a -> s { _eCSTaskSetLoadBalancerLoadBalancerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-loadbalancer.html#cfn-ecs-taskset-loadbalancer-targetgrouparn
ecstslbTargetGroupArn :: Lens' ECSTaskSetLoadBalancer (Maybe (Val Text))
ecstslbTargetGroupArn = lens _eCSTaskSetLoadBalancerTargetGroupArn (\s a -> s { _eCSTaskSetLoadBalancerTargetGroupArn = a })
