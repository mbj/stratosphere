{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html

module Stratosphere.ResourceProperties.EMRClusterAutoScalingPolicy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterScalingConstraints
import Stratosphere.ResourceProperties.EMRClusterScalingRule

-- | Full data type definition for EMRClusterAutoScalingPolicy. See
-- 'emrClusterAutoScalingPolicy' for a more convenient constructor.
data EMRClusterAutoScalingPolicy =
  EMRClusterAutoScalingPolicy
  { _eMRClusterAutoScalingPolicyConstraints :: EMRClusterScalingConstraints
  , _eMRClusterAutoScalingPolicyRules :: [EMRClusterScalingRule]
  } deriving (Show, Eq)

instance ToJSON EMRClusterAutoScalingPolicy where
  toJSON EMRClusterAutoScalingPolicy{..} =
    object $
    catMaybes
    [ Just ("Constraints" .= _eMRClusterAutoScalingPolicyConstraints)
    , Just ("Rules" .= _eMRClusterAutoScalingPolicyRules)
    ]

instance FromJSON EMRClusterAutoScalingPolicy where
  parseJSON (Object obj) =
    EMRClusterAutoScalingPolicy <$>
      obj .: "Constraints" <*>
      obj .: "Rules"
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterAutoScalingPolicy' containing required fields
-- as arguments.
emrClusterAutoScalingPolicy
  :: EMRClusterScalingConstraints -- ^ 'emrcaspConstraints'
  -> [EMRClusterScalingRule] -- ^ 'emrcaspRules'
  -> EMRClusterAutoScalingPolicy
emrClusterAutoScalingPolicy constraintsarg rulesarg =
  EMRClusterAutoScalingPolicy
  { _eMRClusterAutoScalingPolicyConstraints = constraintsarg
  , _eMRClusterAutoScalingPolicyRules = rulesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html#cfn-elasticmapreduce-cluster-autoscalingpolicy-constraints
emrcaspConstraints :: Lens' EMRClusterAutoScalingPolicy EMRClusterScalingConstraints
emrcaspConstraints = lens _eMRClusterAutoScalingPolicyConstraints (\s a -> s { _eMRClusterAutoScalingPolicyConstraints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html#cfn-elasticmapreduce-cluster-autoscalingpolicy-rules
emrcaspRules :: Lens' EMRClusterAutoScalingPolicy [EMRClusterScalingRule]
emrcaspRules = lens _eMRClusterAutoScalingPolicyRules (\s a -> s { _eMRClusterAutoScalingPolicyRules = a })
