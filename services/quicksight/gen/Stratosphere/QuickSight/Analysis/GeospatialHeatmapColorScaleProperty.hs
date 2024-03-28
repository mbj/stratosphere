module Stratosphere.QuickSight.Analysis.GeospatialHeatmapColorScaleProperty (
        module Exports, GeospatialHeatmapColorScaleProperty(..),
        mkGeospatialHeatmapColorScaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialHeatmapDataColorProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialHeatmapColorScaleProperty
  = GeospatialHeatmapColorScaleProperty {colors :: (Prelude.Maybe [GeospatialHeatmapDataColorProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialHeatmapColorScaleProperty ::
  GeospatialHeatmapColorScaleProperty
mkGeospatialHeatmapColorScaleProperty
  = GeospatialHeatmapColorScaleProperty {colors = Prelude.Nothing}
instance ToResourceProperties GeospatialHeatmapColorScaleProperty where
  toResourceProperties GeospatialHeatmapColorScaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialHeatmapColorScale",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Colors" Prelude.<$> colors])}
instance JSON.ToJSON GeospatialHeatmapColorScaleProperty where
  toJSON GeospatialHeatmapColorScaleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Colors" Prelude.<$> colors]))
instance Property "Colors" GeospatialHeatmapColorScaleProperty where
  type PropertyType "Colors" GeospatialHeatmapColorScaleProperty = [GeospatialHeatmapDataColorProperty]
  set newValue GeospatialHeatmapColorScaleProperty {}
    = GeospatialHeatmapColorScaleProperty
        {colors = Prelude.pure newValue, ..}