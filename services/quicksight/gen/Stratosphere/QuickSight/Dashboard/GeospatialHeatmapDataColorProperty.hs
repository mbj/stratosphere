module Stratosphere.QuickSight.Dashboard.GeospatialHeatmapDataColorProperty (
        GeospatialHeatmapDataColorProperty(..),
        mkGeospatialHeatmapDataColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialHeatmapDataColorProperty
  = GeospatialHeatmapDataColorProperty {color :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialHeatmapDataColorProperty ::
  Value Prelude.Text -> GeospatialHeatmapDataColorProperty
mkGeospatialHeatmapDataColorProperty color
  = GeospatialHeatmapDataColorProperty {color = color}
instance ToResourceProperties GeospatialHeatmapDataColorProperty where
  toResourceProperties GeospatialHeatmapDataColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialHeatmapDataColor",
         supportsTags = Prelude.False, properties = ["Color" JSON..= color]}
instance JSON.ToJSON GeospatialHeatmapDataColorProperty where
  toJSON GeospatialHeatmapDataColorProperty {..}
    = JSON.object ["Color" JSON..= color]
instance Property "Color" GeospatialHeatmapDataColorProperty where
  type PropertyType "Color" GeospatialHeatmapDataColorProperty = Value Prelude.Text
  set newValue GeospatialHeatmapDataColorProperty {}
    = GeospatialHeatmapDataColorProperty {color = newValue, ..}