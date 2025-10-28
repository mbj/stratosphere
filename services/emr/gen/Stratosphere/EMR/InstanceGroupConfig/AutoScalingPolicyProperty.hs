module Stratosphere.EMR.InstanceGroupConfig.AutoScalingPolicyProperty (
        module Exports, AutoScalingPolicyProperty(..),
        mkAutoScalingPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.InstanceGroupConfig.ScalingConstraintsProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.InstanceGroupConfig.ScalingRuleProperty as Exports
import Stratosphere.ResourceProperties
data AutoScalingPolicyProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html>
    AutoScalingPolicyProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-constraints>
                               constraints :: ScalingConstraintsProperty,
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-rules>
                               rules :: [ScalingRuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoScalingPolicyProperty ::
  ScalingConstraintsProperty
  -> [ScalingRuleProperty] -> AutoScalingPolicyProperty
mkAutoScalingPolicyProperty constraints rules
  = AutoScalingPolicyProperty
      {constraints = constraints, rules = rules}
instance ToResourceProperties AutoScalingPolicyProperty where
  toResourceProperties AutoScalingPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceGroupConfig.AutoScalingPolicy",
         supportsTags = Prelude.False,
         properties = ["Constraints" JSON..= constraints,
                       "Rules" JSON..= rules]}
instance JSON.ToJSON AutoScalingPolicyProperty where
  toJSON AutoScalingPolicyProperty {..}
    = JSON.object
        ["Constraints" JSON..= constraints, "Rules" JSON..= rules]
instance Property "Constraints" AutoScalingPolicyProperty where
  type PropertyType "Constraints" AutoScalingPolicyProperty = ScalingConstraintsProperty
  set newValue AutoScalingPolicyProperty {..}
    = AutoScalingPolicyProperty {constraints = newValue, ..}
instance Property "Rules" AutoScalingPolicyProperty where
  type PropertyType "Rules" AutoScalingPolicyProperty = [ScalingRuleProperty]
  set newValue AutoScalingPolicyProperty {..}
    = AutoScalingPolicyProperty {rules = newValue, ..}