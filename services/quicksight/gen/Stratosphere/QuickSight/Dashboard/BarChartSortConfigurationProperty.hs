module Stratosphere.QuickSight.Dashboard.BarChartSortConfigurationProperty (
        module Exports, BarChartSortConfigurationProperty(..),
        mkBarChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data BarChartSortConfigurationProperty
  = BarChartSortConfigurationProperty {categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                       categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                       colorItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                       colorSort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                       smallMultiplesLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                       smallMultiplesSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
mkBarChartSortConfigurationProperty ::
  BarChartSortConfigurationProperty
mkBarChartSortConfigurationProperty
  = BarChartSortConfigurationProperty
      {categoryItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing, colorItemsLimit = Prelude.Nothing,
       colorSort = Prelude.Nothing,
       smallMultiplesLimitConfiguration = Prelude.Nothing,
       smallMultiplesSort = Prelude.Nothing}
instance ToResourceProperties BarChartSortConfigurationProperty where
  toResourceProperties BarChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BarChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort,
                            (JSON..=) "ColorItemsLimit" Prelude.<$> colorItemsLimit,
                            (JSON..=) "ColorSort" Prelude.<$> colorSort,
                            (JSON..=) "SmallMultiplesLimitConfiguration"
                              Prelude.<$> smallMultiplesLimitConfiguration,
                            (JSON..=) "SmallMultiplesSort" Prelude.<$> smallMultiplesSort])}
instance JSON.ToJSON BarChartSortConfigurationProperty where
  toJSON BarChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort,
               (JSON..=) "ColorItemsLimit" Prelude.<$> colorItemsLimit,
               (JSON..=) "ColorSort" Prelude.<$> colorSort,
               (JSON..=) "SmallMultiplesLimitConfiguration"
                 Prelude.<$> smallMultiplesLimitConfiguration,
               (JSON..=) "SmallMultiplesSort" Prelude.<$> smallMultiplesSort]))
instance Property "CategoryItemsLimit" BarChartSortConfigurationProperty where
  type PropertyType "CategoryItemsLimit" BarChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {categoryItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" BarChartSortConfigurationProperty where
  type PropertyType "CategorySort" BarChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
instance Property "ColorItemsLimit" BarChartSortConfigurationProperty where
  type PropertyType "ColorItemsLimit" BarChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {colorItemsLimit = Prelude.pure newValue, ..}
instance Property "ColorSort" BarChartSortConfigurationProperty where
  type PropertyType "ColorSort" BarChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {colorSort = Prelude.pure newValue, ..}
instance Property "SmallMultiplesLimitConfiguration" BarChartSortConfigurationProperty where
  type PropertyType "SmallMultiplesLimitConfiguration" BarChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {smallMultiplesLimitConfiguration = Prelude.pure newValue, ..}
instance Property "SmallMultiplesSort" BarChartSortConfigurationProperty where
  type PropertyType "SmallMultiplesSort" BarChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue BarChartSortConfigurationProperty {..}
    = BarChartSortConfigurationProperty
        {smallMultiplesSort = Prelude.pure newValue, ..}