module Stratosphere.EMR.Cluster.ScalingRuleProperty (
        module Exports, ScalingRuleProperty(..), mkScalingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.ScalingActionProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.ScalingTriggerProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingrule.html>
    ScalingRuleProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingrule.html#cfn-elasticmapreduce-cluster-scalingrule-action>
                         action :: ScalingActionProperty,
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingrule.html#cfn-elasticmapreduce-cluster-scalingrule-description>
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingrule.html#cfn-elasticmapreduce-cluster-scalingrule-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingrule.html#cfn-elasticmapreduce-cluster-scalingrule-trigger>
                         trigger :: ScalingTriggerProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingRuleProperty ::
  ScalingActionProperty
  -> Value Prelude.Text
     -> ScalingTriggerProperty -> ScalingRuleProperty
mkScalingRuleProperty action name trigger
  = ScalingRuleProperty
      {haddock_workaround_ = (), action = action, name = name,
       trigger = trigger, description = Prelude.Nothing}
instance ToResourceProperties ScalingRuleProperty where
  toResourceProperties ScalingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.ScalingRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Name" JSON..= name,
                            "Trigger" JSON..= trigger]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON ScalingRuleProperty where
  toJSON ScalingRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Name" JSON..= name,
               "Trigger" JSON..= trigger]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Action" ScalingRuleProperty where
  type PropertyType "Action" ScalingRuleProperty = ScalingActionProperty
  set newValue ScalingRuleProperty {..}
    = ScalingRuleProperty {action = newValue, ..}
instance Property "Description" ScalingRuleProperty where
  type PropertyType "Description" ScalingRuleProperty = Value Prelude.Text
  set newValue ScalingRuleProperty {..}
    = ScalingRuleProperty {description = Prelude.pure newValue, ..}
instance Property "Name" ScalingRuleProperty where
  type PropertyType "Name" ScalingRuleProperty = Value Prelude.Text
  set newValue ScalingRuleProperty {..}
    = ScalingRuleProperty {name = newValue, ..}
instance Property "Trigger" ScalingRuleProperty where
  type PropertyType "Trigger" ScalingRuleProperty = ScalingTriggerProperty
  set newValue ScalingRuleProperty {..}
    = ScalingRuleProperty {trigger = newValue, ..}