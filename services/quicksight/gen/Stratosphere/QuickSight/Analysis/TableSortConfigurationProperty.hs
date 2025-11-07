module Stratosphere.QuickSight.Analysis.TableSortConfigurationProperty (
        module Exports, TableSortConfigurationProperty(..),
        mkTableSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PaginationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data TableSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesortconfiguration.html>
    TableSortConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesortconfiguration.html#cfn-quicksight-analysis-tablesortconfiguration-paginationconfiguration>
                                    paginationConfiguration :: (Prelude.Maybe PaginationConfigurationProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesortconfiguration.html#cfn-quicksight-analysis-tablesortconfiguration-rowsort>
                                    rowSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableSortConfigurationProperty :: TableSortConfigurationProperty
mkTableSortConfigurationProperty
  = TableSortConfigurationProperty
      {haddock_workaround_ = (),
       paginationConfiguration = Prelude.Nothing,
       rowSort = Prelude.Nothing}
instance ToResourceProperties TableSortConfigurationProperty where
  toResourceProperties TableSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableSortConfiguration",
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