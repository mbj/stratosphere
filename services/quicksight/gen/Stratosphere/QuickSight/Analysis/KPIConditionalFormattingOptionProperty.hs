module Stratosphere.QuickSight.Analysis.KPIConditionalFormattingOptionProperty (
        module Exports, KPIConditionalFormattingOptionProperty(..),
        mkKPIConditionalFormattingOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.KPIActualValueConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.KPIComparisonValueConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.KPIPrimaryValueConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.KPIProgressBarConditionalFormattingProperty as Exports
import Stratosphere.ResourceProperties
data KPIConditionalFormattingOptionProperty
  = KPIConditionalFormattingOptionProperty {actualValue :: (Prelude.Maybe KPIActualValueConditionalFormattingProperty),
                                            comparisonValue :: (Prelude.Maybe KPIComparisonValueConditionalFormattingProperty),
                                            primaryValue :: (Prelude.Maybe KPIPrimaryValueConditionalFormattingProperty),
                                            progressBar :: (Prelude.Maybe KPIProgressBarConditionalFormattingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIConditionalFormattingOptionProperty ::
  KPIConditionalFormattingOptionProperty
mkKPIConditionalFormattingOptionProperty
  = KPIConditionalFormattingOptionProperty
      {actualValue = Prelude.Nothing, comparisonValue = Prelude.Nothing,
       primaryValue = Prelude.Nothing, progressBar = Prelude.Nothing}
instance ToResourceProperties KPIConditionalFormattingOptionProperty where
  toResourceProperties KPIConditionalFormattingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.KPIConditionalFormattingOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ActualValue" Prelude.<$> actualValue,
                            (JSON..=) "ComparisonValue" Prelude.<$> comparisonValue,
                            (JSON..=) "PrimaryValue" Prelude.<$> primaryValue,
                            (JSON..=) "ProgressBar" Prelude.<$> progressBar])}
instance JSON.ToJSON KPIConditionalFormattingOptionProperty where
  toJSON KPIConditionalFormattingOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ActualValue" Prelude.<$> actualValue,
               (JSON..=) "ComparisonValue" Prelude.<$> comparisonValue,
               (JSON..=) "PrimaryValue" Prelude.<$> primaryValue,
               (JSON..=) "ProgressBar" Prelude.<$> progressBar]))
instance Property "ActualValue" KPIConditionalFormattingOptionProperty where
  type PropertyType "ActualValue" KPIConditionalFormattingOptionProperty = KPIActualValueConditionalFormattingProperty
  set newValue KPIConditionalFormattingOptionProperty {..}
    = KPIConditionalFormattingOptionProperty
        {actualValue = Prelude.pure newValue, ..}
instance Property "ComparisonValue" KPIConditionalFormattingOptionProperty where
  type PropertyType "ComparisonValue" KPIConditionalFormattingOptionProperty = KPIComparisonValueConditionalFormattingProperty
  set newValue KPIConditionalFormattingOptionProperty {..}
    = KPIConditionalFormattingOptionProperty
        {comparisonValue = Prelude.pure newValue, ..}
instance Property "PrimaryValue" KPIConditionalFormattingOptionProperty where
  type PropertyType "PrimaryValue" KPIConditionalFormattingOptionProperty = KPIPrimaryValueConditionalFormattingProperty
  set newValue KPIConditionalFormattingOptionProperty {..}
    = KPIConditionalFormattingOptionProperty
        {primaryValue = Prelude.pure newValue, ..}
instance Property "ProgressBar" KPIConditionalFormattingOptionProperty where
  type PropertyType "ProgressBar" KPIConditionalFormattingOptionProperty = KPIProgressBarConditionalFormattingProperty
  set newValue KPIConditionalFormattingOptionProperty {..}
    = KPIConditionalFormattingOptionProperty
        {progressBar = Prelude.pure newValue, ..}