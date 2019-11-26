{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html

module Stratosphere.ResourceProperties.EKSNodegroupScalingConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for EKSNodegroupScalingConfig. See
-- 'eksNodegroupScalingConfig' for a more convenient constructor.
data EKSNodegroupScalingConfig =
  EKSNodegroupScalingConfig
  { _eKSNodegroupScalingConfigDesiredSize :: Maybe (Val Double)
  , _eKSNodegroupScalingConfigMaxSize :: Maybe (Val Double)
  , _eKSNodegroupScalingConfigMinSize :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON EKSNodegroupScalingConfig where
  toJSON EKSNodegroupScalingConfig{..} =
    object $
    catMaybes
    [ fmap (("DesiredSize",) . toJSON) _eKSNodegroupScalingConfigDesiredSize
    , fmap (("MaxSize",) . toJSON) _eKSNodegroupScalingConfigMaxSize
    , fmap (("MinSize",) . toJSON) _eKSNodegroupScalingConfigMinSize
    ]

-- | Constructor for 'EKSNodegroupScalingConfig' containing required fields as
-- arguments.
eksNodegroupScalingConfig
  :: EKSNodegroupScalingConfig
eksNodegroupScalingConfig  =
  EKSNodegroupScalingConfig
  { _eKSNodegroupScalingConfigDesiredSize = Nothing
  , _eKSNodegroupScalingConfigMaxSize = Nothing
  , _eKSNodegroupScalingConfigMinSize = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html#cfn-eks-nodegroup-scalingconfig-desiredsize
eksnscDesiredSize :: Lens' EKSNodegroupScalingConfig (Maybe (Val Double))
eksnscDesiredSize = lens _eKSNodegroupScalingConfigDesiredSize (\s a -> s { _eKSNodegroupScalingConfigDesiredSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html#cfn-eks-nodegroup-scalingconfig-maxsize
eksnscMaxSize :: Lens' EKSNodegroupScalingConfig (Maybe (Val Double))
eksnscMaxSize = lens _eKSNodegroupScalingConfigMaxSize (\s a -> s { _eKSNodegroupScalingConfigMaxSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html#cfn-eks-nodegroup-scalingconfig-minsize
eksnscMinSize :: Lens' EKSNodegroupScalingConfig (Maybe (Val Double))
eksnscMinSize = lens _eKSNodegroupScalingConfigMinSize (\s a -> s { _eKSNodegroupScalingConfigMinSize = a })
