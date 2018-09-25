{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroup.html

module Stratosphere.ResourceProperties.EC2SpotFleetTargetGroup where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2SpotFleetTargetGroup. See
-- 'ec2SpotFleetTargetGroup' for a more convenient constructor.
data EC2SpotFleetTargetGroup =
  EC2SpotFleetTargetGroup
  { _eC2SpotFleetTargetGroupArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetTargetGroup where
  toJSON EC2SpotFleetTargetGroup{..} =
    object $
    catMaybes
    [ (Just . ("Arn",) . toJSON) _eC2SpotFleetTargetGroupArn
    ]

instance FromJSON EC2SpotFleetTargetGroup where
  parseJSON (Object obj) =
    EC2SpotFleetTargetGroup <$>
      (obj .: "Arn")
  parseJSON _ = mempty

-- | Constructor for 'EC2SpotFleetTargetGroup' containing required fields as
-- arguments.
ec2SpotFleetTargetGroup
  :: Val Text -- ^ 'ecsftgArn'
  -> EC2SpotFleetTargetGroup
ec2SpotFleetTargetGroup arnarg =
  EC2SpotFleetTargetGroup
  { _eC2SpotFleetTargetGroupArn = arnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroup.html#cfn-ec2-spotfleet-targetgroup-arn
ecsftgArn :: Lens' EC2SpotFleetTargetGroup (Val Text)
ecsftgArn = lens _eC2SpotFleetTargetGroupArn (\s a -> s { _eC2SpotFleetTargetGroupArn = a })
