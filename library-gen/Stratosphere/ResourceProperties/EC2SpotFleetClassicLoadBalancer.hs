{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancer.html

module Stratosphere.ResourceProperties.EC2SpotFleetClassicLoadBalancer where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2SpotFleetClassicLoadBalancer. See
-- 'ec2SpotFleetClassicLoadBalancer' for a more convenient constructor.
data EC2SpotFleetClassicLoadBalancer =
  EC2SpotFleetClassicLoadBalancer
  { _eC2SpotFleetClassicLoadBalancerName :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetClassicLoadBalancer where
  toJSON EC2SpotFleetClassicLoadBalancer{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _eC2SpotFleetClassicLoadBalancerName
    ]

-- | Constructor for 'EC2SpotFleetClassicLoadBalancer' containing required
-- fields as arguments.
ec2SpotFleetClassicLoadBalancer
  :: Val Text -- ^ 'ecsfclbName'
  -> EC2SpotFleetClassicLoadBalancer
ec2SpotFleetClassicLoadBalancer namearg =
  EC2SpotFleetClassicLoadBalancer
  { _eC2SpotFleetClassicLoadBalancerName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancer.html#cfn-ec2-spotfleet-classicloadbalancer-name
ecsfclbName :: Lens' EC2SpotFleetClassicLoadBalancer (Val Text)
ecsfclbName = lens _eC2SpotFleetClassicLoadBalancerName (\s a -> s { _eC2SpotFleetClassicLoadBalancerName = a })
