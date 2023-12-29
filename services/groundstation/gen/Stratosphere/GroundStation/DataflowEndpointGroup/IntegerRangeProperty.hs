module Stratosphere.GroundStation.DataflowEndpointGroup.IntegerRangeProperty (
        IntegerRangeProperty(..), mkIntegerRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegerRangeProperty
  = IntegerRangeProperty {maximum :: (Prelude.Maybe (Value Prelude.Integer)),
                          minimum :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegerRangeProperty :: IntegerRangeProperty
mkIntegerRangeProperty
  = IntegerRangeProperty
      {maximum = Prelude.Nothing, minimum = Prelude.Nothing}
instance ToResourceProperties IntegerRangeProperty where
  toResourceProperties IntegerRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::DataflowEndpointGroup.IntegerRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Maximum" Prelude.<$> maximum,
                            (JSON..=) "Minimum" Prelude.<$> minimum])}
instance JSON.ToJSON IntegerRangeProperty where
  toJSON IntegerRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Maximum" Prelude.<$> maximum,
               (JSON..=) "Minimum" Prelude.<$> minimum]))
instance Property "Maximum" IntegerRangeProperty where
  type PropertyType "Maximum" IntegerRangeProperty = Value Prelude.Integer
  set newValue IntegerRangeProperty {..}
    = IntegerRangeProperty {maximum = Prelude.pure newValue, ..}
instance Property "Minimum" IntegerRangeProperty where
  type PropertyType "Minimum" IntegerRangeProperty = Value Prelude.Integer
  set newValue IntegerRangeProperty {..}
    = IntegerRangeProperty {minimum = Prelude.pure newValue, ..}