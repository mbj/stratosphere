module Stratosphere.Budgets.Budget.TimePeriodProperty (
        TimePeriodProperty(..), mkTimePeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimePeriodProperty
  = TimePeriodProperty {end :: (Prelude.Maybe (Value Prelude.Text)),
                        start :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimePeriodProperty :: TimePeriodProperty
mkTimePeriodProperty
  = TimePeriodProperty
      {end = Prelude.Nothing, start = Prelude.Nothing}
instance ToResourceProperties TimePeriodProperty where
  toResourceProperties TimePeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.TimePeriod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "End" Prelude.<$> end,
                            (JSON..=) "Start" Prelude.<$> start])}
instance JSON.ToJSON TimePeriodProperty where
  toJSON TimePeriodProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "End" Prelude.<$> end,
               (JSON..=) "Start" Prelude.<$> start]))
instance Property "End" TimePeriodProperty where
  type PropertyType "End" TimePeriodProperty = Value Prelude.Text
  set newValue TimePeriodProperty {..}
    = TimePeriodProperty {end = Prelude.pure newValue, ..}
instance Property "Start" TimePeriodProperty where
  type PropertyType "Start" TimePeriodProperty = Value Prelude.Text
  set newValue TimePeriodProperty {..}
    = TimePeriodProperty {start = Prelude.pure newValue, ..}