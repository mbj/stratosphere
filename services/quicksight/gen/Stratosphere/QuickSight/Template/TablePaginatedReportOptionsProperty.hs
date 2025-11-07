module Stratosphere.QuickSight.Template.TablePaginatedReportOptionsProperty (
        TablePaginatedReportOptionsProperty(..),
        mkTablePaginatedReportOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data TablePaginatedReportOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablepaginatedreportoptions.html>
    TablePaginatedReportOptionsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablepaginatedreportoptions.html#cfn-quicksight-template-tablepaginatedreportoptions-overflowcolumnheadervisibility>
                                         overflowColumnHeaderVisibility :: (Prelude.Maybe JSON.Object),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablepaginatedreportoptions.html#cfn-quicksight-template-tablepaginatedreportoptions-verticaloverflowvisibility>
                                         verticalOverflowVisibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTablePaginatedReportOptionsProperty ::
  TablePaginatedReportOptionsProperty
mkTablePaginatedReportOptionsProperty
  = TablePaginatedReportOptionsProperty
      {haddock_workaround_ = (),
       overflowColumnHeaderVisibility = Prelude.Nothing,
       verticalOverflowVisibility = Prelude.Nothing}
instance ToResourceProperties TablePaginatedReportOptionsProperty where
  toResourceProperties TablePaginatedReportOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TablePaginatedReportOptions",
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
  type PropertyType "OverflowColumnHeaderVisibility" TablePaginatedReportOptionsProperty = JSON.Object
  set newValue TablePaginatedReportOptionsProperty {..}
    = TablePaginatedReportOptionsProperty
        {overflowColumnHeaderVisibility = Prelude.pure newValue, ..}
instance Property "VerticalOverflowVisibility" TablePaginatedReportOptionsProperty where
  type PropertyType "VerticalOverflowVisibility" TablePaginatedReportOptionsProperty = JSON.Object
  set newValue TablePaginatedReportOptionsProperty {..}
    = TablePaginatedReportOptionsProperty
        {verticalOverflowVisibility = Prelude.pure newValue, ..}