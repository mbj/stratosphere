module Stratosphere.Pipes.Pipe.DimensionMappingProperty (
        DimensionMappingProperty(..), mkDimensionMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DimensionMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-dimensionmapping.html>
    DimensionMappingProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-dimensionmapping.html#cfn-pipes-pipe-dimensionmapping-dimensionname>
                              dimensionName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-dimensionmapping.html#cfn-pipes-pipe-dimensionmapping-dimensionvalue>
                              dimensionValue :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-dimensionmapping.html#cfn-pipes-pipe-dimensionmapping-dimensionvaluetype>
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
      {haddock_workaround_ = (), dimensionName = dimensionName,
       dimensionValue = dimensionValue,
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