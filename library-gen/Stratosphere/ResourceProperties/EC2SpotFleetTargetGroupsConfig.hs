{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroupsconfig.html

module Stratosphere.ResourceProperties.EC2SpotFleetTargetGroupsConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2SpotFleetTargetGroup

-- | Full data type definition for EC2SpotFleetTargetGroupsConfig. See
-- 'ec2SpotFleetTargetGroupsConfig' for a more convenient constructor.
data EC2SpotFleetTargetGroupsConfig =
  EC2SpotFleetTargetGroupsConfig
  { _eC2SpotFleetTargetGroupsConfigTargetGroups :: [EC2SpotFleetTargetGroup]
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetTargetGroupsConfig where
  toJSON EC2SpotFleetTargetGroupsConfig{..} =
    object $
    catMaybes
    [ (Just . ("TargetGroups",) . toJSON) _eC2SpotFleetTargetGroupsConfigTargetGroups
    ]

-- | Constructor for 'EC2SpotFleetTargetGroupsConfig' containing required
-- fields as arguments.
ec2SpotFleetTargetGroupsConfig
  :: [EC2SpotFleetTargetGroup] -- ^ 'ecsftgcTargetGroups'
  -> EC2SpotFleetTargetGroupsConfig
ec2SpotFleetTargetGroupsConfig targetGroupsarg =
  EC2SpotFleetTargetGroupsConfig
  { _eC2SpotFleetTargetGroupsConfigTargetGroups = targetGroupsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroupsconfig.html#cfn-ec2-spotfleet-targetgroupsconfig-targetgroups
ecsftgcTargetGroups :: Lens' EC2SpotFleetTargetGroupsConfig [EC2SpotFleetTargetGroup]
ecsftgcTargetGroups = lens _eC2SpotFleetTargetGroupsConfigTargetGroups (\s a -> s { _eC2SpotFleetTargetGroupsConfigTargetGroups = a })
