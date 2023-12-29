module Stratosphere.QuickSight.Dashboard.KPIOptionsProperty (
        module Exports, KPIOptionsProperty(..), mkKPIOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ComparisonConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FontConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ProgressBarOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SecondaryValueOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TrendArrowOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KPIOptionsProperty
  = KPIOptionsProperty {comparison :: (Prelude.Maybe ComparisonConfigurationProperty),
                        primaryValueDisplayType :: (Prelude.Maybe (Value Prelude.Text)),
                        primaryValueFontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                        progressBar :: (Prelude.Maybe ProgressBarOptionsProperty),
                        secondaryValue :: (Prelude.Maybe SecondaryValueOptionsProperty),
                        secondaryValueFontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                        trendArrows :: (Prelude.Maybe TrendArrowOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIOptionsProperty :: KPIOptionsProperty
mkKPIOptionsProperty
  = KPIOptionsProperty
      {comparison = Prelude.Nothing,
       primaryValueDisplayType = Prelude.Nothing,
       primaryValueFontConfiguration = Prelude.Nothing,
       progressBar = Prelude.Nothing, secondaryValue = Prelude.Nothing,
       secondaryValueFontConfiguration = Prelude.Nothing,
       trendArrows = Prelude.Nothing}
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
                            (JSON..=) "TrendArrows" Prelude.<$> trendArrows])}
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
               (JSON..=) "TrendArrows" Prelude.<$> trendArrows]))
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
instance Property "TrendArrows" KPIOptionsProperty where
  type PropertyType "TrendArrows" KPIOptionsProperty = TrendArrowOptionsProperty
  set newValue KPIOptionsProperty {..}
    = KPIOptionsProperty {trendArrows = Prelude.pure newValue, ..}