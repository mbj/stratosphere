module Stratosphere.QuickSight.Template.GaugeChartOptionsProperty (
        module Exports, GaugeChartOptionsProperty(..),
        mkGaugeChartOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ArcAxisConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ArcConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ComparisonConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FontConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GaugeChartOptionsProperty
  = GaugeChartOptionsProperty {arc :: (Prelude.Maybe ArcConfigurationProperty),
                               arcAxis :: (Prelude.Maybe ArcAxisConfigurationProperty),
                               comparison :: (Prelude.Maybe ComparisonConfigurationProperty),
                               primaryValueDisplayType :: (Prelude.Maybe (Value Prelude.Text)),
                               primaryValueFontConfiguration :: (Prelude.Maybe FontConfigurationProperty)}
mkGaugeChartOptionsProperty :: GaugeChartOptionsProperty
mkGaugeChartOptionsProperty
  = GaugeChartOptionsProperty
      {arc = Prelude.Nothing, arcAxis = Prelude.Nothing,
       comparison = Prelude.Nothing,
       primaryValueDisplayType = Prelude.Nothing,
       primaryValueFontConfiguration = Prelude.Nothing}
instance ToResourceProperties GaugeChartOptionsProperty where
  toResourceProperties GaugeChartOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GaugeChartOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arc" Prelude.<$> arc,
                            (JSON..=) "ArcAxis" Prelude.<$> arcAxis,
                            (JSON..=) "Comparison" Prelude.<$> comparison,
                            (JSON..=) "PrimaryValueDisplayType"
                              Prelude.<$> primaryValueDisplayType,
                            (JSON..=) "PrimaryValueFontConfiguration"
                              Prelude.<$> primaryValueFontConfiguration])}
instance JSON.ToJSON GaugeChartOptionsProperty where
  toJSON GaugeChartOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arc" Prelude.<$> arc,
               (JSON..=) "ArcAxis" Prelude.<$> arcAxis,
               (JSON..=) "Comparison" Prelude.<$> comparison,
               (JSON..=) "PrimaryValueDisplayType"
                 Prelude.<$> primaryValueDisplayType,
               (JSON..=) "PrimaryValueFontConfiguration"
                 Prelude.<$> primaryValueFontConfiguration]))
instance Property "Arc" GaugeChartOptionsProperty where
  type PropertyType "Arc" GaugeChartOptionsProperty = ArcConfigurationProperty
  set newValue GaugeChartOptionsProperty {..}
    = GaugeChartOptionsProperty {arc = Prelude.pure newValue, ..}
instance Property "ArcAxis" GaugeChartOptionsProperty where
  type PropertyType "ArcAxis" GaugeChartOptionsProperty = ArcAxisConfigurationProperty
  set newValue GaugeChartOptionsProperty {..}
    = GaugeChartOptionsProperty {arcAxis = Prelude.pure newValue, ..}
instance Property "Comparison" GaugeChartOptionsProperty where
  type PropertyType "Comparison" GaugeChartOptionsProperty = ComparisonConfigurationProperty
  set newValue GaugeChartOptionsProperty {..}
    = GaugeChartOptionsProperty
        {comparison = Prelude.pure newValue, ..}
instance Property "PrimaryValueDisplayType" GaugeChartOptionsProperty where
  type PropertyType "PrimaryValueDisplayType" GaugeChartOptionsProperty = Value Prelude.Text
  set newValue GaugeChartOptionsProperty {..}
    = GaugeChartOptionsProperty
        {primaryValueDisplayType = Prelude.pure newValue, ..}
instance Property "PrimaryValueFontConfiguration" GaugeChartOptionsProperty where
  type PropertyType "PrimaryValueFontConfiguration" GaugeChartOptionsProperty = FontConfigurationProperty
  set newValue GaugeChartOptionsProperty {..}
    = GaugeChartOptionsProperty
        {primaryValueFontConfiguration = Prelude.pure newValue, ..}