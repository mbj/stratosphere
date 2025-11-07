module Stratosphere.QuickSight.Analysis.GeospatialGradientStepColorProperty (
        GeospatialGradientStepColorProperty(..),
        mkGeospatialGradientStepColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialGradientStepColorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialgradientstepcolor.html>
    GeospatialGradientStepColorProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialgradientstepcolor.html#cfn-quicksight-analysis-geospatialgradientstepcolor-color>
                                         color :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialgradientstepcolor.html#cfn-quicksight-analysis-geospatialgradientstepcolor-datavalue>
                                         dataValue :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialGradientStepColorProperty ::
  Value Prelude.Text
  -> Value Prelude.Double -> GeospatialGradientStepColorProperty
mkGeospatialGradientStepColorProperty color dataValue
  = GeospatialGradientStepColorProperty
      {haddock_workaround_ = (), color = color, dataValue = dataValue}
instance ToResourceProperties GeospatialGradientStepColorProperty where
  toResourceProperties GeospatialGradientStepColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialGradientStepColor",
         supportsTags = Prelude.False,
         properties = ["Color" JSON..= color,
                       "DataValue" JSON..= dataValue]}
instance JSON.ToJSON GeospatialGradientStepColorProperty where
  toJSON GeospatialGradientStepColorProperty {..}
    = JSON.object
        ["Color" JSON..= color, "DataValue" JSON..= dataValue]
instance Property "Color" GeospatialGradientStepColorProperty where
  type PropertyType "Color" GeospatialGradientStepColorProperty = Value Prelude.Text
  set newValue GeospatialGradientStepColorProperty {..}
    = GeospatialGradientStepColorProperty {color = newValue, ..}
instance Property "DataValue" GeospatialGradientStepColorProperty where
  type PropertyType "DataValue" GeospatialGradientStepColorProperty = Value Prelude.Double
  set newValue GeospatialGradientStepColorProperty {..}
    = GeospatialGradientStepColorProperty {dataValue = newValue, ..}