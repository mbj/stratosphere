module Stratosphere.QuickSight.Analysis.KPIOptionsProperty (
        module Exports, KPIOptionsProperty(..), mkKPIOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ComparisonConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FontConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.KPISparklineOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.KPIVisualLayoutOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ProgressBarOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SecondaryValueOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TrendArrowOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KPIOptionsProperty
  = KPIOptionsProperty {comparison :: (Prelude.Maybe ComparisonConfigurationProperty),
                        primaryValueDisplayType :: (Prelude.Maybe (Value Prelude.Text)),
                        primaryValueFontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                        progressBar :: (Prelude.Maybe ProgressBarOptionsProperty),
                        secondaryValue :: (Prelude.Maybe SecondaryValueOptionsProperty),
                        secondaryValueFontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                        sparkline :: (Prelude.Maybe KPISparklineOptionsProperty),
                        trendArrows :: (Prelude.Maybe TrendArrowOptionsProperty),
                        visualLayoutOptions :: (Prelude.Maybe KPIVisualLayoutOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIOptionsProperty :: KPIOptionsProperty
mkKPIOptionsProperty
  = KPIOptionsProperty
      {comparison = Prelude.Nothing,
       primaryValueDisplayType = Prelude.Nothing,
       primaryValueFontConfiguration = Prelude.Nothing,
       progressBar = Prelude.Nothing, secondaryValue = Prelude.Nothing,
       secondaryValueFontConfiguration = Prelude.Nothing,
       sparkline = Prelude.Nothing, trendArrows = Prelude.Nothing,
       visualLayoutOptions = Prelude.Nothing}
instance ToResourceProperties KPIOptionsProperty where
  toResourceProperties KPIOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.KPIOptions",
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