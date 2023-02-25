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
  = ScalingRuleProperty {action :: ScalingActionProperty,
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         name :: (Value Prelude.Text),
                         trigger :: ScalingTriggerProperty}
mkScalingRuleProperty ::
  ScalingActionProperty
  -> Value Prelude.Text
     -> ScalingTriggerProperty -> ScalingRuleProperty
mkScalingRuleProperty action name trigger
  = ScalingRuleProperty
      {action = action, name = name, trigger = trigger,
       description = Prelude.Nothing}
instance ToResourceProperties ScalingRuleProperty where
  toResourceProperties ScalingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.ScalingRule",
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