module Stratosphere.QuickSight.Template.PivotTableConfigurationProperty (
        module Exports, PivotTableConfigurationProperty(..),
        mkPivotTableConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableFieldOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTablePaginatedReportOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableTotalOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualInteractionOptionsProperty as Exports
import Stratosphere.ResourceProperties
data PivotTableConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconfiguration.html>
    PivotTableConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconfiguration.html#cfn-quicksight-template-pivottableconfiguration-fieldoptions>
                                     fieldOptions :: (Prelude.Maybe PivotTableFieldOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconfiguration.html#cfn-quicksight-template-pivottableconfiguration-fieldwells>
                                     fieldWells :: (Prelude.Maybe PivotTableFieldWellsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconfiguration.html#cfn-quicksight-template-pivottableconfiguration-interactions>
                                     interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconfiguration.html#cfn-quicksight-template-pivottableconfiguration-paginatedreportoptions>
                                     paginatedReportOptions :: (Prelude.Maybe PivotTablePaginatedReportOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconfiguration.html#cfn-quicksight-template-pivottableconfiguration-sortconfiguration>
                                     sortConfiguration :: (Prelude.Maybe PivotTableSortConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconfiguration.html#cfn-quicksight-template-pivottableconfiguration-tableoptions>
                                     tableOptions :: (Prelude.Maybe PivotTableOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconfiguration.html#cfn-quicksight-template-pivottableconfiguration-totaloptions>
                                     totalOptions :: (Prelude.Maybe PivotTableTotalOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableConfigurationProperty ::
  PivotTableConfigurationProperty
mkPivotTableConfigurationProperty
  = PivotTableConfigurationProperty
      {haddock_workaround_ = (), fieldOptions = Prelude.Nothing,
       fieldWells = Prelude.Nothing, interactions = Prelude.Nothing,
       paginatedReportOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing,
       tableOptions = Prelude.Nothing, totalOptions = Prelude.Nothing}
instance ToResourceProperties PivotTableConfigurationProperty where
  toResourceProperties PivotTableConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldOptions" Prelude.<$> fieldOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
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
               (JSON..=) "Interactions" Prelude.<$> interactions,
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
instance Property "Interactions" PivotTableConfigurationProperty where
  type PropertyType "Interactions" PivotTableConfigurationProperty = VisualInteractionOptionsProperty
  set newValue PivotTableConfigurationProperty {..}
    = PivotTableConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
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