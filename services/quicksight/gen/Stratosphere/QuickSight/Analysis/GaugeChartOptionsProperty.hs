module Stratosphere.QuickSight.Analysis.GaugeChartOptionsProperty (
        module Exports, GaugeChartOptionsProperty(..),
        mkGaugeChartOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ArcAxisConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ArcConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ComparisonConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FontConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GaugeChartOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html>
    GaugeChartOptionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html#cfn-quicksight-analysis-gaugechartoptions-arc>
                               arc :: (Prelude.Maybe ArcConfigurationProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html#cfn-quicksight-analysis-gaugechartoptions-arcaxis>
                               arcAxis :: (Prelude.Maybe ArcAxisConfigurationProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html#cfn-quicksight-analysis-gaugechartoptions-comparison>
                               comparison :: (Prelude.Maybe ComparisonConfigurationProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html#cfn-quicksight-analysis-gaugechartoptions-primaryvaluedisplaytype>
                               primaryValueDisplayType :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html#cfn-quicksight-analysis-gaugechartoptions-primaryvaluefontconfiguration>
                               primaryValueFontConfiguration :: (Prelude.Maybe FontConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGaugeChartOptionsProperty :: GaugeChartOptionsProperty
mkGaugeChartOptionsProperty
  = GaugeChartOptionsProperty
      {haddock_workaround_ = (), arc = Prelude.Nothing,
       arcAxis = Prelude.Nothing, comparison = Prelude.Nothing,
       primaryValueDisplayType = Prelude.Nothing,
       primaryValueFontConfiguration = Prelude.Nothing}
instance ToResourceProperties GaugeChartOptionsProperty where
  toResourceProperties GaugeChartOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GaugeChartOptions",
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