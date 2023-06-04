module Stratosphere.QuickSight.Dashboard.GaugeChartConditionalFormattingProperty (
        module Exports, GaugeChartConditionalFormattingProperty(..),
        mkGaugeChartConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GaugeChartConditionalFormattingOptionProperty as Exports
import Stratosphere.ResourceProperties
data GaugeChartConditionalFormattingProperty
  = GaugeChartConditionalFormattingProperty {conditionalFormattingOptions :: (Prelude.Maybe [GaugeChartConditionalFormattingOptionProperty])}
mkGaugeChartConditionalFormattingProperty ::
  GaugeChartConditionalFormattingProperty
mkGaugeChartConditionalFormattingProperty
  = GaugeChartConditionalFormattingProperty
      {conditionalFormattingOptions = Prelude.Nothing}
instance ToResourceProperties GaugeChartConditionalFormattingProperty where
  toResourceProperties GaugeChartConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GaugeChartConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionalFormattingOptions"
                              Prelude.<$> conditionalFormattingOptions])}
instance JSON.ToJSON GaugeChartConditionalFormattingProperty where
  toJSON GaugeChartConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionalFormattingOptions"
                 Prelude.<$> conditionalFormattingOptions]))
instance Property "ConditionalFormattingOptions" GaugeChartConditionalFormattingProperty where
  type PropertyType "ConditionalFormattingOptions" GaugeChartConditionalFormattingProperty = [GaugeChartConditionalFormattingOptionProperty]
  set newValue GaugeChartConditionalFormattingProperty {}
    = GaugeChartConditionalFormattingProperty
        {conditionalFormattingOptions = Prelude.pure newValue, ..}