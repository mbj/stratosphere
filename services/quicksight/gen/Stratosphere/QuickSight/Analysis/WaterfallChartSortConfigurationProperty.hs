module Stratosphere.QuickSight.Analysis.WaterfallChartSortConfigurationProperty (
        module Exports, WaterfallChartSortConfigurationProperty(..),
        mkWaterfallChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WaterfallChartSortConfigurationProperty
  = WaterfallChartSortConfigurationProperty {breakdownItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                             categorySort :: (Prelude.Maybe [FieldSortOptionsProperty])}
mkWaterfallChartSortConfigurationProperty ::
  WaterfallChartSortConfigurationProperty
mkWaterfallChartSortConfigurationProperty
  = WaterfallChartSortConfigurationProperty
      {breakdownItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing}
instance ToResourceProperties WaterfallChartSortConfigurationProperty where
  toResourceProperties WaterfallChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.WaterfallChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BreakdownItemsLimit" Prelude.<$> breakdownItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort])}
instance JSON.ToJSON WaterfallChartSortConfigurationProperty where
  toJSON WaterfallChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BreakdownItemsLimit" Prelude.<$> breakdownItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort]))
instance Property "BreakdownItemsLimit" WaterfallChartSortConfigurationProperty where
  type PropertyType "BreakdownItemsLimit" WaterfallChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue WaterfallChartSortConfigurationProperty {..}
    = WaterfallChartSortConfigurationProperty
        {breakdownItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" WaterfallChartSortConfigurationProperty where
  type PropertyType "CategorySort" WaterfallChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue WaterfallChartSortConfigurationProperty {..}
    = WaterfallChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}