module Stratosphere.QuickSight.Analysis.TotalOptionsProperty (
        module Exports, TotalOptionsProperty(..), mkTotalOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableCellStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TotalAggregationOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TotalOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-totaloptions.html>
    TotalOptionsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-totaloptions.html#cfn-quicksight-analysis-totaloptions-customlabel>
                          customLabel :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-totaloptions.html#cfn-quicksight-analysis-totaloptions-placement>
                          placement :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-totaloptions.html#cfn-quicksight-analysis-totaloptions-scrollstatus>
                          scrollStatus :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-totaloptions.html#cfn-quicksight-analysis-totaloptions-totalaggregationoptions>
                          totalAggregationOptions :: (Prelude.Maybe [TotalAggregationOptionProperty]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-totaloptions.html#cfn-quicksight-analysis-totaloptions-totalcellstyle>
                          totalCellStyle :: (Prelude.Maybe TableCellStyleProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-totaloptions.html#cfn-quicksight-analysis-totaloptions-totalsvisibility>
                          totalsVisibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTotalOptionsProperty :: TotalOptionsProperty
mkTotalOptionsProperty
  = TotalOptionsProperty
      {haddock_workaround_ = (), customLabel = Prelude.Nothing,
       placement = Prelude.Nothing, scrollStatus = Prelude.Nothing,
       totalAggregationOptions = Prelude.Nothing,
       totalCellStyle = Prelude.Nothing,
       totalsVisibility = Prelude.Nothing}
instance ToResourceProperties TotalOptionsProperty where
  toResourceProperties TotalOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TotalOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
                            (JSON..=) "Placement" Prelude.<$> placement,
                            (JSON..=) "ScrollStatus" Prelude.<$> scrollStatus,
                            (JSON..=) "TotalAggregationOptions"
                              Prelude.<$> totalAggregationOptions,
                            (JSON..=) "TotalCellStyle" Prelude.<$> totalCellStyle,
                            (JSON..=) "TotalsVisibility" Prelude.<$> totalsVisibility])}
instance JSON.ToJSON TotalOptionsProperty where
  toJSON TotalOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
               (JSON..=) "Placement" Prelude.<$> placement,
               (JSON..=) "ScrollStatus" Prelude.<$> scrollStatus,
               (JSON..=) "TotalAggregationOptions"
                 Prelude.<$> totalAggregationOptions,
               (JSON..=) "TotalCellStyle" Prelude.<$> totalCellStyle,
               (JSON..=) "TotalsVisibility" Prelude.<$> totalsVisibility]))
instance Property "CustomLabel" TotalOptionsProperty where
  type PropertyType "CustomLabel" TotalOptionsProperty = Value Prelude.Text
  set newValue TotalOptionsProperty {..}
    = TotalOptionsProperty {customLabel = Prelude.pure newValue, ..}
instance Property "Placement" TotalOptionsProperty where
  type PropertyType "Placement" TotalOptionsProperty = Value Prelude.Text
  set newValue TotalOptionsProperty {..}
    = TotalOptionsProperty {placement = Prelude.pure newValue, ..}
instance Property "ScrollStatus" TotalOptionsProperty where
  type PropertyType "ScrollStatus" TotalOptionsProperty = Value Prelude.Text
  set newValue TotalOptionsProperty {..}
    = TotalOptionsProperty {scrollStatus = Prelude.pure newValue, ..}
instance Property "TotalAggregationOptions" TotalOptionsProperty where
  type PropertyType "TotalAggregationOptions" TotalOptionsProperty = [TotalAggregationOptionProperty]
  set newValue TotalOptionsProperty {..}
    = TotalOptionsProperty
        {totalAggregationOptions = Prelude.pure newValue, ..}
instance Property "TotalCellStyle" TotalOptionsProperty where
  type PropertyType "TotalCellStyle" TotalOptionsProperty = TableCellStyleProperty
  set newValue TotalOptionsProperty {..}
    = TotalOptionsProperty {totalCellStyle = Prelude.pure newValue, ..}
instance Property "TotalsVisibility" TotalOptionsProperty where
  type PropertyType "TotalsVisibility" TotalOptionsProperty = Value Prelude.Text
  set newValue TotalOptionsProperty {..}
    = TotalOptionsProperty
        {totalsVisibility = Prelude.pure newValue, ..}