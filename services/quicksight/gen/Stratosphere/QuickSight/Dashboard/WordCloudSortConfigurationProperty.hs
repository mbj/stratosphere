module Stratosphere.QuickSight.Dashboard.WordCloudSortConfigurationProperty (
        module Exports, WordCloudSortConfigurationProperty(..),
        mkWordCloudSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WordCloudSortConfigurationProperty
  = WordCloudSortConfigurationProperty {categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                        categorySort :: (Prelude.Maybe [FieldSortOptionsProperty])}
mkWordCloudSortConfigurationProperty ::
  WordCloudSortConfigurationProperty
mkWordCloudSortConfigurationProperty
  = WordCloudSortConfigurationProperty
      {categoryItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing}
instance ToResourceProperties WordCloudSortConfigurationProperty where
  toResourceProperties WordCloudSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WordCloudSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort])}
instance JSON.ToJSON WordCloudSortConfigurationProperty where
  toJSON WordCloudSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort]))
instance Property "CategoryItemsLimit" WordCloudSortConfigurationProperty where
  type PropertyType "CategoryItemsLimit" WordCloudSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue WordCloudSortConfigurationProperty {..}
    = WordCloudSortConfigurationProperty
        {categoryItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" WordCloudSortConfigurationProperty where
  type PropertyType "CategorySort" WordCloudSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue WordCloudSortConfigurationProperty {..}
    = WordCloudSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}