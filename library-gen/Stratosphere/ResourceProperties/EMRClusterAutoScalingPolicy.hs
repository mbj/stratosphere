
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html

module Stratosphere.ResourceProperties.EMRClusterAutoScalingPolicy where

import Prelude
import Stratosphere.ResourceImports
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
    [ (Just . ("Constraints",) . toJSON) _eMRClusterAutoScalingPolicyConstraints
    , (Just . ("Rules",) . toJSON) _eMRClusterAutoScalingPolicyRules
    ]

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
