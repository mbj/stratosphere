module Stratosphere.QuickSight.Dashboard.KPIConditionalFormattingOptionProperty (
        module Exports, KPIConditionalFormattingOptionProperty(..),
        mkKPIConditionalFormattingOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.KPIPrimaryValueConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.KPIProgressBarConditionalFormattingProperty as Exports
import Stratosphere.ResourceProperties
data KPIConditionalFormattingOptionProperty
  = KPIConditionalFormattingOptionProperty {primaryValue :: (Prelude.Maybe KPIPrimaryValueConditionalFormattingProperty),
                                            progressBar :: (Prelude.Maybe KPIProgressBarConditionalFormattingProperty)}
mkKPIConditionalFormattingOptionProperty ::
  KPIConditionalFormattingOptionProperty
mkKPIConditionalFormattingOptionProperty
  = KPIConditionalFormattingOptionProperty
      {primaryValue = Prelude.Nothing, progressBar = Prelude.Nothing}
instance ToResourceProperties KPIConditionalFormattingOptionProperty where
  toResourceProperties KPIConditionalFormattingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.KPIConditionalFormattingOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PrimaryValue" Prelude.<$> primaryValue,
                            (JSON..=) "ProgressBar" Prelude.<$> progressBar])}
instance JSON.ToJSON KPIConditionalFormattingOptionProperty where
  toJSON KPIConditionalFormattingOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PrimaryValue" Prelude.<$> primaryValue,
               (JSON..=) "ProgressBar" Prelude.<$> progressBar]))
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