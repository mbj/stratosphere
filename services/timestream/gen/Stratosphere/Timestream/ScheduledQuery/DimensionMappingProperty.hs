module Stratosphere.Timestream.ScheduledQuery.DimensionMappingProperty (
        DimensionMappingProperty(..), mkDimensionMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DimensionMappingProperty
  = DimensionMappingProperty {dimensionValueType :: (Value Prelude.Text),
                              name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDimensionMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DimensionMappingProperty
mkDimensionMappingProperty dimensionValueType name
  = DimensionMappingProperty
      {dimensionValueType = dimensionValueType, name = name}
instance ToResourceProperties DimensionMappingProperty where
  toResourceProperties DimensionMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.DimensionMapping",
         supportsTags = Prelude.False,
         properties = ["DimensionValueType" JSON..= dimensionValueType,
                       "Name" JSON..= name]}
instance JSON.ToJSON DimensionMappingProperty where
  toJSON DimensionMappingProperty {..}
    = JSON.object
        ["DimensionValueType" JSON..= dimensionValueType,
         "Name" JSON..= name]
instance Property "DimensionValueType" DimensionMappingProperty where
  type PropertyType "DimensionValueType" DimensionMappingProperty = Value Prelude.Text
  set newValue DimensionMappingProperty {..}
    = DimensionMappingProperty {dimensionValueType = newValue, ..}
instance Property "Name" DimensionMappingProperty where
  type PropertyType "Name" DimensionMappingProperty = Value Prelude.Text
  set newValue DimensionMappingProperty {..}
    = DimensionMappingProperty {name = newValue, ..}