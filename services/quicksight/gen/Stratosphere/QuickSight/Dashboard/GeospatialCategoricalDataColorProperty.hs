module Stratosphere.QuickSight.Dashboard.GeospatialCategoricalDataColorProperty (
        GeospatialCategoricalDataColorProperty(..),
        mkGeospatialCategoricalDataColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialCategoricalDataColorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcategoricaldatacolor.html>
    GeospatialCategoricalDataColorProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcategoricaldatacolor.html#cfn-quicksight-dashboard-geospatialcategoricaldatacolor-color>
                                            color :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcategoricaldatacolor.html#cfn-quicksight-dashboard-geospatialcategoricaldatacolor-datavalue>
                                            dataValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialCategoricalDataColorProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> GeospatialCategoricalDataColorProperty
mkGeospatialCategoricalDataColorProperty color dataValue
  = GeospatialCategoricalDataColorProperty
      {haddock_workaround_ = (), color = color, dataValue = dataValue}
instance ToResourceProperties GeospatialCategoricalDataColorProperty where
  toResourceProperties GeospatialCategoricalDataColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialCategoricalDataColor",
         supportsTags = Prelude.False,
         properties = ["Color" JSON..= color,
                       "DataValue" JSON..= dataValue]}
instance JSON.ToJSON GeospatialCategoricalDataColorProperty where
  toJSON GeospatialCategoricalDataColorProperty {..}
    = JSON.object
        ["Color" JSON..= color, "DataValue" JSON..= dataValue]
instance Property "Color" GeospatialCategoricalDataColorProperty where
  type PropertyType "Color" GeospatialCategoricalDataColorProperty = Value Prelude.Text
  set newValue GeospatialCategoricalDataColorProperty {..}
    = GeospatialCategoricalDataColorProperty {color = newValue, ..}
instance Property "DataValue" GeospatialCategoricalDataColorProperty where
  type PropertyType "DataValue" GeospatialCategoricalDataColorProperty = Value Prelude.Text
  set newValue GeospatialCategoricalDataColorProperty {..}
    = GeospatialCategoricalDataColorProperty {dataValue = newValue, ..}