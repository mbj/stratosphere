module Stratosphere.EMR.InstanceGroupConfig.AutoScalingPolicyProperty (
        module Exports, AutoScalingPolicyProperty(..),
        mkAutoScalingPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.InstanceGroupConfig.ScalingConstraintsProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.InstanceGroupConfig.ScalingRuleProperty as Exports
import Stratosphere.ResourceProperties
data AutoScalingPolicyProperty
  = AutoScalingPolicyProperty {constraints :: ScalingConstraintsProperty,
                               rules :: [ScalingRuleProperty]}
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