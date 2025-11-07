module Stratosphere.QuickSight.Analysis.GeospatialHeatmapDataColorProperty (
        GeospatialHeatmapDataColorProperty(..),
        mkGeospatialHeatmapDataColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialHeatmapDataColorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialheatmapdatacolor.html>
    GeospatialHeatmapDataColorProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialheatmapdatacolor.html#cfn-quicksight-analysis-geospatialheatmapdatacolor-color>
                                        color :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialHeatmapDataColorProperty ::
  Value Prelude.Text -> GeospatialHeatmapDataColorProperty
mkGeospatialHeatmapDataColorProperty color
  = GeospatialHeatmapDataColorProperty
      {haddock_workaround_ = (), color = color}
instance ToResourceProperties GeospatialHeatmapDataColorProperty where
  toResourceProperties GeospatialHeatmapDataColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialHeatmapDataColor",
         supportsTags = Prelude.False, properties = ["Color" JSON..= color]}
instance JSON.ToJSON GeospatialHeatmapDataColorProperty where
  toJSON GeospatialHeatmapDataColorProperty {..}
    = JSON.object ["Color" JSON..= color]
instance Property "Color" GeospatialHeatmapDataColorProperty where
  type PropertyType "Color" GeospatialHeatmapDataColorProperty = Value Prelude.Text
  set newValue GeospatialHeatmapDataColorProperty {..}
    = GeospatialHeatmapDataColorProperty {color = newValue, ..}