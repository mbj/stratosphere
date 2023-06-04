module Stratosphere.QuickSight.Dashboard.CategoryFilterConfigurationProperty (
        module Exports, CategoryFilterConfigurationProperty(..),
        mkCategoryFilterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CustomFilterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CustomFilterListConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FilterListConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CategoryFilterConfigurationProperty
  = CategoryFilterConfigurationProperty {customFilterConfiguration :: (Prelude.Maybe CustomFilterConfigurationProperty),
                                         customFilterListConfiguration :: (Prelude.Maybe CustomFilterListConfigurationProperty),
                                         filterListConfiguration :: (Prelude.Maybe FilterListConfigurationProperty)}
mkCategoryFilterConfigurationProperty ::
  CategoryFilterConfigurationProperty
mkCategoryFilterConfigurationProperty
  = CategoryFilterConfigurationProperty
      {customFilterConfiguration = Prelude.Nothing,
       customFilterListConfiguration = Prelude.Nothing,
       filterListConfiguration = Prelude.Nothing}
instance ToResourceProperties CategoryFilterConfigurationProperty where
  toResourceProperties CategoryFilterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CategoryFilterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomFilterConfiguration"
                              Prelude.<$> customFilterConfiguration,
                            (JSON..=) "CustomFilterListConfiguration"
                              Prelude.<$> customFilterListConfiguration,
                            (JSON..=) "FilterListConfiguration"
                              Prelude.<$> filterListConfiguration])}
instance JSON.ToJSON CategoryFilterConfigurationProperty where
  toJSON CategoryFilterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomFilterConfiguration"
                 Prelude.<$> customFilterConfiguration,
               (JSON..=) "CustomFilterListConfiguration"
                 Prelude.<$> customFilterListConfiguration,
               (JSON..=) "FilterListConfiguration"
                 Prelude.<$> filterListConfiguration]))
instance Property "CustomFilterConfiguration" CategoryFilterConfigurationProperty where
  type PropertyType "CustomFilterConfiguration" CategoryFilterConfigurationProperty = CustomFilterConfigurationProperty
  set newValue CategoryFilterConfigurationProperty {..}
    = CategoryFilterConfigurationProperty
        {customFilterConfiguration = Prelude.pure newValue, ..}
instance Property "CustomFilterListConfiguration" CategoryFilterConfigurationProperty where
  type PropertyType "CustomFilterListConfiguration" CategoryFilterConfigurationProperty = CustomFilterListConfigurationProperty
  set newValue CategoryFilterConfigurationProperty {..}
    = CategoryFilterConfigurationProperty
        {customFilterListConfiguration = Prelude.pure newValue, ..}
instance Property "FilterListConfiguration" CategoryFilterConfigurationProperty where
  type PropertyType "FilterListConfiguration" CategoryFilterConfigurationProperty = FilterListConfigurationProperty
  set newValue CategoryFilterConfigurationProperty {..}
    = CategoryFilterConfigurationProperty
        {filterListConfiguration = Prelude.pure newValue, ..}