module Stratosphere.QuickSight.Template.TableConfigurationProperty (
        module Exports, TableConfigurationProperty(..),
        mkTableConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableFieldOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableInlineVisualizationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TablePaginatedReportOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TotalOptionsProperty as Exports
import Stratosphere.ResourceProperties
data TableConfigurationProperty
  = TableConfigurationProperty {fieldOptions :: (Prelude.Maybe TableFieldOptionsProperty),
                                fieldWells :: (Prelude.Maybe TableFieldWellsProperty),
                                paginatedReportOptions :: (Prelude.Maybe TablePaginatedReportOptionsProperty),
                                sortConfiguration :: (Prelude.Maybe TableSortConfigurationProperty),
                                tableInlineVisualizations :: (Prelude.Maybe [TableInlineVisualizationProperty]),
                                tableOptions :: (Prelude.Maybe TableOptionsProperty),
                                totalOptions :: (Prelude.Maybe TotalOptionsProperty)}
mkTableConfigurationProperty :: TableConfigurationProperty
mkTableConfigurationProperty
  = TableConfigurationProperty
      {fieldOptions = Prelude.Nothing, fieldWells = Prelude.Nothing,
       paginatedReportOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing,
       tableInlineVisualizations = Prelude.Nothing,
       tableOptions = Prelude.Nothing, totalOptions = Prelude.Nothing}
instance ToResourceProperties TableConfigurationProperty where
  toResourceProperties TableConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldOptions" Prelude.<$> fieldOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "PaginatedReportOptions"
                              Prelude.<$> paginatedReportOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "TableInlineVisualizations"
                              Prelude.<$> tableInlineVisualizations,
                            (JSON..=) "TableOptions" Prelude.<$> tableOptions,
                            (JSON..=) "TotalOptions" Prelude.<$> totalOptions])}
instance JSON.ToJSON TableConfigurationProperty where
  toJSON TableConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldOptions" Prelude.<$> fieldOptions,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "PaginatedReportOptions"
                 Prelude.<$> paginatedReportOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "TableInlineVisualizations"
                 Prelude.<$> tableInlineVisualizations,
               (JSON..=) "TableOptions" Prelude.<$> tableOptions,
               (JSON..=) "TotalOptions" Prelude.<$> totalOptions]))
instance Property "FieldOptions" TableConfigurationProperty where
  type PropertyType "FieldOptions" TableConfigurationProperty = TableFieldOptionsProperty
  set newValue TableConfigurationProperty {..}
    = TableConfigurationProperty
        {fieldOptions = Prelude.pure newValue, ..}
instance Property "FieldWells" TableConfigurationProperty where
  type PropertyType "FieldWells" TableConfigurationProperty = TableFieldWellsProperty
  set newValue TableConfigurationProperty {..}
    = TableConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "PaginatedReportOptions" TableConfigurationProperty where
  type PropertyType "PaginatedReportOptions" TableConfigurationProperty = TablePaginatedReportOptionsProperty
  set newValue TableConfigurationProperty {..}
    = TableConfigurationProperty
        {paginatedReportOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" TableConfigurationProperty where
  type PropertyType "SortConfiguration" TableConfigurationProperty = TableSortConfigurationProperty
  set newValue TableConfigurationProperty {..}
    = TableConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "TableInlineVisualizations" TableConfigurationProperty where
  type PropertyType "TableInlineVisualizations" TableConfigurationProperty = [TableInlineVisualizationProperty]
  set newValue TableConfigurationProperty {..}
    = TableConfigurationProperty
        {tableInlineVisualizations = Prelude.pure newValue, ..}
instance Property "TableOptions" TableConfigurationProperty where
  type PropertyType "TableOptions" TableConfigurationProperty = TableOptionsProperty
  set newValue TableConfigurationProperty {..}
    = TableConfigurationProperty
        {tableOptions = Prelude.pure newValue, ..}
instance Property "TotalOptions" TableConfigurationProperty where
  type PropertyType "TotalOptions" TableConfigurationProperty = TotalOptionsProperty
  set newValue TableConfigurationProperty {..}
    = TableConfigurationProperty
        {totalOptions = Prelude.pure newValue, ..}