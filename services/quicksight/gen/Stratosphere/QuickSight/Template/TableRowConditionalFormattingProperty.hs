module Stratosphere.QuickSight.Template.TableRowConditionalFormattingProperty (
        module Exports, TableRowConditionalFormattingProperty(..),
        mkTableRowConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ConditionalFormattingColorProperty as Exports
import Stratosphere.ResourceProperties
data TableRowConditionalFormattingProperty
  = TableRowConditionalFormattingProperty {backgroundColor :: (Prelude.Maybe ConditionalFormattingColorProperty),
                                           textColor :: (Prelude.Maybe ConditionalFormattingColorProperty)}
mkTableRowConditionalFormattingProperty ::
  TableRowConditionalFormattingProperty
mkTableRowConditionalFormattingProperty
  = TableRowConditionalFormattingProperty
      {backgroundColor = Prelude.Nothing, textColor = Prelude.Nothing}
instance ToResourceProperties TableRowConditionalFormattingProperty where
  toResourceProperties TableRowConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableRowConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON TableRowConditionalFormattingProperty where
  toJSON TableRowConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "BackgroundColor" TableRowConditionalFormattingProperty where
  type PropertyType "BackgroundColor" TableRowConditionalFormattingProperty = ConditionalFormattingColorProperty
  set newValue TableRowConditionalFormattingProperty {..}
    = TableRowConditionalFormattingProperty
        {backgroundColor = Prelude.pure newValue, ..}
instance Property "TextColor" TableRowConditionalFormattingProperty where
  type PropertyType "TextColor" TableRowConditionalFormattingProperty = ConditionalFormattingColorProperty
  set newValue TableRowConditionalFormattingProperty {..}
    = TableRowConditionalFormattingProperty
        {textColor = Prelude.pure newValue, ..}