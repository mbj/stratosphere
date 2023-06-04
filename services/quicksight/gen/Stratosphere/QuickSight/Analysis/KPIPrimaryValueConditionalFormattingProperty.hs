module Stratosphere.QuickSight.Analysis.KPIPrimaryValueConditionalFormattingProperty (
        module Exports, KPIPrimaryValueConditionalFormattingProperty(..),
        mkKPIPrimaryValueConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ConditionalFormattingColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ConditionalFormattingIconProperty as Exports
import Stratosphere.ResourceProperties
data KPIPrimaryValueConditionalFormattingProperty
  = KPIPrimaryValueConditionalFormattingProperty {icon :: (Prelude.Maybe ConditionalFormattingIconProperty),
                                                  textColor :: (Prelude.Maybe ConditionalFormattingColorProperty)}
mkKPIPrimaryValueConditionalFormattingProperty ::
  KPIPrimaryValueConditionalFormattingProperty
mkKPIPrimaryValueConditionalFormattingProperty
  = KPIPrimaryValueConditionalFormattingProperty
      {icon = Prelude.Nothing, textColor = Prelude.Nothing}
instance ToResourceProperties KPIPrimaryValueConditionalFormattingProperty where
  toResourceProperties
    KPIPrimaryValueConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.KPIPrimaryValueConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Icon" Prelude.<$> icon,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON KPIPrimaryValueConditionalFormattingProperty where
  toJSON KPIPrimaryValueConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Icon" Prelude.<$> icon,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "Icon" KPIPrimaryValueConditionalFormattingProperty where
  type PropertyType "Icon" KPIPrimaryValueConditionalFormattingProperty = ConditionalFormattingIconProperty
  set newValue KPIPrimaryValueConditionalFormattingProperty {..}
    = KPIPrimaryValueConditionalFormattingProperty
        {icon = Prelude.pure newValue, ..}
instance Property "TextColor" KPIPrimaryValueConditionalFormattingProperty where
  type PropertyType "TextColor" KPIPrimaryValueConditionalFormattingProperty = ConditionalFormattingColorProperty
  set newValue KPIPrimaryValueConditionalFormattingProperty {..}
    = KPIPrimaryValueConditionalFormattingProperty
        {textColor = Prelude.pure newValue, ..}