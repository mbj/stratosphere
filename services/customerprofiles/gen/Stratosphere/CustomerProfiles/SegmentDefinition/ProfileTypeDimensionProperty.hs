module Stratosphere.CustomerProfiles.SegmentDefinition.ProfileTypeDimensionProperty (
        ProfileTypeDimensionProperty(..), mkProfileTypeDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProfileTypeDimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profiletypedimension.html>
    ProfileTypeDimensionProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profiletypedimension.html#cfn-customerprofiles-segmentdefinition-profiletypedimension-dimensiontype>
                                  dimensionType :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profiletypedimension.html#cfn-customerprofiles-segmentdefinition-profiletypedimension-values>
                                  values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfileTypeDimensionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ProfileTypeDimensionProperty
mkProfileTypeDimensionProperty dimensionType values
  = ProfileTypeDimensionProperty
      {haddock_workaround_ = (), dimensionType = dimensionType,
       values = values}
instance ToResourceProperties ProfileTypeDimensionProperty where
  toResourceProperties ProfileTypeDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.ProfileTypeDimension",
         supportsTags = Prelude.False,
         properties = ["DimensionType" JSON..= dimensionType,
                       "Values" JSON..= values]}
instance JSON.ToJSON ProfileTypeDimensionProperty where
  toJSON ProfileTypeDimensionProperty {..}
    = JSON.object
        ["DimensionType" JSON..= dimensionType, "Values" JSON..= values]
instance Property "DimensionType" ProfileTypeDimensionProperty where
  type PropertyType "DimensionType" ProfileTypeDimensionProperty = Value Prelude.Text
  set newValue ProfileTypeDimensionProperty {..}
    = ProfileTypeDimensionProperty {dimensionType = newValue, ..}
instance Property "Values" ProfileTypeDimensionProperty where
  type PropertyType "Values" ProfileTypeDimensionProperty = ValueList Prelude.Text
  set newValue ProfileTypeDimensionProperty {..}
    = ProfileTypeDimensionProperty {values = newValue, ..}