{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingconstraints.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigScalingConstraints where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EMRInstanceGroupConfigScalingConstraints.
-- See 'emrInstanceGroupConfigScalingConstraints' for a more convenient
-- constructor.
data EMRInstanceGroupConfigScalingConstraints =
  EMRInstanceGroupConfigScalingConstraints
  { _eMRInstanceGroupConfigScalingConstraintsMaxCapacity :: Val Integer'
  , _eMRInstanceGroupConfigScalingConstraintsMinCapacity :: Val Integer'
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigScalingConstraints where
  toJSON EMRInstanceGroupConfigScalingConstraints{..} =
    object $
    catMaybes
    [ Just ("MaxCapacity" .= _eMRInstanceGroupConfigScalingConstraintsMaxCapacity)
    , Just ("MinCapacity" .= _eMRInstanceGroupConfigScalingConstraintsMinCapacity)
    ]

instance FromJSON EMRInstanceGroupConfigScalingConstraints where
  parseJSON (Object obj) =
    EMRInstanceGroupConfigScalingConstraints <$>
      obj .: "MaxCapacity" <*>
      obj .: "MinCapacity"
  parseJSON _ = mempty

-- | Constructor for 'EMRInstanceGroupConfigScalingConstraints' containing
-- required fields as arguments.
emrInstanceGroupConfigScalingConstraints
  :: Val Integer' -- ^ 'emrigcscMaxCapacity'
  -> Val Integer' -- ^ 'emrigcscMinCapacity'
  -> EMRInstanceGroupConfigScalingConstraints
emrInstanceGroupConfigScalingConstraints maxCapacityarg minCapacityarg =
  EMRInstanceGroupConfigScalingConstraints
  { _eMRInstanceGroupConfigScalingConstraintsMaxCapacity = maxCapacityarg
  , _eMRInstanceGroupConfigScalingConstraintsMinCapacity = minCapacityarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingconstraints.html#cfn-elasticmapreduce-instancegroupconfig-scalingconstraints-maxcapacity
emrigcscMaxCapacity :: Lens' EMRInstanceGroupConfigScalingConstraints (Val Integer')
emrigcscMaxCapacity = lens _eMRInstanceGroupConfigScalingConstraintsMaxCapacity (\s a -> s { _eMRInstanceGroupConfigScalingConstraintsMaxCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingconstraints.html#cfn-elasticmapreduce-instancegroupconfig-scalingconstraints-mincapacity
emrigcscMinCapacity :: Lens' EMRInstanceGroupConfigScalingConstraints (Val Integer')
emrigcscMinCapacity = lens _eMRInstanceGroupConfigScalingConstraintsMinCapacity (\s a -> s { _eMRInstanceGroupConfigScalingConstraintsMinCapacity = a })
