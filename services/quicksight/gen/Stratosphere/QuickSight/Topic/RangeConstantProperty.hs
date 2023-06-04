module Stratosphere.QuickSight.Topic.RangeConstantProperty (
        RangeConstantProperty(..), mkRangeConstantProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RangeConstantProperty
  = RangeConstantProperty {maximum :: (Prelude.Maybe (Value Prelude.Text)),
                           minimum :: (Prelude.Maybe (Value Prelude.Text))}
mkRangeConstantProperty :: RangeConstantProperty
mkRangeConstantProperty
  = RangeConstantProperty
      {maximum = Prelude.Nothing, minimum = Prelude.Nothing}
instance ToResourceProperties RangeConstantProperty where
  toResourceProperties RangeConstantProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.RangeConstant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Maximum" Prelude.<$> maximum,
                            (JSON..=) "Minimum" Prelude.<$> minimum])}
instance JSON.ToJSON RangeConstantProperty where
  toJSON RangeConstantProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Maximum" Prelude.<$> maximum,
               (JSON..=) "Minimum" Prelude.<$> minimum]))
instance Property "Maximum" RangeConstantProperty where
  type PropertyType "Maximum" RangeConstantProperty = Value Prelude.Text
  set newValue RangeConstantProperty {..}
    = RangeConstantProperty {maximum = Prelude.pure newValue, ..}
instance Property "Minimum" RangeConstantProperty where
  type PropertyType "Minimum" RangeConstantProperty = Value Prelude.Text
  set newValue RangeConstantProperty {..}
    = RangeConstantProperty {minimum = Prelude.pure newValue, ..}