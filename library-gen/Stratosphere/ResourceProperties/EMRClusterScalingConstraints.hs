{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingconstraints.html

module Stratosphere.ResourceProperties.EMRClusterScalingConstraints where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EMRClusterScalingConstraints. See
-- 'emrClusterScalingConstraints' for a more convenient constructor.
data EMRClusterScalingConstraints =
  EMRClusterScalingConstraints
  { _eMRClusterScalingConstraintsMaxCapacity :: Val Integer'
  , _eMRClusterScalingConstraintsMinCapacity :: Val Integer'
  } deriving (Show, Eq)

instance ToJSON EMRClusterScalingConstraints where
  toJSON EMRClusterScalingConstraints{..} =
    object $
    catMaybes
    [ Just ("MaxCapacity" .= _eMRClusterScalingConstraintsMaxCapacity)
    , Just ("MinCapacity" .= _eMRClusterScalingConstraintsMinCapacity)
    ]

instance FromJSON EMRClusterScalingConstraints where
  parseJSON (Object obj) =
    EMRClusterScalingConstraints <$>
      obj .: "MaxCapacity" <*>
      obj .: "MinCapacity"
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterScalingConstraints' containing required fields
-- as arguments.
emrClusterScalingConstraints
  :: Val Integer' -- ^ 'emrcscMaxCapacity'
  -> Val Integer' -- ^ 'emrcscMinCapacity'
  -> EMRClusterScalingConstraints
emrClusterScalingConstraints maxCapacityarg minCapacityarg =
  EMRClusterScalingConstraints
  { _eMRClusterScalingConstraintsMaxCapacity = maxCapacityarg
  , _eMRClusterScalingConstraintsMinCapacity = minCapacityarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingconstraints.html#cfn-elasticmapreduce-cluster-scalingconstraints-maxcapacity
emrcscMaxCapacity :: Lens' EMRClusterScalingConstraints (Val Integer')
emrcscMaxCapacity = lens _eMRClusterScalingConstraintsMaxCapacity (\s a -> s { _eMRClusterScalingConstraintsMaxCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingconstraints.html#cfn-elasticmapreduce-cluster-scalingconstraints-mincapacity
emrcscMinCapacity :: Lens' EMRClusterScalingConstraints (Val Integer')
emrcscMinCapacity = lens _eMRClusterScalingConstraintsMinCapacity (\s a -> s { _eMRClusterScalingConstraintsMinCapacity = a })
