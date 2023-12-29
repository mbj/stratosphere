module Stratosphere.QuickSight.Template.TableSortConfigurationProperty (
        module Exports, TableSortConfigurationProperty(..),
        mkTableSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PaginationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data TableSortConfigurationProperty
  = TableSortConfigurationProperty {paginationConfiguration :: (Prelude.Maybe PaginationConfigurationProperty),
                                    rowSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableSortConfigurationProperty :: TableSortConfigurationProperty
mkTableSortConfigurationProperty
  = TableSortConfigurationProperty
      {paginationConfiguration = Prelude.Nothing,
       rowSort = Prelude.Nothing}
instance ToResourceProperties TableSortConfigurationProperty where
  toResourceProperties TableSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PaginationConfiguration"
                              Prelude.<$> paginationConfiguration,
                            (JSON..=) "RowSort" Prelude.<$> rowSort])}
instance JSON.ToJSON TableSortConfigurationProperty where
  toJSON TableSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PaginationConfiguration"
                 Prelude.<$> paginationConfiguration,
               (JSON..=) "RowSort" Prelude.<$> rowSort]))
instance Property "PaginationConfiguration" TableSortConfigurationProperty where
  type PropertyType "PaginationConfiguration" TableSortConfigurationProperty = PaginationConfigurationProperty
  set newValue TableSortConfigurationProperty {..}
    = TableSortConfigurationProperty
        {paginationConfiguration = Prelude.pure newValue, ..}
instance Property "RowSort" TableSortConfigurationProperty where
  type PropertyType "RowSort" TableSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue TableSortConfigurationProperty {..}
    = TableSortConfigurationProperty
        {rowSort = Prelude.pure newValue, ..}