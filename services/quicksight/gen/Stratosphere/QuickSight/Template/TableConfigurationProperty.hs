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
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualInteractionOptionsProperty as Exports
import Stratosphere.ResourceProperties
data TableConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html>
    TableConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-fieldoptions>
                                fieldOptions :: (Prelude.Maybe TableFieldOptionsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-fieldwells>
                                fieldWells :: (Prelude.Maybe TableFieldWellsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-interactions>
                                interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-paginatedreportoptions>
                                paginatedReportOptions :: (Prelude.Maybe TablePaginatedReportOptionsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-sortconfiguration>
                                sortConfiguration :: (Prelude.Maybe TableSortConfigurationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-tableinlinevisualizations>
                                tableInlineVisualizations :: (Prelude.Maybe [TableInlineVisualizationProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-tableoptions>
                                tableOptions :: (Prelude.Maybe TableOptionsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-totaloptions>
                                totalOptions :: (Prelude.Maybe TotalOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableConfigurationProperty :: TableConfigurationProperty
mkTableConfigurationProperty
  = TableConfigurationProperty
      {haddock_workaround_ = (), fieldOptions = Prelude.Nothing,
       fieldWells = Prelude.Nothing, interactions = Prelude.Nothing,
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
                            (JSON..=) "Interactions" Prelude.<$> interactions,
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
               (JSON..=) "Interactions" Prelude.<$> interactions,
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
instance Property "Interactions" TableConfigurationProperty where
  type PropertyType "Interactions" TableConfigurationProperty = VisualInteractionOptionsProperty
  set newValue TableConfigurationProperty {..}
    = TableConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
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