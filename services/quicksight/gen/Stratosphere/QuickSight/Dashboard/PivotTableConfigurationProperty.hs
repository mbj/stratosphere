module Stratosphere.QuickSight.Dashboard.PivotTableConfigurationProperty (
        module Exports, PivotTableConfigurationProperty(..),
        mkPivotTableConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PivotTableFieldOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PivotTableFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PivotTableOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PivotTablePaginatedReportOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PivotTableSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PivotTableTotalOptionsProperty as Exports
import Stratosphere.ResourceProperties
data PivotTableConfigurationProperty
  = PivotTableConfigurationProperty {fieldOptions :: (Prelude.Maybe PivotTableFieldOptionsProperty),
                                     fieldWells :: (Prelude.Maybe PivotTableFieldWellsProperty),
                                     paginatedReportOptions :: (Prelude.Maybe PivotTablePaginatedReportOptionsProperty),
                                     sortConfiguration :: (Prelude.Maybe PivotTableSortConfigurationProperty),
                                     tableOptions :: (Prelude.Maybe PivotTableOptionsProperty),
                                     totalOptions :: (Prelude.Maybe PivotTableTotalOptionsProperty)}
mkPivotTableConfigurationProperty ::
  PivotTableConfigurationProperty
mkPivotTableConfigurationProperty
  = PivotTableConfigurationProperty
      {fieldOptions = Prelude.Nothing, fieldWells = Prelude.Nothing,
       paginatedReportOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing,
       tableOptions = Prelude.Nothing, totalOptions = Prelude.Nothing}
instance ToResourceProperties PivotTableConfigurationProperty where
  toResourceProperties PivotTableConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PivotTableConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldOptions" Prelude.<$> fieldOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "PaginatedReportOptions"
                              Prelude.<$> paginatedReportOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "TableOptions" Prelude.<$> tableOptions,
                            (JSON..=) "TotalOptions" Prelude.<$> totalOptions])}
instance JSON.ToJSON PivotTableConfigurationProperty where
  toJSON PivotTableConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldOptions" Prelude.<$> fieldOptions,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "PaginatedReportOptions"
                 Prelude.<$> paginatedReportOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "TableOptions" Prelude.<$> tableOptions,
               (JSON..=) "TotalOptions" Prelude.<$> totalOptions]))
instance Property "FieldOptions" PivotTableConfigurationProperty where
  type PropertyType "FieldOptions" PivotTableConfigurationProperty = PivotTableFieldOptionsProperty
  set newValue PivotTableConfigurationProperty {..}
    = PivotTableConfigurationProperty
        {fieldOptions = Prelude.pure newValue, ..}
instance Property "FieldWells" PivotTableConfigurationProperty where
  type PropertyType "FieldWells" PivotTableConfigurationProperty = PivotTableFieldWellsProperty
  set newValue PivotTableConfigurationProperty {..}
    = PivotTableConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "PaginatedReportOptions" PivotTableConfigurationProperty where
  type PropertyType "PaginatedReportOptions" PivotTableConfigurationProperty = PivotTablePaginatedReportOptionsProperty
  set newValue PivotTableConfigurationProperty {..}
    = PivotTableConfigurationProperty
        {paginatedReportOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" PivotTableConfigurationProperty where
  type PropertyType "SortConfiguration" PivotTableConfigurationProperty = PivotTableSortConfigurationProperty
  set newValue PivotTableConfigurationProperty {..}
    = PivotTableConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "TableOptions" PivotTableConfigurationProperty where
  type PropertyType "TableOptions" PivotTableConfigurationProperty = PivotTableOptionsProperty
  set newValue PivotTableConfigurationProperty {..}
    = PivotTableConfigurationProperty
        {tableOptions = Prelude.pure newValue, ..}
instance Property "TotalOptions" PivotTableConfigurationProperty where
  type PropertyType "TotalOptions" PivotTableConfigurationProperty = PivotTableTotalOptionsProperty
  set newValue PivotTableConfigurationProperty {..}
    = PivotTableConfigurationProperty
        {totalOptions = Prelude.pure newValue, ..}