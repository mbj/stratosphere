{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingconstraints.html

module Stratosphere.ResourceProperties.EMRClusterScalingConstraints where

import Stratosphere.ResourceImports


-- | Full data type definition for EMRClusterScalingConstraints. See
-- 'emrClusterScalingConstraints' for a more convenient constructor.
data EMRClusterScalingConstraints =
  EMRClusterScalingConstraints
  { _eMRClusterScalingConstraintsMaxCapacity :: Val Integer
  , _eMRClusterScalingConstraintsMinCapacity :: Val Integer
  } deriving (Show, Eq)

instance ToJSON EMRClusterScalingConstraints where
  toJSON EMRClusterScalingConstraints{..} =
    object $
    catMaybes
    [ (Just . ("MaxCapacity",) . toJSON) _eMRClusterScalingConstraintsMaxCapacity
    , (Just . ("MinCapacity",) . toJSON) _eMRClusterScalingConstraintsMinCapacity
    ]

-- | Constructor for 'EMRClusterScalingConstraints' containing required fields
-- as arguments.
emrClusterScalingConstraints
  :: Val Integer -- ^ 'emrcscMaxCapacity'
  -> Val Integer -- ^ 'emrcscMinCapacity'
  -> EMRClusterScalingConstraints
emrClusterScalingConstraints maxCapacityarg minCapacityarg =
  EMRClusterScalingConstraints
  { _eMRClusterScalingConstraintsMaxCapacity = maxCapacityarg
  , _eMRClusterScalingConstraintsMinCapacity = minCapacityarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingconstraints.html#cfn-elasticmapreduce-cluster-scalingconstraints-maxcapacity
emrcscMaxCapacity :: Lens' EMRClusterScalingConstraints (Val Integer)
emrcscMaxCapacity = lens _eMRClusterScalingConstraintsMaxCapacity (\s a -> s { _eMRClusterScalingConstraintsMaxCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingconstraints.html#cfn-elasticmapreduce-cluster-scalingconstraints-mincapacity
emrcscMinCapacity :: Lens' EMRClusterScalingConstraints (Val Integer)
emrcscMinCapacity = lens _eMRClusterScalingConstraintsMinCapacity (\s a -> s { _eMRClusterScalingConstraintsMinCapacity = a })
