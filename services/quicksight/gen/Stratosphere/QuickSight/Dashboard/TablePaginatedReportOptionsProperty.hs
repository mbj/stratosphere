module Stratosphere.QuickSight.Dashboard.TablePaginatedReportOptionsProperty (
        TablePaginatedReportOptionsProperty(..),
        mkTablePaginatedReportOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TablePaginatedReportOptionsProperty
  = TablePaginatedReportOptionsProperty {overflowColumnHeaderVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                         verticalOverflowVisibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTablePaginatedReportOptionsProperty ::
  TablePaginatedReportOptionsProperty
mkTablePaginatedReportOptionsProperty
  = TablePaginatedReportOptionsProperty
      {overflowColumnHeaderVisibility = Prelude.Nothing,
       verticalOverflowVisibility = Prelude.Nothing}
instance ToResourceProperties TablePaginatedReportOptionsProperty where
  toResourceProperties TablePaginatedReportOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TablePaginatedReportOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OverflowColumnHeaderVisibility"
                              Prelude.<$> overflowColumnHeaderVisibility,
                            (JSON..=) "VerticalOverflowVisibility"
                              Prelude.<$> verticalOverflowVisibility])}
instance JSON.ToJSON TablePaginatedReportOptionsProperty where
  toJSON TablePaginatedReportOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OverflowColumnHeaderVisibility"
                 Prelude.<$> overflowColumnHeaderVisibility,
               (JSON..=) "VerticalOverflowVisibility"
                 Prelude.<$> verticalOverflowVisibility]))
instance Property "OverflowColumnHeaderVisibility" TablePaginatedReportOptionsProperty where
  type PropertyType "OverflowColumnHeaderVisibility" TablePaginatedReportOptionsProperty = Value Prelude.Text
  set newValue TablePaginatedReportOptionsProperty {..}
    = TablePaginatedReportOptionsProperty
        {overflowColumnHeaderVisibility = Prelude.pure newValue, ..}
instance Property "VerticalOverflowVisibility" TablePaginatedReportOptionsProperty where
  type PropertyType "VerticalOverflowVisibility" TablePaginatedReportOptionsProperty = Value Prelude.Text
  set newValue TablePaginatedReportOptionsProperty {..}
    = TablePaginatedReportOptionsProperty
        {verticalOverflowVisibility = Prelude.pure newValue, ..}