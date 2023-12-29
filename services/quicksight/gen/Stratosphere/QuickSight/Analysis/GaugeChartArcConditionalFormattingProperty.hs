module Stratosphere.QuickSight.Analysis.GaugeChartArcConditionalFormattingProperty (
        module Exports, GaugeChartArcConditionalFormattingProperty(..),
        mkGaugeChartArcConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ConditionalFormattingColorProperty as Exports
import Stratosphere.ResourceProperties
data GaugeChartArcConditionalFormattingProperty
  = GaugeChartArcConditionalFormattingProperty {foregroundColor :: (Prelude.Maybe ConditionalFormattingColorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGaugeChartArcConditionalFormattingProperty ::
  GaugeChartArcConditionalFormattingProperty
mkGaugeChartArcConditionalFormattingProperty
  = GaugeChartArcConditionalFormattingProperty
      {foregroundColor = Prelude.Nothing}
instance ToResourceProperties GaugeChartArcConditionalFormattingProperty where
  toResourceProperties
    GaugeChartArcConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GaugeChartArcConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ForegroundColor" Prelude.<$> foregroundColor])}
instance JSON.ToJSON GaugeChartArcConditionalFormattingProperty where
  toJSON GaugeChartArcConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ForegroundColor" Prelude.<$> foregroundColor]))
instance Property "ForegroundColor" GaugeChartArcConditionalFormattingProperty where
  type PropertyType "ForegroundColor" GaugeChartArcConditionalFormattingProperty = ConditionalFormattingColorProperty
  set newValue GaugeChartArcConditionalFormattingProperty {}
    = GaugeChartArcConditionalFormattingProperty
        {foregroundColor = Prelude.pure newValue, ..}