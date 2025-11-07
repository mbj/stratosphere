module Stratosphere.QuickSight.Analysis.PivotTablePaginatedReportOptionsProperty (
        PivotTablePaginatedReportOptionsProperty(..),
        mkPivotTablePaginatedReportOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTablePaginatedReportOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablepaginatedreportoptions.html>
    PivotTablePaginatedReportOptionsProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablepaginatedreportoptions.html#cfn-quicksight-analysis-pivottablepaginatedreportoptions-overflowcolumnheadervisibility>
                                              overflowColumnHeaderVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablepaginatedreportoptions.html#cfn-quicksight-analysis-pivottablepaginatedreportoptions-verticaloverflowvisibility>
                                              verticalOverflowVisibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTablePaginatedReportOptionsProperty ::
  PivotTablePaginatedReportOptionsProperty
mkPivotTablePaginatedReportOptionsProperty
  = PivotTablePaginatedReportOptionsProperty
      {haddock_workaround_ = (),
       overflowColumnHeaderVisibility = Prelude.Nothing,
       verticalOverflowVisibility = Prelude.Nothing}
instance ToResourceProperties PivotTablePaginatedReportOptionsProperty where
  toResourceProperties PivotTablePaginatedReportOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PivotTablePaginatedReportOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OverflowColumnHeaderVisibility"
                              Prelude.<$> overflowColumnHeaderVisibility,
                            (JSON..=) "VerticalOverflowVisibility"
                              Prelude.<$> verticalOverflowVisibility])}
instance JSON.ToJSON PivotTablePaginatedReportOptionsProperty where
  toJSON PivotTablePaginatedReportOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OverflowColumnHeaderVisibility"
                 Prelude.<$> overflowColumnHeaderVisibility,
               (JSON..=) "VerticalOverflowVisibility"
                 Prelude.<$> verticalOverflowVisibility]))
instance Property "OverflowColumnHeaderVisibility" PivotTablePaginatedReportOptionsProperty where
  type PropertyType "OverflowColumnHeaderVisibility" PivotTablePaginatedReportOptionsProperty = Value Prelude.Text
  set newValue PivotTablePaginatedReportOptionsProperty {..}
    = PivotTablePaginatedReportOptionsProperty
        {overflowColumnHeaderVisibility = Prelude.pure newValue, ..}
instance Property "VerticalOverflowVisibility" PivotTablePaginatedReportOptionsProperty where
  type PropertyType "VerticalOverflowVisibility" PivotTablePaginatedReportOptionsProperty = Value Prelude.Text
  set newValue PivotTablePaginatedReportOptionsProperty {..}
    = PivotTablePaginatedReportOptionsProperty
        {verticalOverflowVisibility = Prelude.pure newValue, ..}