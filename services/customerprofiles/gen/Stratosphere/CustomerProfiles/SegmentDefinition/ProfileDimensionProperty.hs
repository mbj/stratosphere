module Stratosphere.CustomerProfiles.SegmentDefinition.ProfileDimensionProperty (
        ProfileDimensionProperty(..), mkProfileDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProfileDimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profiledimension.html>
    ProfileDimensionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profiledimension.html#cfn-customerprofiles-segmentdefinition-profiledimension-dimensiontype>
                              dimensionType :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profiledimension.html#cfn-customerprofiles-segmentdefinition-profiledimension-values>
                              values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfileDimensionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ProfileDimensionProperty
mkProfileDimensionProperty dimensionType values
  = ProfileDimensionProperty
      {haddock_workaround_ = (), dimensionType = dimensionType,
       values = values}
instance ToResourceProperties ProfileDimensionProperty where
  toResourceProperties ProfileDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.ProfileDimension",
         supportsTags = Prelude.False,
         properties = ["DimensionType" JSON..= dimensionType,
                       "Values" JSON..= values]}
instance JSON.ToJSON ProfileDimensionProperty where
  toJSON ProfileDimensionProperty {..}
    = JSON.object
        ["DimensionType" JSON..= dimensionType, "Values" JSON..= values]
instance Property "DimensionType" ProfileDimensionProperty where
  type PropertyType "DimensionType" ProfileDimensionProperty = Value Prelude.Text
  set newValue ProfileDimensionProperty {..}
    = ProfileDimensionProperty {dimensionType = newValue, ..}
instance Property "Values" ProfileDimensionProperty where
  type PropertyType "Values" ProfileDimensionProperty = ValueList Prelude.Text
  set newValue ProfileDimensionProperty {..}
    = ProfileDimensionProperty {values = newValue, ..}