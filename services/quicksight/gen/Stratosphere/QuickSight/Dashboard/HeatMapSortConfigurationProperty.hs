module Stratosphere.QuickSight.Dashboard.HeatMapSortConfigurationProperty (
        module Exports, HeatMapSortConfigurationProperty(..),
        mkHeatMapSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data HeatMapSortConfigurationProperty
  = HeatMapSortConfigurationProperty {heatMapColumnItemsLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                      heatMapColumnSort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                      heatMapRowItemsLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                      heatMapRowSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
mkHeatMapSortConfigurationProperty ::
  HeatMapSortConfigurationProperty
mkHeatMapSortConfigurationProperty
  = HeatMapSortConfigurationProperty
      {heatMapColumnItemsLimitConfiguration = Prelude.Nothing,
       heatMapColumnSort = Prelude.Nothing,
       heatMapRowItemsLimitConfiguration = Prelude.Nothing,
       heatMapRowSort = Prelude.Nothing}
instance ToResourceProperties HeatMapSortConfigurationProperty where
  toResourceProperties HeatMapSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.HeatMapSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeatMapColumnItemsLimitConfiguration"
                              Prelude.<$> heatMapColumnItemsLimitConfiguration,
                            (JSON..=) "HeatMapColumnSort" Prelude.<$> heatMapColumnSort,
                            (JSON..=) "HeatMapRowItemsLimitConfiguration"
                              Prelude.<$> heatMapRowItemsLimitConfiguration,
                            (JSON..=) "HeatMapRowSort" Prelude.<$> heatMapRowSort])}
instance JSON.ToJSON HeatMapSortConfigurationProperty where
  toJSON HeatMapSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeatMapColumnItemsLimitConfiguration"
                 Prelude.<$> heatMapColumnItemsLimitConfiguration,
               (JSON..=) "HeatMapColumnSort" Prelude.<$> heatMapColumnSort,
               (JSON..=) "HeatMapRowItemsLimitConfiguration"
                 Prelude.<$> heatMapRowItemsLimitConfiguration,
               (JSON..=) "HeatMapRowSort" Prelude.<$> heatMapRowSort]))
instance Property "HeatMapColumnItemsLimitConfiguration" HeatMapSortConfigurationProperty where
  type PropertyType "HeatMapColumnItemsLimitConfiguration" HeatMapSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue HeatMapSortConfigurationProperty {..}
    = HeatMapSortConfigurationProperty
        {heatMapColumnItemsLimitConfiguration = Prelude.pure newValue, ..}
instance Property "HeatMapColumnSort" HeatMapSortConfigurationProperty where
  type PropertyType "HeatMapColumnSort" HeatMapSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue HeatMapSortConfigurationProperty {..}
    = HeatMapSortConfigurationProperty
        {heatMapColumnSort = Prelude.pure newValue, ..}
instance Property "HeatMapRowItemsLimitConfiguration" HeatMapSortConfigurationProperty where
  type PropertyType "HeatMapRowItemsLimitConfiguration" HeatMapSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue HeatMapSortConfigurationProperty {..}
    = HeatMapSortConfigurationProperty
        {heatMapRowItemsLimitConfiguration = Prelude.pure newValue, ..}
instance Property "HeatMapRowSort" HeatMapSortConfigurationProperty where
  type PropertyType "HeatMapRowSort" HeatMapSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue HeatMapSortConfigurationProperty {..}
    = HeatMapSortConfigurationProperty
        {heatMapRowSort = Prelude.pure newValue, ..}