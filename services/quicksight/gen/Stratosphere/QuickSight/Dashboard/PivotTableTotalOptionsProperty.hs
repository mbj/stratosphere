module Stratosphere.QuickSight.Dashboard.PivotTableTotalOptionsProperty (
        module Exports, PivotTableTotalOptionsProperty(..),
        mkPivotTableTotalOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PivotTotalOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SubtotalOptionsProperty as Exports
import Stratosphere.ResourceProperties
data PivotTableTotalOptionsProperty
  = PivotTableTotalOptionsProperty {columnSubtotalOptions :: (Prelude.Maybe SubtotalOptionsProperty),
                                    columnTotalOptions :: (Prelude.Maybe PivotTotalOptionsProperty),
                                    rowSubtotalOptions :: (Prelude.Maybe SubtotalOptionsProperty),
                                    rowTotalOptions :: (Prelude.Maybe PivotTotalOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableTotalOptionsProperty :: PivotTableTotalOptionsProperty
mkPivotTableTotalOptionsProperty
  = PivotTableTotalOptionsProperty
      {columnSubtotalOptions = Prelude.Nothing,
       columnTotalOptions = Prelude.Nothing,
       rowSubtotalOptions = Prelude.Nothing,
       rowTotalOptions = Prelude.Nothing}
instance ToResourceProperties PivotTableTotalOptionsProperty where
  toResourceProperties PivotTableTotalOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PivotTableTotalOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnSubtotalOptions"
                              Prelude.<$> columnSubtotalOptions,
                            (JSON..=) "ColumnTotalOptions" Prelude.<$> columnTotalOptions,
                            (JSON..=) "RowSubtotalOptions" Prelude.<$> rowSubtotalOptions,
                            (JSON..=) "RowTotalOptions" Prelude.<$> rowTotalOptions])}
instance JSON.ToJSON PivotTableTotalOptionsProperty where
  toJSON PivotTableTotalOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnSubtotalOptions"
                 Prelude.<$> columnSubtotalOptions,
               (JSON..=) "ColumnTotalOptions" Prelude.<$> columnTotalOptions,
               (JSON..=) "RowSubtotalOptions" Prelude.<$> rowSubtotalOptions,
               (JSON..=) "RowTotalOptions" Prelude.<$> rowTotalOptions]))
instance Property "ColumnSubtotalOptions" PivotTableTotalOptionsProperty where
  type PropertyType "ColumnSubtotalOptions" PivotTableTotalOptionsProperty = SubtotalOptionsProperty
  set newValue PivotTableTotalOptionsProperty {..}
    = PivotTableTotalOptionsProperty
        {columnSubtotalOptions = Prelude.pure newValue, ..}
instance Property "ColumnTotalOptions" PivotTableTotalOptionsProperty where
  type PropertyType "ColumnTotalOptions" PivotTableTotalOptionsProperty = PivotTotalOptionsProperty
  set newValue PivotTableTotalOptionsProperty {..}
    = PivotTableTotalOptionsProperty
        {columnTotalOptions = Prelude.pure newValue, ..}
instance Property "RowSubtotalOptions" PivotTableTotalOptionsProperty where
  type PropertyType "RowSubtotalOptions" PivotTableTotalOptionsProperty = SubtotalOptionsProperty
  set newValue PivotTableTotalOptionsProperty {..}
    = PivotTableTotalOptionsProperty
        {rowSubtotalOptions = Prelude.pure newValue, ..}
instance Property "RowTotalOptions" PivotTableTotalOptionsProperty where
  type PropertyType "RowTotalOptions" PivotTableTotalOptionsProperty = PivotTotalOptionsProperty
  set newValue PivotTableTotalOptionsProperty {..}
    = PivotTableTotalOptionsProperty
        {rowTotalOptions = Prelude.pure newValue, ..}