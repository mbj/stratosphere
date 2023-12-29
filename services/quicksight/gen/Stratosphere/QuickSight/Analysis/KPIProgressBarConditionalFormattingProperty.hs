module Stratosphere.QuickSight.Analysis.KPIProgressBarConditionalFormattingProperty (
        module Exports, KPIProgressBarConditionalFormattingProperty(..),
        mkKPIProgressBarConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ConditionalFormattingColorProperty as Exports
import Stratosphere.ResourceProperties
data KPIProgressBarConditionalFormattingProperty
  = KPIProgressBarConditionalFormattingProperty {foregroundColor :: (Prelude.Maybe ConditionalFormattingColorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIProgressBarConditionalFormattingProperty ::
  KPIProgressBarConditionalFormattingProperty
mkKPIProgressBarConditionalFormattingProperty
  = KPIProgressBarConditionalFormattingProperty
      {foregroundColor = Prelude.Nothing}
instance ToResourceProperties KPIProgressBarConditionalFormattingProperty where
  toResourceProperties
    KPIProgressBarConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.KPIProgressBarConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ForegroundColor" Prelude.<$> foregroundColor])}
instance JSON.ToJSON KPIProgressBarConditionalFormattingProperty where
  toJSON KPIProgressBarConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ForegroundColor" Prelude.<$> foregroundColor]))
instance Property "ForegroundColor" KPIProgressBarConditionalFormattingProperty where
  type PropertyType "ForegroundColor" KPIProgressBarConditionalFormattingProperty = ConditionalFormattingColorProperty
  set newValue KPIProgressBarConditionalFormattingProperty {}
    = KPIProgressBarConditionalFormattingProperty
        {foregroundColor = Prelude.pure newValue, ..}