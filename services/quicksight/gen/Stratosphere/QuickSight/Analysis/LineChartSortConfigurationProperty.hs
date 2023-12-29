module Stratosphere.QuickSight.Analysis.LineChartSortConfigurationProperty (
        module Exports, LineChartSortConfigurationProperty(..),
        mkLineChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LineChartSortConfigurationProperty
  = LineChartSortConfigurationProperty {categoryItemsLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                        categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                        colorItemsLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                        smallMultiplesLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                        smallMultiplesSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineChartSortConfigurationProperty ::
  LineChartSortConfigurationProperty
mkLineChartSortConfigurationProperty
  = LineChartSortConfigurationProperty
      {categoryItemsLimitConfiguration = Prelude.Nothing,
       categorySort = Prelude.Nothing,
       colorItemsLimitConfiguration = Prelude.Nothing,
       smallMultiplesLimitConfiguration = Prelude.Nothing,
       smallMultiplesSort = Prelude.Nothing}
instance ToResourceProperties LineChartSortConfigurationProperty where
  toResourceProperties LineChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimitConfiguration"
                              Prelude.<$> categoryItemsLimitConfiguration,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort,
                            (JSON..=) "ColorItemsLimitConfiguration"
                              Prelude.<$> colorItemsLimitConfiguration,
                            (JSON..=) "SmallMultiplesLimitConfiguration"
                              Prelude.<$> smallMultiplesLimitConfiguration,
                            (JSON..=) "SmallMultiplesSort" Prelude.<$> smallMultiplesSort])}
instance JSON.ToJSON LineChartSortConfigurationProperty where
  toJSON LineChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimitConfiguration"
                 Prelude.<$> categoryItemsLimitConfiguration,
               (JSON..=) "CategorySort" Prelude.<$> categorySort,
               (JSON..=) "ColorItemsLimitConfiguration"
                 Prelude.<$> colorItemsLimitConfiguration,
               (JSON..=) "SmallMultiplesLimitConfiguration"
                 Prelude.<$> smallMultiplesLimitConfiguration,
               (JSON..=) "SmallMultiplesSort" Prelude.<$> smallMultiplesSort]))
instance Property "CategoryItemsLimitConfiguration" LineChartSortConfigurationProperty where
  type PropertyType "CategoryItemsLimitConfiguration" LineChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue LineChartSortConfigurationProperty {..}
    = LineChartSortConfigurationProperty
        {categoryItemsLimitConfiguration = Prelude.pure newValue, ..}
instance Property "CategorySort" LineChartSortConfigurationProperty where
  type PropertyType "CategorySort" LineChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue LineChartSortConfigurationProperty {..}
    = LineChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
instance Property "ColorItemsLimitConfiguration" LineChartSortConfigurationProperty where
  type PropertyType "ColorItemsLimitConfiguration" LineChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue LineChartSortConfigurationProperty {..}
    = LineChartSortConfigurationProperty
        {colorItemsLimitConfiguration = Prelude.pure newValue, ..}
instance Property "SmallMultiplesLimitConfiguration" LineChartSortConfigurationProperty where
  type PropertyType "SmallMultiplesLimitConfiguration" LineChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue LineChartSortConfigurationProperty {..}
    = LineChartSortConfigurationProperty
        {smallMultiplesLimitConfiguration = Prelude.pure newValue, ..}
instance Property "SmallMultiplesSort" LineChartSortConfigurationProperty where
  type PropertyType "SmallMultiplesSort" LineChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue LineChartSortConfigurationProperty {..}
    = LineChartSortConfigurationProperty
        {smallMultiplesSort = Prelude.pure newValue, ..}