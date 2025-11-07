module Stratosphere.QuickSight.Template.FilledMapShapeConditionalFormattingProperty (
        module Exports, FilledMapShapeConditionalFormattingProperty(..),
        mkFilledMapShapeConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ShapeConditionalFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilledMapShapeConditionalFormattingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapshapeconditionalformatting.html>
    FilledMapShapeConditionalFormattingProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapshapeconditionalformatting.html#cfn-quicksight-template-filledmapshapeconditionalformatting-fieldid>
                                                 fieldId :: (Value Prelude.Text),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapshapeconditionalformatting.html#cfn-quicksight-template-filledmapshapeconditionalformatting-format>
                                                 format :: (Prelude.Maybe ShapeConditionalFormatProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilledMapShapeConditionalFormattingProperty ::
  Value Prelude.Text -> FilledMapShapeConditionalFormattingProperty
mkFilledMapShapeConditionalFormattingProperty fieldId
  = FilledMapShapeConditionalFormattingProperty
      {haddock_workaround_ = (), fieldId = fieldId,
       format = Prelude.Nothing}
instance ToResourceProperties FilledMapShapeConditionalFormattingProperty where
  toResourceProperties
    FilledMapShapeConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FilledMapShapeConditionalFormatting",
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