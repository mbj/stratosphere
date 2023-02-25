module Stratosphere.Pinpoint.Segment.SetDimensionProperty (
        SetDimensionProperty(..), mkSetDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SetDimensionProperty
  = SetDimensionProperty {dimensionType :: (Prelude.Maybe (Value Prelude.Text)),
                          values :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkSetDimensionProperty :: SetDimensionProperty
mkSetDimensionProperty
  = SetDimensionProperty
      {dimensionType = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties SetDimensionProperty where
  toResourceProperties SetDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.SetDimension",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DimensionType" Prelude.<$> dimensionType,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON SetDimensionProperty where
  toJSON SetDimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DimensionType" Prelude.<$> dimensionType,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "DimensionType" SetDimensionProperty where
  type PropertyType "DimensionType" SetDimensionProperty = Value Prelude.Text
  set newValue SetDimensionProperty {..}
    = SetDimensionProperty {dimensionType = Prelude.pure newValue, ..}
instance Property "Values" SetDimensionProperty where
  type PropertyType "Values" SetDimensionProperty = ValueList (Value Prelude.Text)
  set newValue SetDimensionProperty {..}
    = SetDimensionProperty {values = Prelude.pure newValue, ..}