module Stratosphere.DLM.LifecyclePolicy.RetentionArchiveTierProperty (
        RetentionArchiveTierProperty(..), mkRetentionArchiveTierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetentionArchiveTierProperty
  = RetentionArchiveTierProperty {count :: (Prelude.Maybe (Value Prelude.Integer)),
                                  interval :: (Prelude.Maybe (Value Prelude.Integer)),
                                  intervalUnit :: (Prelude.Maybe (Value Prelude.Text))}
mkRetentionArchiveTierProperty :: RetentionArchiveTierProperty
mkRetentionArchiveTierProperty
  = RetentionArchiveTierProperty
      {count = Prelude.Nothing, interval = Prelude.Nothing,
       intervalUnit = Prelude.Nothing}
instance ToResourceProperties RetentionArchiveTierProperty where
  toResourceProperties RetentionArchiveTierProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.RetentionArchiveTier",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit])}
instance JSON.ToJSON RetentionArchiveTierProperty where
  toJSON RetentionArchiveTierProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit]))
instance Property "Count" RetentionArchiveTierProperty where
  type PropertyType "Count" RetentionArchiveTierProperty = Value Prelude.Integer
  set newValue RetentionArchiveTierProperty {..}
    = RetentionArchiveTierProperty {count = Prelude.pure newValue, ..}
instance Property "Interval" RetentionArchiveTierProperty where
  type PropertyType "Interval" RetentionArchiveTierProperty = Value Prelude.Integer
  set newValue RetentionArchiveTierProperty {..}
    = RetentionArchiveTierProperty
        {interval = Prelude.pure newValue, ..}
instance Property "IntervalUnit" RetentionArchiveTierProperty where
  type PropertyType "IntervalUnit" RetentionArchiveTierProperty = Value Prelude.Text
  set newValue RetentionArchiveTierProperty {..}
    = RetentionArchiveTierProperty
        {intervalUnit = Prelude.pure newValue, ..}