module Stratosphere.QuickSight.Template.GeospatialHeatmapConfigurationProperty (
        module Exports, GeospatialHeatmapConfigurationProperty(..),
        mkGeospatialHeatmapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GeospatialHeatmapColorScaleProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialHeatmapConfigurationProperty
  = GeospatialHeatmapConfigurationProperty {heatmapColor :: (Prelude.Maybe GeospatialHeatmapColorScaleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialHeatmapConfigurationProperty ::
  GeospatialHeatmapConfigurationProperty
mkGeospatialHeatmapConfigurationProperty
  = GeospatialHeatmapConfigurationProperty
      {heatmapColor = Prelude.Nothing}
instance ToResourceProperties GeospatialHeatmapConfigurationProperty where
  toResourceProperties GeospatialHeatmapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GeospatialHeatmapConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeatmapColor" Prelude.<$> heatmapColor])}
instance JSON.ToJSON GeospatialHeatmapConfigurationProperty where
  toJSON GeospatialHeatmapConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeatmapColor" Prelude.<$> heatmapColor]))
instance Property "HeatmapColor" GeospatialHeatmapConfigurationProperty where
  type PropertyType "HeatmapColor" GeospatialHeatmapConfigurationProperty = GeospatialHeatmapColorScaleProperty
  set newValue GeospatialHeatmapConfigurationProperty {}
    = GeospatialHeatmapConfigurationProperty
        {heatmapColor = Prelude.pure newValue, ..}