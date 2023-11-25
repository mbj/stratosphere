module Stratosphere.QuickSight.Dashboard.TreeMapSortConfigurationProperty (
        module Exports, TreeMapSortConfigurationProperty(..),
        mkTreeMapSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data TreeMapSortConfigurationProperty
  = TreeMapSortConfigurationProperty {treeMapGroupItemsLimitConfiguration :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                      treeMapSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
mkTreeMapSortConfigurationProperty ::
  TreeMapSortConfigurationProperty
mkTreeMapSortConfigurationProperty
  = TreeMapSortConfigurationProperty
      {treeMapGroupItemsLimitConfiguration = Prelude.Nothing,
       treeMapSort = Prelude.Nothing}
instance ToResourceProperties TreeMapSortConfigurationProperty where
  toResourceProperties TreeMapSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TreeMapSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TreeMapGroupItemsLimitConfiguration"
                              Prelude.<$> treeMapGroupItemsLimitConfiguration,
                            (JSON..=) "TreeMapSort" Prelude.<$> treeMapSort])}
instance JSON.ToJSON TreeMapSortConfigurationProperty where
  toJSON TreeMapSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TreeMapGroupItemsLimitConfiguration"
                 Prelude.<$> treeMapGroupItemsLimitConfiguration,
               (JSON..=) "TreeMapSort" Prelude.<$> treeMapSort]))
instance Property "TreeMapGroupItemsLimitConfiguration" TreeMapSortConfigurationProperty where
  type PropertyType "TreeMapGroupItemsLimitConfiguration" TreeMapSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue TreeMapSortConfigurationProperty {..}
    = TreeMapSortConfigurationProperty
        {treeMapGroupItemsLimitConfiguration = Prelude.pure newValue, ..}
instance Property "TreeMapSort" TreeMapSortConfigurationProperty where
  type PropertyType "TreeMapSort" TreeMapSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue TreeMapSortConfigurationProperty {..}
    = TreeMapSortConfigurationProperty
        {treeMapSort = Prelude.pure newValue, ..}