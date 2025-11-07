module Stratosphere.QuickSight.Analysis.GaugeChartVisualProperty (
        module Exports, GaugeChartVisualProperty(..),
        mkGaugeChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GaugeChartConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GaugeChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GaugeChartVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartvisual.html>
    GaugeChartVisualProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartvisual.html#cfn-quicksight-analysis-gaugechartvisual-actions>
                              actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartvisual.html#cfn-quicksight-analysis-gaugechartvisual-chartconfiguration>
                              chartConfiguration :: (Prelude.Maybe GaugeChartConfigurationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartvisual.html#cfn-quicksight-analysis-gaugechartvisual-conditionalformatting>
                              conditionalFormatting :: (Prelude.Maybe GaugeChartConditionalFormattingProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartvisual.html#cfn-quicksight-analysis-gaugechartvisual-subtitle>
                              subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartvisual.html#cfn-quicksight-analysis-gaugechartvisual-title>
                              title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartvisual.html#cfn-quicksight-analysis-gaugechartvisual-visualcontentalttext>
                              visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartvisual.html#cfn-quicksight-analysis-gaugechartvisual-visualid>
                              visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGaugeChartVisualProperty ::
  Value Prelude.Text -> GaugeChartVisualProperty
mkGaugeChartVisualProperty visualId
  = GaugeChartVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       conditionalFormatting = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing,
       visualContentAltText = Prelude.Nothing}
instance ToResourceProperties GaugeChartVisualProperty where
  toResourceProperties GaugeChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GaugeChartVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "ConditionalFormatting"
                                 Prelude.<$> conditionalFormatting,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON GaugeChartVisualProperty where
  toJSON GaugeChartVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "ConditionalFormatting"
                    Prelude.<$> conditionalFormatting,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" GaugeChartVisualProperty where
  type PropertyType "Actions" GaugeChartVisualProperty = [VisualCustomActionProperty]
  set newValue GaugeChartVisualProperty {..}
    = GaugeChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" GaugeChartVisualProperty where
  type PropertyType "ChartConfiguration" GaugeChartVisualProperty = GaugeChartConfigurationProperty
  set newValue GaugeChartVisualProperty {..}
    = GaugeChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ConditionalFormatting" GaugeChartVisualProperty where
  type PropertyType "ConditionalFormatting" GaugeChartVisualProperty = GaugeChartConditionalFormattingProperty
  set newValue GaugeChartVisualProperty {..}
    = GaugeChartVisualProperty
        {conditionalFormatting = Prelude.pure newValue, ..}
instance Property "Subtitle" GaugeChartVisualProperty where
  type PropertyType "Subtitle" GaugeChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue GaugeChartVisualProperty {..}
    = GaugeChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" GaugeChartVisualProperty where
  type PropertyType "Title" GaugeChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue GaugeChartVisualProperty {..}
    = GaugeChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" GaugeChartVisualProperty where
  type PropertyType "VisualContentAltText" GaugeChartVisualProperty = Value Prelude.Text
  set newValue GaugeChartVisualProperty {..}
    = GaugeChartVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" GaugeChartVisualProperty where
  type PropertyType "VisualId" GaugeChartVisualProperty = Value Prelude.Text
  set newValue GaugeChartVisualProperty {..}
    = GaugeChartVisualProperty {visualId = newValue, ..}