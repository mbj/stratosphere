module Stratosphere.Scheduler.Schedule.FlexibleTimeWindowProperty (
        FlexibleTimeWindowProperty(..), mkFlexibleTimeWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlexibleTimeWindowProperty
  = FlexibleTimeWindowProperty {maximumWindowInMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                                mode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlexibleTimeWindowProperty ::
  Value Prelude.Text -> FlexibleTimeWindowProperty
mkFlexibleTimeWindowProperty mode
  = FlexibleTimeWindowProperty
      {mode = mode, maximumWindowInMinutes = Prelude.Nothing}
instance ToResourceProperties FlexibleTimeWindowProperty where
  toResourceProperties FlexibleTimeWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.FlexibleTimeWindow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Mode" JSON..= mode]
                           (Prelude.catMaybes
                              [(JSON..=) "MaximumWindowInMinutes"
                                 Prelude.<$> maximumWindowInMinutes]))}
instance JSON.ToJSON FlexibleTimeWindowProperty where
  toJSON FlexibleTimeWindowProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Mode" JSON..= mode]
              (Prelude.catMaybes
                 [(JSON..=) "MaximumWindowInMinutes"
                    Prelude.<$> maximumWindowInMinutes])))
instance Property "MaximumWindowInMinutes" FlexibleTimeWindowProperty where
  type PropertyType "MaximumWindowInMinutes" FlexibleTimeWindowProperty = Value Prelude.Double
  set newValue FlexibleTimeWindowProperty {..}
    = FlexibleTimeWindowProperty
        {maximumWindowInMinutes = Prelude.pure newValue, ..}
instance Property "Mode" FlexibleTimeWindowProperty where
  type PropertyType "Mode" FlexibleTimeWindowProperty = Value Prelude.Text
  set newValue FlexibleTimeWindowProperty {..}
    = FlexibleTimeWindowProperty {mode = newValue, ..}