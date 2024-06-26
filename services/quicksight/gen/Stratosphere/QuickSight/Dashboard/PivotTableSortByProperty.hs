module Stratosphere.QuickSight.Dashboard.PivotTableSortByProperty (
        module Exports, PivotTableSortByProperty(..),
        mkPivotTableSortByProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnSortProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataPathSortProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldSortProperty as Exports
import Stratosphere.ResourceProperties
data PivotTableSortByProperty
  = PivotTableSortByProperty {column :: (Prelude.Maybe ColumnSortProperty),
                              dataPath :: (Prelude.Maybe DataPathSortProperty),
                              field :: (Prelude.Maybe FieldSortProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableSortByProperty :: PivotTableSortByProperty
mkPivotTableSortByProperty
  = PivotTableSortByProperty
      {column = Prelude.Nothing, dataPath = Prelude.Nothing,
       field = Prelude.Nothing}
instance ToResourceProperties PivotTableSortByProperty where
  toResourceProperties PivotTableSortByProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PivotTableSortBy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Column" Prelude.<$> column,
                            (JSON..=) "DataPath" Prelude.<$> dataPath,
                            (JSON..=) "Field" Prelude.<$> field])}
instance JSON.ToJSON PivotTableSortByProperty where
  toJSON PivotTableSortByProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Column" Prelude.<$> column,
               (JSON..=) "DataPath" Prelude.<$> dataPath,
               (JSON..=) "Field" Prelude.<$> field]))
instance Property "Column" PivotTableSortByProperty where
  type PropertyType "Column" PivotTableSortByProperty = ColumnSortProperty
  set newValue PivotTableSortByProperty {..}
    = PivotTableSortByProperty {column = Prelude.pure newValue, ..}
instance Property "DataPath" PivotTableSortByProperty where
  type PropertyType "DataPath" PivotTableSortByProperty = DataPathSortProperty
  set newValue PivotTableSortByProperty {..}
    = PivotTableSortByProperty {dataPath = Prelude.pure newValue, ..}
instance Property "Field" PivotTableSortByProperty where
  type PropertyType "Field" PivotTableSortByProperty = FieldSortProperty
  set newValue PivotTableSortByProperty {..}
    = PivotTableSortByProperty {field = Prelude.pure newValue, ..}