module Stratosphere.CustomerProfiles.SegmentDefinition.RangeOverrideProperty (
        RangeOverrideProperty(..), mkRangeOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RangeOverrideProperty
  = RangeOverrideProperty {end :: (Prelude.Maybe (Value Prelude.Integer)),
                           start :: (Value Prelude.Integer),
                           unit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRangeOverrideProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> RangeOverrideProperty
mkRangeOverrideProperty start unit
  = RangeOverrideProperty
      {start = start, unit = unit, end = Prelude.Nothing}
instance ToResourceProperties RangeOverrideProperty where
  toResourceProperties RangeOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.RangeOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Start" JSON..= start, "Unit" JSON..= unit]
                           (Prelude.catMaybes [(JSON..=) "End" Prelude.<$> end]))}
instance JSON.ToJSON RangeOverrideProperty where
  toJSON RangeOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Start" JSON..= start, "Unit" JSON..= unit]
              (Prelude.catMaybes [(JSON..=) "End" Prelude.<$> end])))
instance Property "End" RangeOverrideProperty where
  type PropertyType "End" RangeOverrideProperty = Value Prelude.Integer
  set newValue RangeOverrideProperty {..}
    = RangeOverrideProperty {end = Prelude.pure newValue, ..}
instance Property "Start" RangeOverrideProperty where
  type PropertyType "Start" RangeOverrideProperty = Value Prelude.Integer
  set newValue RangeOverrideProperty {..}
    = RangeOverrideProperty {start = newValue, ..}
instance Property "Unit" RangeOverrideProperty where
  type PropertyType "Unit" RangeOverrideProperty = Value Prelude.Text
  set newValue RangeOverrideProperty {..}
    = RangeOverrideProperty {unit = newValue, ..}