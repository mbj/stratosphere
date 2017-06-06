{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigAutoScalingPolicy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigScalingConstraints
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigScalingRule

-- | Full data type definition for EMRInstanceGroupConfigAutoScalingPolicy.
-- See 'emrInstanceGroupConfigAutoScalingPolicy' for a more convenient
-- constructor.
data EMRInstanceGroupConfigAutoScalingPolicy =
  EMRInstanceGroupConfigAutoScalingPolicy
  { _eMRInstanceGroupConfigAutoScalingPolicyConstraints :: EMRInstanceGroupConfigScalingConstraints
  , _eMRInstanceGroupConfigAutoScalingPolicyRules :: [EMRInstanceGroupConfigScalingRule]
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigAutoScalingPolicy where
  toJSON EMRInstanceGroupConfigAutoScalingPolicy{..} =
    object $
    catMaybes
    [ Just ("Constraints" .= _eMRInstanceGroupConfigAutoScalingPolicyConstraints)
    , Just ("Rules" .= _eMRInstanceGroupConfigAutoScalingPolicyRules)
    ]

instance FromJSON EMRInstanceGroupConfigAutoScalingPolicy where
  parseJSON (Object obj) =
    EMRInstanceGroupConfigAutoScalingPolicy <$>
      obj .: "Constraints" <*>
      obj .: "Rules"
  parseJSON _ = mempty

-- | Constructor for 'EMRInstanceGroupConfigAutoScalingPolicy' containing
-- required fields as arguments.
emrInstanceGroupConfigAutoScalingPolicy
  :: EMRInstanceGroupConfigScalingConstraints -- ^ 'emrigcaspConstraints'
  -> [EMRInstanceGroupConfigScalingRule] -- ^ 'emrigcaspRules'
  -> EMRInstanceGroupConfigAutoScalingPolicy
emrInstanceGroupConfigAutoScalingPolicy constraintsarg rulesarg =
  EMRInstanceGroupConfigAutoScalingPolicy
  { _eMRInstanceGroupConfigAutoScalingPolicyConstraints = constraintsarg
  , _eMRInstanceGroupConfigAutoScalingPolicyRules = rulesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-constraints
emrigcaspConstraints :: Lens' EMRInstanceGroupConfigAutoScalingPolicy EMRInstanceGroupConfigScalingConstraints
emrigcaspConstraints = lens _eMRInstanceGroupConfigAutoScalingPolicyConstraints (\s a -> s { _eMRInstanceGroupConfigAutoScalingPolicyConstraints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-rules
emrigcaspRules :: Lens' EMRInstanceGroupConfigAutoScalingPolicy [EMRInstanceGroupConfigScalingRule]
emrigcaspRules = lens _eMRInstanceGroupConfigAutoScalingPolicyRules (\s a -> s { _eMRInstanceGroupConfigAutoScalingPolicyRules = a })
