module Stratosphere.QuickSight.Template.GaugeChartVisualProperty (
        module Exports, GaugeChartVisualProperty(..),
        mkGaugeChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GaugeChartConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GaugeChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GaugeChartVisualProperty
  = GaugeChartVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                              chartConfiguration :: (Prelude.Maybe GaugeChartConfigurationProperty),
                              conditionalFormatting :: (Prelude.Maybe GaugeChartConditionalFormattingProperty),
                              subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                              title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                              visualId :: (Value Prelude.Text)}
mkGaugeChartVisualProperty ::
  Value Prelude.Text -> GaugeChartVisualProperty
mkGaugeChartVisualProperty visualId
  = GaugeChartVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       conditionalFormatting = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing}
instance ToResourceProperties GaugeChartVisualProperty where
  toResourceProperties GaugeChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GaugeChartVisual",
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
                               (JSON..=) "Title" Prelude.<$> title]))}
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
                  (JSON..=) "Title" Prelude.<$> title])))
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
instance Property "VisualId" GaugeChartVisualProperty where
  type PropertyType "VisualId" GaugeChartVisualProperty = Value Prelude.Text
  set newValue GaugeChartVisualProperty {..}
    = GaugeChartVisualProperty {visualId = newValue, ..}