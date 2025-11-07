module Stratosphere.QuickSight.Template.GeospatialMapConfigurationProperty (
        module Exports, GeospatialMapConfigurationProperty(..),
        mkGeospatialMapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GeospatialMapFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GeospatialMapStyleOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GeospatialPointStyleOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GeospatialWindowOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialMapConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapconfiguration.html>
    GeospatialMapConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapconfiguration.html#cfn-quicksight-template-geospatialmapconfiguration-fieldwells>
                                        fieldWells :: (Prelude.Maybe GeospatialMapFieldWellsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapconfiguration.html#cfn-quicksight-template-geospatialmapconfiguration-legend>
                                        legend :: (Prelude.Maybe LegendOptionsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapconfiguration.html#cfn-quicksight-template-geospatialmapconfiguration-mapstyleoptions>
                                        mapStyleOptions :: (Prelude.Maybe GeospatialMapStyleOptionsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapconfiguration.html#cfn-quicksight-template-geospatialmapconfiguration-pointstyleoptions>
                                        pointStyleOptions :: (Prelude.Maybe GeospatialPointStyleOptionsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapconfiguration.html#cfn-quicksight-template-geospatialmapconfiguration-tooltip>
                                        tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapconfiguration.html#cfn-quicksight-template-geospatialmapconfiguration-visualpalette>
                                        visualPalette :: (Prelude.Maybe VisualPaletteProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapconfiguration.html#cfn-quicksight-template-geospatialmapconfiguration-windowoptions>
                                        windowOptions :: (Prelude.Maybe GeospatialWindowOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialMapConfigurationProperty ::
  GeospatialMapConfigurationProperty
mkGeospatialMapConfigurationProperty
  = GeospatialMapConfigurationProperty
      {haddock_workaround_ = (), fieldWells = Prelude.Nothing,
       legend = Prelude.Nothing, mapStyleOptions = Prelude.Nothing,
       pointStyleOptions = Prelude.Nothing, tooltip = Prelude.Nothing,
       visualPalette = Prelude.Nothing, windowOptions = Prelude.Nothing}
instance ToResourceProperties GeospatialMapConfigurationProperty where
  toResourceProperties GeospatialMapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GeospatialMapConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldWells" Prelude.<$> fieldWells,
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