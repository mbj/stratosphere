module Stratosphere.CustomerProfiles.SegmentDefinition.DateDimensionProperty (
        DateDimensionProperty(..), mkDateDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateDimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-datedimension.html>
    DateDimensionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-datedimension.html#cfn-customerprofiles-segmentdefinition-datedimension-dimensiontype>
                           dimensionType :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-datedimension.html#cfn-customerprofiles-segmentdefinition-datedimension-values>
                           values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateDimensionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> DateDimensionProperty
mkDateDimensionProperty dimensionType values
  = DateDimensionProperty
      {haddock_workaround_ = (), dimensionType = dimensionType,
       values = values}
instance ToResourceProperties DateDimensionProperty where
  toResourceProperties DateDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.DateDimension",
         supportsTags = Prelude.False,
         properties = ["DimensionType" JSON..= dimensionType,
                       "Values" JSON..= values]}
instance JSON.ToJSON DateDimensionProperty where
  toJSON DateDimensionProperty {..}
    = JSON.object
        ["DimensionType" JSON..= dimensionType, "Values" JSON..= values]
instance Property "DimensionType" DateDimensionProperty where
  type PropertyType "DimensionType" DateDimensionProperty = Value Prelude.Text
  set newValue DateDimensionProperty {..}
    = DateDimensionProperty {dimensionType = newValue, ..}
instance Property "Values" DateDimensionProperty where
  type PropertyType "Values" DateDimensionProperty = ValueList Prelude.Text
  set newValue DateDimensionProperty {..}
    = DateDimensionProperty {values = newValue, ..}