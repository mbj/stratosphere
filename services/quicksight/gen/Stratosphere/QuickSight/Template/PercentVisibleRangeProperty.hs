module Stratosphere.QuickSight.Template.PercentVisibleRangeProperty (
        PercentVisibleRangeProperty(..), mkPercentVisibleRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PercentVisibleRangeProperty
  = PercentVisibleRangeProperty {from :: (Prelude.Maybe (Value Prelude.Double)),
                                 to :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPercentVisibleRangeProperty :: PercentVisibleRangeProperty
mkPercentVisibleRangeProperty
  = PercentVisibleRangeProperty
      {from = Prelude.Nothing, to = Prelude.Nothing}
instance ToResourceProperties PercentVisibleRangeProperty where
  toResourceProperties PercentVisibleRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PercentVisibleRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "From" Prelude.<$> from,
                            (JSON..=) "To" Prelude.<$> to])}
instance JSON.ToJSON PercentVisibleRangeProperty where
  toJSON PercentVisibleRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "From" Prelude.<$> from,
               (JSON..=) "To" Prelude.<$> to]))
instance Property "From" PercentVisibleRangeProperty where
  type PropertyType "From" PercentVisibleRangeProperty = Value Prelude.Double
  set newValue PercentVisibleRangeProperty {..}
    = PercentVisibleRangeProperty {from = Prelude.pure newValue, ..}
instance Property "To" PercentVisibleRangeProperty where
  type PropertyType "To" PercentVisibleRangeProperty = Value Prelude.Double
  set newValue PercentVisibleRangeProperty {..}
    = PercentVisibleRangeProperty {to = Prelude.pure newValue, ..}