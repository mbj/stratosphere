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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialheatmapconfiguration.html>
    GeospatialHeatmapConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialheatmapconfiguration.html#cfn-quicksight-template-geospatialheatmapconfiguration-heatmapcolor>
                                            heatmapColor :: (Prelude.Maybe GeospatialHeatmapColorScaleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialHeatmapConfigurationProperty ::
  GeospatialHeatmapConfigurationProperty
mkGeospatialHeatmapConfigurationProperty
  = GeospatialHeatmapConfigurationProperty
      {haddock_workaround_ = (), heatmapColor = Prelude.Nothing}
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
  set newValue GeospatialHeatmapConfigurationProperty {..}
    = GeospatialHeatmapConfigurationProperty
        {heatmapColor = Prelude.pure newValue, ..}