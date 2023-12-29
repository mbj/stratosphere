module Stratosphere.QuickSight.Dashboard.FilledMapConfigurationProperty (
        module Exports, FilledMapConfigurationProperty(..),
        mkFilledMapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FilledMapFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FilledMapSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialMapStyleOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialWindowOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TooltipOptionsProperty as Exports
import Stratosphere.ResourceProperties
data FilledMapConfigurationProperty
  = FilledMapConfigurationProperty {fieldWells :: (Prelude.Maybe FilledMapFieldWellsProperty),
                                    legend :: (Prelude.Maybe LegendOptionsProperty),
                                    mapStyleOptions :: (Prelude.Maybe GeospatialMapStyleOptionsProperty),
                                    sortConfiguration :: (Prelude.Maybe FilledMapSortConfigurationProperty),
                                    tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                    windowOptions :: (Prelude.Maybe GeospatialWindowOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilledMapConfigurationProperty :: FilledMapConfigurationProperty
mkFilledMapConfigurationProperty
  = FilledMapConfigurationProperty
      {fieldWells = Prelude.Nothing, legend = Prelude.Nothing,
       mapStyleOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       windowOptions = Prelude.Nothing}
instance ToResourceProperties FilledMapConfigurationProperty where
  toResourceProperties FilledMapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FilledMapConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "MapStyleOptions" Prelude.<$> mapStyleOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "WindowOptions" Prelude.<$> windowOptions])}
instance JSON.ToJSON FilledMapConfigurationProperty where
  toJSON FilledMapConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "MapStyleOptions" Prelude.<$> mapStyleOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "WindowOptions" Prelude.<$> windowOptions]))
instance Property "FieldWells" FilledMapConfigurationProperty where
  type PropertyType "FieldWells" FilledMapConfigurationProperty = FilledMapFieldWellsProperty
  set newValue FilledMapConfigurationProperty {..}
    = FilledMapConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Legend" FilledMapConfigurationProperty where
  type PropertyType "Legend" FilledMapConfigurationProperty = LegendOptionsProperty
  set newValue FilledMapConfigurationProperty {..}
    = FilledMapConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "MapStyleOptions" FilledMapConfigurationProperty where
  type PropertyType "MapStyleOptions" FilledMapConfigurationProperty = GeospatialMapStyleOptionsProperty
  set newValue FilledMapConfigurationProperty {..}
    = FilledMapConfigurationProperty
        {mapStyleOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" FilledMapConfigurationProperty where
  type PropertyType "SortConfiguration" FilledMapConfigurationProperty = FilledMapSortConfigurationProperty
  set newValue FilledMapConfigurationProperty {..}
    = FilledMapConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" FilledMapConfigurationProperty where
  type PropertyType "Tooltip" FilledMapConfigurationProperty = TooltipOptionsProperty
  set newValue FilledMapConfigurationProperty {..}
    = FilledMapConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "WindowOptions" FilledMapConfigurationProperty where
  type PropertyType "WindowOptions" FilledMapConfigurationProperty = GeospatialWindowOptionsProperty
  set newValue FilledMapConfigurationProperty {..}
    = FilledMapConfigurationProperty
        {windowOptions = Prelude.pure newValue, ..}