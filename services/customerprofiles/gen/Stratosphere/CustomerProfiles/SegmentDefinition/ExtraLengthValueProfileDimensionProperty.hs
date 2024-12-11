module Stratosphere.CustomerProfiles.SegmentDefinition.ExtraLengthValueProfileDimensionProperty (
        ExtraLengthValueProfileDimensionProperty(..),
        mkExtraLengthValueProfileDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExtraLengthValueProfileDimensionProperty
  = ExtraLengthValueProfileDimensionProperty {dimensionType :: (Value Prelude.Text),
                                              values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExtraLengthValueProfileDimensionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> ExtraLengthValueProfileDimensionProperty
mkExtraLengthValueProfileDimensionProperty dimensionType values
  = ExtraLengthValueProfileDimensionProperty
      {dimensionType = dimensionType, values = values}
instance ToResourceProperties ExtraLengthValueProfileDimensionProperty where
  toResourceProperties ExtraLengthValueProfileDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.ExtraLengthValueProfileDimension",
         supportsTags = Prelude.False,
         properties = ["DimensionType" JSON..= dimensionType,
                       "Values" JSON..= values]}
instance JSON.ToJSON ExtraLengthValueProfileDimensionProperty where
  toJSON ExtraLengthValueProfileDimensionProperty {..}
    = JSON.object
        ["DimensionType" JSON..= dimensionType, "Values" JSON..= values]
instance Property "DimensionType" ExtraLengthValueProfileDimensionProperty where
  type PropertyType "DimensionType" ExtraLengthValueProfileDimensionProperty = Value Prelude.Text
  set newValue ExtraLengthValueProfileDimensionProperty {..}
    = ExtraLengthValueProfileDimensionProperty
        {dimensionType = newValue, ..}
instance Property "Values" ExtraLengthValueProfileDimensionProperty where
  type PropertyType "Values" ExtraLengthValueProfileDimensionProperty = ValueList Prelude.Text
  set newValue ExtraLengthValueProfileDimensionProperty {..}
    = ExtraLengthValueProfileDimensionProperty {values = newValue, ..}