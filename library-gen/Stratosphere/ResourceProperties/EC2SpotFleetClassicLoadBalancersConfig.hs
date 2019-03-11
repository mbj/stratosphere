{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancersconfig.html

module Stratosphere.ResourceProperties.EC2SpotFleetClassicLoadBalancersConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2SpotFleetClassicLoadBalancer

-- | Full data type definition for EC2SpotFleetClassicLoadBalancersConfig. See
-- 'ec2SpotFleetClassicLoadBalancersConfig' for a more convenient
-- constructor.
data EC2SpotFleetClassicLoadBalancersConfig =
  EC2SpotFleetClassicLoadBalancersConfig
  { _eC2SpotFleetClassicLoadBalancersConfigClassicLoadBalancers :: [EC2SpotFleetClassicLoadBalancer]
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetClassicLoadBalancersConfig where
  toJSON EC2SpotFleetClassicLoadBalancersConfig{..} =
    object $
    catMaybes
    [ (Just . ("ClassicLoadBalancers",) . toJSON) _eC2SpotFleetClassicLoadBalancersConfigClassicLoadBalancers
    ]

-- | Constructor for 'EC2SpotFleetClassicLoadBalancersConfig' containing
-- required fields as arguments.
ec2SpotFleetClassicLoadBalancersConfig
  :: [EC2SpotFleetClassicLoadBalancer] -- ^ 'ecsfclbcClassicLoadBalancers'
  -> EC2SpotFleetClassicLoadBalancersConfig
ec2SpotFleetClassicLoadBalancersConfig classicLoadBalancersarg =
  EC2SpotFleetClassicLoadBalancersConfig
  { _eC2SpotFleetClassicLoadBalancersConfigClassicLoadBalancers = classicLoadBalancersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancersconfig.html#cfn-ec2-spotfleet-classicloadbalancersconfig-classicloadbalancers
ecsfclbcClassicLoadBalancers :: Lens' EC2SpotFleetClassicLoadBalancersConfig [EC2SpotFleetClassicLoadBalancer]
ecsfclbcClassicLoadBalancers = lens _eC2SpotFleetClassicLoadBalancersConfigClassicLoadBalancers (\s a -> s { _eC2SpotFleetClassicLoadBalancersConfigClassicLoadBalancers = a })
