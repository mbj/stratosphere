module Stratosphere.Pipes.Pipe.DimensionMappingProperty (
        DimensionMappingProperty(..), mkDimensionMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DimensionMappingProperty
  = DimensionMappingProperty {dimensionName :: (Value Prelude.Text),
                              dimensionValue :: (Value Prelude.Text),
                              dimensionValueType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDimensionMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DimensionMappingProperty
mkDimensionMappingProperty
  dimensionName
  dimensionValue
  dimensionValueType
  = DimensionMappingProperty
      {dimensionName = dimensionName, dimensionValue = dimensionValue,
       dimensionValueType = dimensionValueType}
instance ToResourceProperties DimensionMappingProperty where
  toResourceProperties DimensionMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.DimensionMapping",
         supportsTags = Prelude.False,
         properties = ["DimensionName" JSON..= dimensionName,
                       "DimensionValue" JSON..= dimensionValue,
                       "DimensionValueType" JSON..= dimensionValueType]}
instance JSON.ToJSON DimensionMappingProperty where
  toJSON DimensionMappingProperty {..}
    = JSON.object
        ["DimensionName" JSON..= dimensionName,
         "DimensionValue" JSON..= dimensionValue,
         "DimensionValueType" JSON..= dimensionValueType]
instance Property "DimensionName" DimensionMappingProperty where
  type PropertyType "DimensionName" DimensionMappingProperty = Value Prelude.Text
  set newValue DimensionMappingProperty {..}
    = DimensionMappingProperty {dimensionName = newValue, ..}
instance Property "DimensionValue" DimensionMappingProperty where
  type PropertyType "DimensionValue" DimensionMappingProperty = Value Prelude.Text
  set newValue DimensionMappingProperty {..}
    = DimensionMappingProperty {dimensionValue = newValue, ..}
instance Property "DimensionValueType" DimensionMappingProperty where
  type PropertyType "DimensionValueType" DimensionMappingProperty = Value Prelude.Text
  set newValue DimensionMappingProperty {..}
    = DimensionMappingProperty {dimensionValueType = newValue, ..}