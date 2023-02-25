module Stratosphere.DLM.LifecyclePolicy.RetainRuleProperty (
        RetainRuleProperty(..), mkRetainRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetainRuleProperty
  = RetainRuleProperty {count :: (Prelude.Maybe (Value Prelude.Integer)),
                        interval :: (Prelude.Maybe (Value Prelude.Integer)),
                        intervalUnit :: (Prelude.Maybe (Value Prelude.Text))}
mkRetainRuleProperty :: RetainRuleProperty
mkRetainRuleProperty
  = RetainRuleProperty
      {count = Prelude.Nothing, interval = Prelude.Nothing,
       intervalUnit = Prelude.Nothing}
instance ToResourceProperties RetainRuleProperty where
  toResourceProperties RetainRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.RetainRule",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit])}
instance JSON.ToJSON RetainRuleProperty where
  toJSON RetainRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit]))
instance Property "Count" RetainRuleProperty where
  type PropertyType "Count" RetainRuleProperty = Value Prelude.Integer
  set newValue RetainRuleProperty {..}
    = RetainRuleProperty {count = Prelude.pure newValue, ..}
instance Property "Interval" RetainRuleProperty where
  type PropertyType "Interval" RetainRuleProperty = Value Prelude.Integer
  set newValue RetainRuleProperty {..}
    = RetainRuleProperty {interval = Prelude.pure newValue, ..}
instance Property "IntervalUnit" RetainRuleProperty where
  type PropertyType "IntervalUnit" RetainRuleProperty = Value Prelude.Text
  set newValue RetainRuleProperty {..}
    = RetainRuleProperty {intervalUnit = Prelude.pure newValue, ..}