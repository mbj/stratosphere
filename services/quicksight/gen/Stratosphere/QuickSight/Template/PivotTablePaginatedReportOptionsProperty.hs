module Stratosphere.QuickSight.Template.PivotTablePaginatedReportOptionsProperty (
        PivotTablePaginatedReportOptionsProperty(..),
        mkPivotTablePaginatedReportOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data PivotTablePaginatedReportOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottablepaginatedreportoptions.html>
    PivotTablePaginatedReportOptionsProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottablepaginatedreportoptions.html#cfn-quicksight-template-pivottablepaginatedreportoptions-overflowcolumnheadervisibility>
                                              overflowColumnHeaderVisibility :: (Prelude.Maybe JSON.Object),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottablepaginatedreportoptions.html#cfn-quicksight-template-pivottablepaginatedreportoptions-verticaloverflowvisibility>
                                              verticalOverflowVisibility :: (Prelude.Maybe JSON.Object)}
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
        {awsType = "AWS::QuickSight::Template.PivotTablePaginatedReportOptions",
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
  type PropertyType "OverflowColumnHeaderVisibility" PivotTablePaginatedReportOptionsProperty = JSON.Object
  set newValue PivotTablePaginatedReportOptionsProperty {..}
    = PivotTablePaginatedReportOptionsProperty
        {overflowColumnHeaderVisibility = Prelude.pure newValue, ..}
instance Property "VerticalOverflowVisibility" PivotTablePaginatedReportOptionsProperty where
  type PropertyType "VerticalOverflowVisibility" PivotTablePaginatedReportOptionsProperty = JSON.Object
  set newValue PivotTablePaginatedReportOptionsProperty {..}
    = PivotTablePaginatedReportOptionsProperty
        {verticalOverflowVisibility = Prelude.pure newValue, ..}