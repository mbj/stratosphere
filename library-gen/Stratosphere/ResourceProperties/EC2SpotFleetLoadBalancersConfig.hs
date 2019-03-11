{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html

module Stratosphere.ResourceProperties.EC2SpotFleetLoadBalancersConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2SpotFleetClassicLoadBalancersConfig
import Stratosphere.ResourceProperties.EC2SpotFleetTargetGroupsConfig

-- | Full data type definition for EC2SpotFleetLoadBalancersConfig. See
-- 'ec2SpotFleetLoadBalancersConfig' for a more convenient constructor.
data EC2SpotFleetLoadBalancersConfig =
  EC2SpotFleetLoadBalancersConfig
  { _eC2SpotFleetLoadBalancersConfigClassicLoadBalancersConfig :: Maybe EC2SpotFleetClassicLoadBalancersConfig
  , _eC2SpotFleetLoadBalancersConfigTargetGroupsConfig :: Maybe EC2SpotFleetTargetGroupsConfig
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetLoadBalancersConfig where
  toJSON EC2SpotFleetLoadBalancersConfig{..} =
    object $
    catMaybes
    [ fmap (("ClassicLoadBalancersConfig",) . toJSON) _eC2SpotFleetLoadBalancersConfigClassicLoadBalancersConfig
    , fmap (("TargetGroupsConfig",) . toJSON) _eC2SpotFleetLoadBalancersConfigTargetGroupsConfig
    ]

-- | Constructor for 'EC2SpotFleetLoadBalancersConfig' containing required
-- fields as arguments.
ec2SpotFleetLoadBalancersConfig
  :: EC2SpotFleetLoadBalancersConfig
ec2SpotFleetLoadBalancersConfig  =
  EC2SpotFleetLoadBalancersConfig
  { _eC2SpotFleetLoadBalancersConfigClassicLoadBalancersConfig = Nothing
  , _eC2SpotFleetLoadBalancersConfigTargetGroupsConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html#cfn-ec2-spotfleet-loadbalancersconfig-classicloadbalancersconfig
ecsflbcClassicLoadBalancersConfig :: Lens' EC2SpotFleetLoadBalancersConfig (Maybe EC2SpotFleetClassicLoadBalancersConfig)
ecsflbcClassicLoadBalancersConfig = lens _eC2SpotFleetLoadBalancersConfigClassicLoadBalancersConfig (\s a -> s { _eC2SpotFleetLoadBalancersConfigClassicLoadBalancersConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html#cfn-ec2-spotfleet-loadbalancersconfig-targetgroupsconfig
ecsflbcTargetGroupsConfig :: Lens' EC2SpotFleetLoadBalancersConfig (Maybe EC2SpotFleetTargetGroupsConfig)
ecsflbcTargetGroupsConfig = lens _eC2SpotFleetLoadBalancersConfigTargetGroupsConfig (\s a -> s { _eC2SpotFleetLoadBalancersConfigTargetGroupsConfig = a })
