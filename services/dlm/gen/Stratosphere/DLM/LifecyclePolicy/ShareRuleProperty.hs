module Stratosphere.DLM.LifecyclePolicy.ShareRuleProperty (
        ShareRuleProperty(..), mkShareRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ShareRuleProperty
  = ShareRuleProperty {targetAccounts :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                       unshareInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                       unshareIntervalUnit :: (Prelude.Maybe (Value Prelude.Text))}
mkShareRuleProperty :: ShareRuleProperty
mkShareRuleProperty
  = ShareRuleProperty
      {targetAccounts = Prelude.Nothing,
       unshareInterval = Prelude.Nothing,
       unshareIntervalUnit = Prelude.Nothing}
instance ToResourceProperties ShareRuleProperty where
  toResourceProperties ShareRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.ShareRule",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetAccounts" Prelude.<$> targetAccounts,
                            (JSON..=) "UnshareInterval" Prelude.<$> unshareInterval,
                            (JSON..=) "UnshareIntervalUnit" Prelude.<$> unshareIntervalUnit])}
instance JSON.ToJSON ShareRuleProperty where
  toJSON ShareRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetAccounts" Prelude.<$> targetAccounts,
               (JSON..=) "UnshareInterval" Prelude.<$> unshareInterval,
               (JSON..=) "UnshareIntervalUnit" Prelude.<$> unshareIntervalUnit]))
instance Property "TargetAccounts" ShareRuleProperty where
  type PropertyType "TargetAccounts" ShareRuleProperty = ValueList (Value Prelude.Text)
  set newValue ShareRuleProperty {..}
    = ShareRuleProperty {targetAccounts = Prelude.pure newValue, ..}
instance Property "UnshareInterval" ShareRuleProperty where
  type PropertyType "UnshareInterval" ShareRuleProperty = Value Prelude.Integer
  set newValue ShareRuleProperty {..}
    = ShareRuleProperty {unshareInterval = Prelude.pure newValue, ..}
instance Property "UnshareIntervalUnit" ShareRuleProperty where
  type PropertyType "UnshareIntervalUnit" ShareRuleProperty = Value Prelude.Text
  set newValue ShareRuleProperty {..}
    = ShareRuleProperty
        {unshareIntervalUnit = Prelude.pure newValue, ..}