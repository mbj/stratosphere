module Stratosphere.InspectorV2.Filter.PortRangeFilterProperty (
        PortRangeFilterProperty(..), mkPortRangeFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortRangeFilterProperty
  = PortRangeFilterProperty {beginInclusive :: (Prelude.Maybe (Value Prelude.Integer)),
                             endInclusive :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortRangeFilterProperty :: PortRangeFilterProperty
mkPortRangeFilterProperty
  = PortRangeFilterProperty
      {beginInclusive = Prelude.Nothing, endInclusive = Prelude.Nothing}
instance ToResourceProperties PortRangeFilterProperty where
  toResourceProperties PortRangeFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::Filter.PortRangeFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BeginInclusive" Prelude.<$> beginInclusive,
                            (JSON..=) "EndInclusive" Prelude.<$> endInclusive])}
instance JSON.ToJSON PortRangeFilterProperty where
  toJSON PortRangeFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BeginInclusive" Prelude.<$> beginInclusive,
               (JSON..=) "EndInclusive" Prelude.<$> endInclusive]))
instance Property "BeginInclusive" PortRangeFilterProperty where
  type PropertyType "BeginInclusive" PortRangeFilterProperty = Value Prelude.Integer
  set newValue PortRangeFilterProperty {..}
    = PortRangeFilterProperty
        {beginInclusive = Prelude.pure newValue, ..}
instance Property "EndInclusive" PortRangeFilterProperty where
  type PropertyType "EndInclusive" PortRangeFilterProperty = Value Prelude.Integer
  set newValue PortRangeFilterProperty {..}
    = PortRangeFilterProperty
        {endInclusive = Prelude.pure newValue, ..}