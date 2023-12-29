module Stratosphere.QuickSight.Analysis.FunnelChartSortConfigurationProperty (
        module Exports, FunnelChartSortConfigurationProperty(..),
        mkFunnelChartSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FunnelChartSortConfigurationProperty
  = FunnelChartSortConfigurationProperty {categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                          categorySort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunnelChartSortConfigurationProperty ::
  FunnelChartSortConfigurationProperty
mkFunnelChartSortConfigurationProperty
  = FunnelChartSortConfigurationProperty
      {categoryItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing}
instance ToResourceProperties FunnelChartSortConfigurationProperty where
  toResourceProperties FunnelChartSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FunnelChartSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort])}
instance JSON.ToJSON FunnelChartSortConfigurationProperty where
  toJSON FunnelChartSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort]))
instance Property "CategoryItemsLimit" FunnelChartSortConfigurationProperty where
  type PropertyType "CategoryItemsLimit" FunnelChartSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue FunnelChartSortConfigurationProperty {..}
    = FunnelChartSortConfigurationProperty
        {categoryItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" FunnelChartSortConfigurationProperty where
  type PropertyType "CategorySort" FunnelChartSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue FunnelChartSortConfigurationProperty {..}
    = FunnelChartSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}