module Stratosphere.QuickSight.Analysis.ComboChartSortConfigurationProperty (
        module Exports, ComboChartSortConfigurationProperty(..),
        mkComboChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ComboChartSortConfigurationProperty
  = ComboChartSortConfigurationProperty {categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                         categorySort :: (Prelude.Maybe [FieldSortOptionsProperty]),
                                         colorItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                         colorSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
mkComboChartSortConfigurationProperty ::
  ComboChartSortConfigurationProperty
mkComboChartSortConfigurationProperty
  = ComboChartSortConfigurationProperty
      {categoryItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing, colorItemsLimit = Prelude.Nothing,
       colorSort = Prelude.Nothing}
instance ToResourceProperties ComboChartSortConfigurationProperty where
  toResourceProperties ComboChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ComboChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort,
                            (JSON..=) "ColorItemsLimit" Prelude.<$> colorItemsLimit,
                            (JSON..=) "ColorSort" Prelude.<$> colorSort])}
instance JSON.ToJSON ComboChartSortConfigurationProperty where
  toJSON ComboChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort,
               (JSON..=) "ColorItemsLimit" Prelude.<$> colorItemsLimit,
               (JSON..=) "ColorSort" Prelude.<$> colorSort]))
instance Property "CategoryItemsLimit" ComboChartSortConfigurationProperty where
  type PropertyType "CategoryItemsLimit" ComboChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue ComboChartSortConfigurationProperty {..}
    = ComboChartSortConfigurationProperty
        {categoryItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" ComboChartSortConfigurationProperty where
  type PropertyType "CategorySort" ComboChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue ComboChartSortConfigurationProperty {..}
    = ComboChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
instance Property "ColorItemsLimit" ComboChartSortConfigurationProperty where
  type PropertyType "ColorItemsLimit" ComboChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue ComboChartSortConfigurationProperty {..}
    = ComboChartSortConfigurationProperty
        {colorItemsLimit = Prelude.pure newValue, ..}
instance Property "ColorSort" ComboChartSortConfigurationProperty where
  type PropertyType "ColorSort" ComboChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue ComboChartSortConfigurationProperty {..}
    = ComboChartSortConfigurationProperty
        {colorSort = Prelude.pure newValue, ..}