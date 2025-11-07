module Stratosphere.QuickSight.Dashboard.ColumnTooltipItemProperty (
        module Exports, ColumnTooltipItemProperty(..),
        mkColumnTooltipItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AggregationFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnTooltipItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columntooltipitem.html>
    ColumnTooltipItemProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columntooltipitem.html#cfn-quicksight-dashboard-columntooltipitem-aggregation>
                               aggregation :: (Prelude.Maybe AggregationFunctionProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columntooltipitem.html#cfn-quicksight-dashboard-columntooltipitem-column>
                               column :: ColumnIdentifierProperty,
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columntooltipitem.html#cfn-quicksight-dashboard-columntooltipitem-label>
                               label :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columntooltipitem.html#cfn-quicksight-dashboard-columntooltipitem-tooltiptarget>
                               tooltipTarget :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columntooltipitem.html#cfn-quicksight-dashboard-columntooltipitem-visibility>
                               visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnTooltipItemProperty ::
  ColumnIdentifierProperty -> ColumnTooltipItemProperty
mkColumnTooltipItemProperty column
  = ColumnTooltipItemProperty
      {haddock_workaround_ = (), column = column,
       aggregation = Prelude.Nothing, label = Prelude.Nothing,
       tooltipTarget = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties ColumnTooltipItemProperty where
  toResourceProperties ColumnTooltipItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ColumnTooltipItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column]
                           (Prelude.catMaybes
                              [(JSON..=) "Aggregation" Prelude.<$> aggregation,
                               (JSON..=) "Label" Prelude.<$> label,
                               (JSON..=) "TooltipTarget" Prelude.<$> tooltipTarget,
                               (JSON..=) "Visibility" Prelude.<$> visibility]))}
instance JSON.ToJSON ColumnTooltipItemProperty where
  toJSON ColumnTooltipItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column]
              (Prelude.catMaybes
                 [(JSON..=) "Aggregation" Prelude.<$> aggregation,
                  (JSON..=) "Label" Prelude.<$> label,
                  (JSON..=) "TooltipTarget" Prelude.<$> tooltipTarget,
                  (JSON..=) "Visibility" Prelude.<$> visibility])))
instance Property "Aggregation" ColumnTooltipItemProperty where
  type PropertyType "Aggregation" ColumnTooltipItemProperty = AggregationFunctionProperty
  set newValue ColumnTooltipItemProperty {..}
    = ColumnTooltipItemProperty
        {aggregation = Prelude.pure newValue, ..}
instance Property "Column" ColumnTooltipItemProperty where
  type PropertyType "Column" ColumnTooltipItemProperty = ColumnIdentifierProperty
  set newValue ColumnTooltipItemProperty {..}
    = ColumnTooltipItemProperty {column = newValue, ..}
instance Property "Label" ColumnTooltipItemProperty where
  type PropertyType "Label" ColumnTooltipItemProperty = Value Prelude.Text
  set newValue ColumnTooltipItemProperty {..}
    = ColumnTooltipItemProperty {label = Prelude.pure newValue, ..}
instance Property "TooltipTarget" ColumnTooltipItemProperty where
  type PropertyType "TooltipTarget" ColumnTooltipItemProperty = Value Prelude.Text
  set newValue ColumnTooltipItemProperty {..}
    = ColumnTooltipItemProperty
        {tooltipTarget = Prelude.pure newValue, ..}
instance Property "Visibility" ColumnTooltipItemProperty where
  type PropertyType "Visibility" ColumnTooltipItemProperty = Value Prelude.Text
  set newValue ColumnTooltipItemProperty {..}
    = ColumnTooltipItemProperty
        {visibility = Prelude.pure newValue, ..}