module Stratosphere.QuickSight.Analysis.FilledMapShapeConditionalFormattingProperty (
        module Exports, FilledMapShapeConditionalFormattingProperty(..),
        mkFilledMapShapeConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ShapeConditionalFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilledMapShapeConditionalFormattingProperty
  = FilledMapShapeConditionalFormattingProperty {fieldId :: (Value Prelude.Text),
                                                 format :: (Prelude.Maybe ShapeConditionalFormatProperty)}
mkFilledMapShapeConditionalFormattingProperty ::
  Value Prelude.Text -> FilledMapShapeConditionalFormattingProperty
mkFilledMapShapeConditionalFormattingProperty fieldId
  = FilledMapShapeConditionalFormattingProperty
      {fieldId = fieldId, format = Prelude.Nothing}
instance ToResourceProperties FilledMapShapeConditionalFormattingProperty where
  toResourceProperties
    FilledMapShapeConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilledMapShapeConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldId" JSON..= fieldId]
                           (Prelude.catMaybes [(JSON..=) "Format" Prelude.<$> format]))}
instance JSON.ToJSON FilledMapShapeConditionalFormattingProperty where
  toJSON FilledMapShapeConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldId" JSON..= fieldId]
              (Prelude.catMaybes [(JSON..=) "Format" Prelude.<$> format])))
instance Property "FieldId" FilledMapShapeConditionalFormattingProperty where
  type PropertyType "FieldId" FilledMapShapeConditionalFormattingProperty = Value Prelude.Text
  set newValue FilledMapShapeConditionalFormattingProperty {..}
    = FilledMapShapeConditionalFormattingProperty
        {fieldId = newValue, ..}
instance Property "Format" FilledMapShapeConditionalFormattingProperty where
  type PropertyType "Format" FilledMapShapeConditionalFormattingProperty = ShapeConditionalFormatProperty
  set newValue FilledMapShapeConditionalFormattingProperty {..}
    = FilledMapShapeConditionalFormattingProperty
        {format = Prelude.pure newValue, ..}