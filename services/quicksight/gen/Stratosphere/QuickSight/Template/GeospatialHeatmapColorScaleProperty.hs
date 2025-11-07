module Stratosphere.QuickSight.Template.GeospatialHeatmapColorScaleProperty (
        module Exports, GeospatialHeatmapColorScaleProperty(..),
        mkGeospatialHeatmapColorScaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GeospatialHeatmapDataColorProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialHeatmapColorScaleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialheatmapcolorscale.html>
    GeospatialHeatmapColorScaleProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialheatmapcolorscale.html#cfn-quicksight-template-geospatialheatmapcolorscale-colors>
                                         colors :: (Prelude.Maybe [GeospatialHeatmapDataColorProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialHeatmapColorScaleProperty ::
  GeospatialHeatmapColorScaleProperty
mkGeospatialHeatmapColorScaleProperty
  = GeospatialHeatmapColorScaleProperty
      {haddock_workaround_ = (), colors = Prelude.Nothing}
instance ToResourceProperties GeospatialHeatmapColorScaleProperty where
  toResourceProperties GeospatialHeatmapColorScaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GeospatialHeatmapColorScale",
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
  set newValue GeospatialHeatmapColorScaleProperty {..}
    = GeospatialHeatmapColorScaleProperty
        {colors = Prelude.pure newValue, ..}