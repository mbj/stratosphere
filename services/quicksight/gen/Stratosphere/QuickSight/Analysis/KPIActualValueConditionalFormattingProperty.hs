module Stratosphere.QuickSight.Analysis.KPIActualValueConditionalFormattingProperty (
        module Exports, KPIActualValueConditionalFormattingProperty(..),
        mkKPIActualValueConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ConditionalFormattingColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ConditionalFormattingIconProperty as Exports
import Stratosphere.ResourceProperties
data KPIActualValueConditionalFormattingProperty
  = KPIActualValueConditionalFormattingProperty {icon :: (Prelude.Maybe ConditionalFormattingIconProperty),
                                                 textColor :: (Prelude.Maybe ConditionalFormattingColorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIActualValueConditionalFormattingProperty ::
  KPIActualValueConditionalFormattingProperty
mkKPIActualValueConditionalFormattingProperty
  = KPIActualValueConditionalFormattingProperty
      {icon = Prelude.Nothing, textColor = Prelude.Nothing}
instance ToResourceProperties KPIActualValueConditionalFormattingProperty where
  toResourceProperties
    KPIActualValueConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.KPIActualValueConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Icon" Prelude.<$> icon,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON KPIActualValueConditionalFormattingProperty where
  toJSON KPIActualValueConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Icon" Prelude.<$> icon,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "Icon" KPIActualValueConditionalFormattingProperty where
  type PropertyType "Icon" KPIActualValueConditionalFormattingProperty = ConditionalFormattingIconProperty
  set newValue KPIActualValueConditionalFormattingProperty {..}
    = KPIActualValueConditionalFormattingProperty
        {icon = Prelude.pure newValue, ..}
instance Property "TextColor" KPIActualValueConditionalFormattingProperty where
  type PropertyType "TextColor" KPIActualValueConditionalFormattingProperty = ConditionalFormattingColorProperty
  set newValue KPIActualValueConditionalFormattingProperty {..}
    = KPIActualValueConditionalFormattingProperty
        {textColor = Prelude.pure newValue, ..}