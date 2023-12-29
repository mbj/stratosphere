module Stratosphere.QuickSight.Template.GaugeChartConditionalFormattingOptionProperty (
        module Exports, GaugeChartConditionalFormattingOptionProperty(..),
        mkGaugeChartConditionalFormattingOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GaugeChartArcConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GaugeChartPrimaryValueConditionalFormattingProperty as Exports
import Stratosphere.ResourceProperties
data GaugeChartConditionalFormattingOptionProperty
  = GaugeChartConditionalFormattingOptionProperty {arc :: (Prelude.Maybe GaugeChartArcConditionalFormattingProperty),
                                                   primaryValue :: (Prelude.Maybe GaugeChartPrimaryValueConditionalFormattingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGaugeChartConditionalFormattingOptionProperty ::
  GaugeChartConditionalFormattingOptionProperty
mkGaugeChartConditionalFormattingOptionProperty
  = GaugeChartConditionalFormattingOptionProperty
      {arc = Prelude.Nothing, primaryValue = Prelude.Nothing}
instance ToResourceProperties GaugeChartConditionalFormattingOptionProperty where
  toResourceProperties
    GaugeChartConditionalFormattingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GaugeChartConditionalFormattingOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arc" Prelude.<$> arc,
                            (JSON..=) "PrimaryValue" Prelude.<$> primaryValue])}
instance JSON.ToJSON GaugeChartConditionalFormattingOptionProperty where
  toJSON GaugeChartConditionalFormattingOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arc" Prelude.<$> arc,
               (JSON..=) "PrimaryValue" Prelude.<$> primaryValue]))
instance Property "Arc" GaugeChartConditionalFormattingOptionProperty where
  type PropertyType "Arc" GaugeChartConditionalFormattingOptionProperty = GaugeChartArcConditionalFormattingProperty
  set newValue GaugeChartConditionalFormattingOptionProperty {..}
    = GaugeChartConditionalFormattingOptionProperty
        {arc = Prelude.pure newValue, ..}
instance Property "PrimaryValue" GaugeChartConditionalFormattingOptionProperty where
  type PropertyType "PrimaryValue" GaugeChartConditionalFormattingOptionProperty = GaugeChartPrimaryValueConditionalFormattingProperty
  set newValue GaugeChartConditionalFormattingOptionProperty {..}
    = GaugeChartConditionalFormattingOptionProperty
        {primaryValue = Prelude.pure newValue, ..}