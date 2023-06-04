module Stratosphere.QuickSight.Dashboard.TextConditionalFormatProperty (
        module Exports, TextConditionalFormatProperty(..),
        mkTextConditionalFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ConditionalFormattingColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ConditionalFormattingIconProperty as Exports
import Stratosphere.ResourceProperties
data TextConditionalFormatProperty
  = TextConditionalFormatProperty {backgroundColor :: (Prelude.Maybe ConditionalFormattingColorProperty),
                                   icon :: (Prelude.Maybe ConditionalFormattingIconProperty),
                                   textColor :: (Prelude.Maybe ConditionalFormattingColorProperty)}
mkTextConditionalFormatProperty :: TextConditionalFormatProperty
mkTextConditionalFormatProperty
  = TextConditionalFormatProperty
      {backgroundColor = Prelude.Nothing, icon = Prelude.Nothing,
       textColor = Prelude.Nothing}
instance ToResourceProperties TextConditionalFormatProperty where
  toResourceProperties TextConditionalFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TextConditionalFormat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
                            (JSON..=) "Icon" Prelude.<$> icon,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON TextConditionalFormatProperty where
  toJSON TextConditionalFormatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
               (JSON..=) "Icon" Prelude.<$> icon,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "BackgroundColor" TextConditionalFormatProperty where
  type PropertyType "BackgroundColor" TextConditionalFormatProperty = ConditionalFormattingColorProperty
  set newValue TextConditionalFormatProperty {..}
    = TextConditionalFormatProperty
        {backgroundColor = Prelude.pure newValue, ..}
instance Property "Icon" TextConditionalFormatProperty where
  type PropertyType "Icon" TextConditionalFormatProperty = ConditionalFormattingIconProperty
  set newValue TextConditionalFormatProperty {..}
    = TextConditionalFormatProperty {icon = Prelude.pure newValue, ..}
instance Property "TextColor" TextConditionalFormatProperty where
  type PropertyType "TextColor" TextConditionalFormatProperty = ConditionalFormattingColorProperty
  set newValue TextConditionalFormatProperty {..}
    = TextConditionalFormatProperty
        {textColor = Prelude.pure newValue, ..}