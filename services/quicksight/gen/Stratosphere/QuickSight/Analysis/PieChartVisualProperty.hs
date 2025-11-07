module Stratosphere.QuickSight.Analysis.PieChartVisualProperty (
        module Exports, PieChartVisualProperty(..),
        mkPieChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PieChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PieChartVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartvisual.html>
    PieChartVisualProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartvisual.html#cfn-quicksight-analysis-piechartvisual-actions>
                            actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartvisual.html#cfn-quicksight-analysis-piechartvisual-chartconfiguration>
                            chartConfiguration :: (Prelude.Maybe PieChartConfigurationProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartvisual.html#cfn-quicksight-analysis-piechartvisual-columnhierarchies>
                            columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartvisual.html#cfn-quicksight-analysis-piechartvisual-subtitle>
                            subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartvisual.html#cfn-quicksight-analysis-piechartvisual-title>
                            title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartvisual.html#cfn-quicksight-analysis-piechartvisual-visualcontentalttext>
                            visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartvisual.html#cfn-quicksight-analysis-piechartvisual-visualid>
                            visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPieChartVisualProperty ::
  Value Prelude.Text -> PieChartVisualProperty
mkPieChartVisualProperty visualId
  = PieChartVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties PieChartVisualProperty where
  toResourceProperties PieChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PieChartVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON PieChartVisualProperty where
  toJSON PieChartVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" PieChartVisualProperty where
  type PropertyType "Actions" PieChartVisualProperty = [VisualCustomActionProperty]
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" PieChartVisualProperty where
  type PropertyType "ChartConfiguration" PieChartVisualProperty = PieChartConfigurationProperty
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" PieChartVisualProperty where
  type PropertyType "ColumnHierarchies" PieChartVisualProperty = [ColumnHierarchyProperty]
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" PieChartVisualProperty where
  type PropertyType "Subtitle" PieChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" PieChartVisualProperty where
  type PropertyType "Title" PieChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" PieChartVisualProperty where
  type PropertyType "VisualContentAltText" PieChartVisualProperty = Value Prelude.Text
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" PieChartVisualProperty where
  type PropertyType "VisualId" PieChartVisualProperty = Value Prelude.Text
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty {visualId = newValue, ..}