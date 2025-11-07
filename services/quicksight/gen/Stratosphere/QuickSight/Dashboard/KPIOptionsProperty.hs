module Stratosphere.QuickSight.Dashboard.KPIOptionsProperty (
        module Exports, KPIOptionsProperty(..), mkKPIOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ComparisonConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FontConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.KPISparklineOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.KPIVisualLayoutOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ProgressBarOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SecondaryValueOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TrendArrowOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KPIOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpioptions.html>
    KPIOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpioptions.html#cfn-quicksight-dashboard-kpioptions-comparison>
                        comparison :: (Prelude.Maybe ComparisonConfigurationProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpioptions.html#cfn-quicksight-dashboard-kpioptions-primaryvaluedisplaytype>
                        primaryValueDisplayType :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpioptions.html#cfn-quicksight-dashboard-kpioptions-primaryvaluefontconfiguration>
                        primaryValueFontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpioptions.html#cfn-quicksight-dashboard-kpioptions-progressbar>
                        progressBar :: (Prelude.Maybe ProgressBarOptionsProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpioptions.html#cfn-quicksight-dashboard-kpioptions-secondaryvalue>
                        secondaryValue :: (Prelude.Maybe SecondaryValueOptionsProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpioptions.html#cfn-quicksight-dashboard-kpioptions-secondaryvaluefontconfiguration>
                        secondaryValueFontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpioptions.html#cfn-quicksight-dashboard-kpioptions-sparkline>
                        sparkline :: (Prelude.Maybe KPISparklineOptionsProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpioptions.html#cfn-quicksight-dashboard-kpioptions-trendarrows>
                        trendArrows :: (Prelude.Maybe TrendArrowOptionsProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpioptions.html#cfn-quicksight-dashboard-kpioptions-visuallayoutoptions>
                        visualLayoutOptions :: (Prelude.Maybe KPIVisualLayoutOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIOptionsProperty :: KPIOptionsProperty
mkKPIOptionsProperty
  = KPIOptionsProperty
      {haddock_workaround_ = (), comparison = Prelude.Nothing,
       primaryValueDisplayType = Prelude.Nothing,
       primaryValueFontConfiguration = Prelude.Nothing,
       progressBar = Prelude.Nothing, secondaryValue = Prelude.Nothing,
       secondaryValueFontConfiguration = Prelude.Nothing,
       sparkline = Prelude.Nothing, trendArrows = Prelude.Nothing,
       visualLayoutOptions = Prelude.Nothing}
instance ToResourceProperties KPIOptionsProperty where
  toResourceProperties KPIOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.KPIOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Comparison" Prelude.<$> comparison,
                            (JSON..=) "PrimaryValueDisplayType"
                              Prelude.<$> primaryValueDisplayType,
                            (JSON..=) "PrimaryValueFontConfiguration"
                              Prelude.<$> primaryValueFontConfiguration,
                            (JSON..=) "ProgressBar" Prelude.<$> progressBar,
                            (JSON..=) "SecondaryValue" Prelude.<$> secondaryValue,
                            (JSON..=) "SecondaryValueFontConfiguration"
                              Prelude.<$> secondaryValueFontConfiguration,
                            (JSON..=) "Sparkline" Prelude.<$> sparkline,
                            (JSON..=) "TrendArrows" Prelude.<$> trendArrows,
                            (JSON..=) "VisualLayoutOptions" Prelude.<$> visualLayoutOptions])}
instance JSON.ToJSON KPIOptionsProperty where
  toJSON KPIOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Comparison" Prelude.<$> comparison,
               (JSON..=) "PrimaryValueDisplayType"
                 Prelude.<$> primaryValueDisplayType,
               (JSON..=) "PrimaryValueFontConfiguration"
                 Prelude.<$> primaryValueFontConfiguration,
               (JSON..=) "ProgressBar" Prelude.<$> progressBar,
               (JSON..=) "SecondaryValue" Prelude.<$> secondaryValue,
               (JSON..=) "SecondaryValueFontConfiguration"
                 Prelude.<$> secondaryValueFontConfiguration,
               (JSON..=) "Sparkline" Prelude.<$> sparkline,
               (JSON..=) "TrendArrows" Prelude.<$> trendArrows,
               (JSON..=) "VisualLayoutOptions" Prelude.<$> visualLayoutOptions]))
instance Property "Comparison" KPIOptionsProperty where
  type PropertyType "Comparison" KPIOptionsProperty = ComparisonConfigurationProperty
  set newValue KPIOptionsProperty {..}
    = KPIOptionsProperty {comparison = Prelude.pure newValue, ..}
instance Property "PrimaryValueDisplayType" KPIOptionsProperty where
  type PropertyType "PrimaryValueDisplayType" KPIOptionsProperty = Value Prelude.Text
  set newValue KPIOptionsProperty {..}
    = KPIOptionsProperty
        {primaryValueDisplayType = Prelude.pure newValue, ..}
instance Property "PrimaryValueFontConfiguration" KPIOptionsProperty where
  type PropertyType "PrimaryValueFontConfiguration" KPIOptionsProperty = FontConfigurationProperty
  set newValue KPIOptionsProperty {..}
    = KPIOptionsProperty
        {primaryValueFontConfiguration = Prelude.pure newValue, ..}
instance Property "ProgressBar" KPIOptionsProperty where
  type PropertyType "ProgressBar" KPIOptionsProperty = ProgressBarOptionsProperty
  set newValue KPIOptionsProperty {..}
    = KPIOptionsProperty {progressBar = Prelude.pure newValue, ..}
instance Property "SecondaryValue" KPIOptionsProperty where
  type PropertyType "SecondaryValue" KPIOptionsProperty = SecondaryValueOptionsProperty
  set newValue KPIOptionsProperty {..}
    = KPIOptionsProperty {secondaryValue = Prelude.pure newValue, ..}
instance Property "SecondaryValueFontConfiguration" KPIOptionsProperty where
  type PropertyType "SecondaryValueFontConfiguration" KPIOptionsProperty = FontConfigurationProperty
  set newValue KPIOptionsProperty {..}
    = KPIOptionsProperty
        {secondaryValueFontConfiguration = Prelude.pure newValue, ..}
instance Property "Sparkline" KPIOptionsProperty where
  type PropertyType "Sparkline" KPIOptionsProperty = KPISparklineOptionsProperty
  set newValue KPIOptionsProperty {..}
    = KPIOptionsProperty {sparkline = Prelude.pure newValue, ..}
instance Property "TrendArrows" KPIOptionsProperty where
  type PropertyType "TrendArrows" KPIOptionsProperty = TrendArrowOptionsProperty
  set newValue KPIOptionsProperty {..}
    = KPIOptionsProperty {trendArrows = Prelude.pure newValue, ..}
instance Property "VisualLayoutOptions" KPIOptionsProperty where
  type PropertyType "VisualLayoutOptions" KPIOptionsProperty = KPIVisualLayoutOptionsProperty
  set newValue KPIOptionsProperty {..}
    = KPIOptionsProperty
        {visualLayoutOptions = Prelude.pure newValue, ..}