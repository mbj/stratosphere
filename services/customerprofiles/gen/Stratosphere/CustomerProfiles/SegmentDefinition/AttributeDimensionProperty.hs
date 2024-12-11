module Stratosphere.CustomerProfiles.SegmentDefinition.AttributeDimensionProperty (
        AttributeDimensionProperty(..), mkAttributeDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeDimensionProperty
  = AttributeDimensionProperty {dimensionType :: (Value Prelude.Text),
                                values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeDimensionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> AttributeDimensionProperty
mkAttributeDimensionProperty dimensionType values
  = AttributeDimensionProperty
      {dimensionType = dimensionType, values = values}
instance ToResourceProperties AttributeDimensionProperty where
  toResourceProperties AttributeDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.AttributeDimension",
         supportsTags = Prelude.False,
         properties = ["DimensionType" JSON..= dimensionType,
                       "Values" JSON..= values]}
instance JSON.ToJSON AttributeDimensionProperty where
  toJSON AttributeDimensionProperty {..}
    = JSON.object
        ["DimensionType" JSON..= dimensionType, "Values" JSON..= values]
instance Property "DimensionType" AttributeDimensionProperty where
  type PropertyType "DimensionType" AttributeDimensionProperty = Value Prelude.Text
  set newValue AttributeDimensionProperty {..}
    = AttributeDimensionProperty {dimensionType = newValue, ..}
instance Property "Values" AttributeDimensionProperty where
  type PropertyType "Values" AttributeDimensionProperty = ValueList Prelude.Text
  set newValue AttributeDimensionProperty {..}
    = AttributeDimensionProperty {values = newValue, ..}