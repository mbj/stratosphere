module Stratosphere.DLM.LifecyclePolicy.FastRestoreRuleProperty (
        FastRestoreRuleProperty(..), mkFastRestoreRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FastRestoreRuleProperty
  = FastRestoreRuleProperty {availabilityZones :: (Prelude.Maybe (ValueList Prelude.Text)),
                             count :: (Prelude.Maybe (Value Prelude.Integer)),
                             interval :: (Prelude.Maybe (Value Prelude.Integer)),
                             intervalUnit :: (Prelude.Maybe (Value Prelude.Text))}
mkFastRestoreRuleProperty :: FastRestoreRuleProperty
mkFastRestoreRuleProperty
  = FastRestoreRuleProperty
      {availabilityZones = Prelude.Nothing, count = Prelude.Nothing,
       interval = Prelude.Nothing, intervalUnit = Prelude.Nothing}
instance ToResourceProperties FastRestoreRuleProperty where
  toResourceProperties FastRestoreRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.FastRestoreRule",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
                            (JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit])}
instance JSON.ToJSON FastRestoreRuleProperty where
  toJSON FastRestoreRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
               (JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit]))
instance Property "AvailabilityZones" FastRestoreRuleProperty where
  type PropertyType "AvailabilityZones" FastRestoreRuleProperty = ValueList Prelude.Text
  set newValue FastRestoreRuleProperty {..}
    = FastRestoreRuleProperty
        {availabilityZones = Prelude.pure newValue, ..}
instance Property "Count" FastRestoreRuleProperty where
  type PropertyType "Count" FastRestoreRuleProperty = Value Prelude.Integer
  set newValue FastRestoreRuleProperty {..}
    = FastRestoreRuleProperty {count = Prelude.pure newValue, ..}
instance Property "Interval" FastRestoreRuleProperty where
  type PropertyType "Interval" FastRestoreRuleProperty = Value Prelude.Integer
  set newValue FastRestoreRuleProperty {..}
    = FastRestoreRuleProperty {interval = Prelude.pure newValue, ..}
instance Property "IntervalUnit" FastRestoreRuleProperty where
  type PropertyType "IntervalUnit" FastRestoreRuleProperty = Value Prelude.Text
  set newValue FastRestoreRuleProperty {..}
    = FastRestoreRuleProperty
        {intervalUnit = Prelude.pure newValue, ..}