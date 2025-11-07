module Stratosphere.QuickSight.Dashboard.GeospatialMapConfigurationProperty (
        module Exports, GeospatialMapConfigurationProperty(..),
        mkGeospatialMapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialMapFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialMapStyleOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialPointStyleOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialWindowOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialMapConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html>
    GeospatialMapConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-fieldwells>
                                        fieldWells :: (Prelude.Maybe GeospatialMapFieldWellsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-interactions>
                                        interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-legend>
                                        legend :: (Prelude.Maybe LegendOptionsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-mapstyleoptions>
                                        mapStyleOptions :: (Prelude.Maybe GeospatialMapStyleOptionsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-pointstyleoptions>
                                        pointStyleOptions :: (Prelude.Maybe GeospatialPointStyleOptionsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-tooltip>
                                        tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-visualpalette>
                                        visualPalette :: (Prelude.Maybe VisualPaletteProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-windowoptions>
                                        windowOptions :: (Prelude.Maybe GeospatialWindowOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialMapConfigurationProperty ::
  GeospatialMapConfigurationProperty
mkGeospatialMapConfigurationProperty
  = GeospatialMapConfigurationProperty
      {haddock_workaround_ = (), fieldWells = Prelude.Nothing,
       interactions = Prelude.Nothing, legend = Prelude.Nothing,
       mapStyleOptions = Prelude.Nothing,
       pointStyleOptions = Prelude.Nothing, tooltip = Prelude.Nothing,
       visualPalette = Prelude.Nothing, windowOptions = Prelude.Nothing}
instance ToResourceProperties GeospatialMapConfigurationProperty where
  toResourceProperties GeospatialMapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialMapConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "MapStyleOptions" Prelude.<$> mapStyleOptions,
                            (JSON..=) "PointStyleOptions" Prelude.<$> pointStyleOptions,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
                            (JSON..=) "WindowOptions" Prelude.<$> windowOptions])}
instance JSON.ToJSON GeospatialMapConfigurationProperty where
  toJSON GeospatialMapConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "MapStyleOptions" Prelude.<$> mapStyleOptions,
               (JSON..=) "PointStyleOptions" Prelude.<$> pointStyleOptions,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
               (JSON..=) "WindowOptions" Prelude.<$> windowOptions]))
instance Property "FieldWells" GeospatialMapConfigurationProperty where
  type PropertyType "FieldWells" GeospatialMapConfigurationProperty = GeospatialMapFieldWellsProperty
  set newValue GeospatialMapConfigurationProperty {..}
    = GeospatialMapConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Interactions" GeospatialMapConfigurationProperty where
  type PropertyType "Interactions" GeospatialMapConfigurationProperty = VisualInteractionOptionsProperty
  set newValue GeospatialMapConfigurationProperty {..}
    = GeospatialMapConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "Legend" GeospatialMapConfigurationProperty where
  type PropertyType "Legend" GeospatialMapConfigurationProperty = LegendOptionsProperty
  set newValue GeospatialMapConfigurationProperty {..}
    = GeospatialMapConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "MapStyleOptions" GeospatialMapConfigurationProperty where
  type PropertyType "MapStyleOptions" GeospatialMapConfigurationProperty = GeospatialMapStyleOptionsProperty
  set newValue GeospatialMapConfigurationProperty {..}
    = GeospatialMapConfigurationProperty
        {mapStyleOptions = Prelude.pure newValue, ..}
instance Property "PointStyleOptions" GeospatialMapConfigurationProperty where
  type PropertyType "PointStyleOptions" GeospatialMapConfigurationProperty = GeospatialPointStyleOptionsProperty
  set newValue GeospatialMapConfigurationProperty {..}
    = GeospatialMapConfigurationProperty
        {pointStyleOptions = Prelude.pure newValue, ..}
instance Property "Tooltip" GeospatialMapConfigurationProperty where
  type PropertyType "Tooltip" GeospatialMapConfigurationProperty = TooltipOptionsProperty
  set newValue GeospatialMapConfigurationProperty {..}
    = GeospatialMapConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "VisualPalette" GeospatialMapConfigurationProperty where
  type PropertyType "VisualPalette" GeospatialMapConfigurationProperty = VisualPaletteProperty
  set newValue GeospatialMapConfigurationProperty {..}
    = GeospatialMapConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}
instance Property "WindowOptions" GeospatialMapConfigurationProperty where
  type PropertyType "WindowOptions" GeospatialMapConfigurationProperty = GeospatialWindowOptionsProperty
  set newValue GeospatialMapConfigurationProperty {..}
    = GeospatialMapConfigurationProperty
        {windowOptions = Prelude.pure newValue, ..}