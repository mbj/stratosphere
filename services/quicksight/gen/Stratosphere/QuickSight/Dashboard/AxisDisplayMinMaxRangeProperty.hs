module Stratosphere.QuickSight.Dashboard.AxisDisplayMinMaxRangeProperty (
        AxisDisplayMinMaxRangeProperty(..),
        mkAxisDisplayMinMaxRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisDisplayMinMaxRangeProperty
  = AxisDisplayMinMaxRangeProperty {maximum :: (Prelude.Maybe (Value Prelude.Double)),
                                    minimum :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisDisplayMinMaxRangeProperty :: AxisDisplayMinMaxRangeProperty
mkAxisDisplayMinMaxRangeProperty
  = AxisDisplayMinMaxRangeProperty
      {maximum = Prelude.Nothing, minimum = Prelude.Nothing}
instance ToResourceProperties AxisDisplayMinMaxRangeProperty where
  toResourceProperties AxisDisplayMinMaxRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AxisDisplayMinMaxRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Maximum" Prelude.<$> maximum,
                            (JSON..=) "Minimum" Prelude.<$> minimum])}
instance JSON.ToJSON AxisDisplayMinMaxRangeProperty where
  toJSON AxisDisplayMinMaxRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Maximum" Prelude.<$> maximum,
               (JSON..=) "Minimum" Prelude.<$> minimum]))
instance Property "Maximum" AxisDisplayMinMaxRangeProperty where
  type PropertyType "Maximum" AxisDisplayMinMaxRangeProperty = Value Prelude.Double
  set newValue AxisDisplayMinMaxRangeProperty {..}
    = AxisDisplayMinMaxRangeProperty
        {maximum = Prelude.pure newValue, ..}
instance Property "Minimum" AxisDisplayMinMaxRangeProperty where
  type PropertyType "Minimum" AxisDisplayMinMaxRangeProperty = Value Prelude.Double
  set newValue AxisDisplayMinMaxRangeProperty {..}
    = AxisDisplayMinMaxRangeProperty
        {minimum = Prelude.pure newValue, ..}