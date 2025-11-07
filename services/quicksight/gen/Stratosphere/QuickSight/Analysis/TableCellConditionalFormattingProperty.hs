module Stratosphere.QuickSight.Analysis.TableCellConditionalFormattingProperty (
        module Exports, TableCellConditionalFormattingProperty(..),
        mkTableCellConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TextConditionalFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableCellConditionalFormattingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellconditionalformatting.html>
    TableCellConditionalFormattingProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellconditionalformatting.html#cfn-quicksight-analysis-tablecellconditionalformatting-fieldid>
                                            fieldId :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellconditionalformatting.html#cfn-quicksight-analysis-tablecellconditionalformatting-textformat>
                                            textFormat :: (Prelude.Maybe TextConditionalFormatProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableCellConditionalFormattingProperty ::
  Value Prelude.Text -> TableCellConditionalFormattingProperty
mkTableCellConditionalFormattingProperty fieldId
  = TableCellConditionalFormattingProperty
      {haddock_workaround_ = (), fieldId = fieldId,
       textFormat = Prelude.Nothing}
instance ToResourceProperties TableCellConditionalFormattingProperty where
  toResourceProperties TableCellConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableCellConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "TextFormat" Prelude.<$> textFormat]))}
instance JSON.ToJSON TableCellConditionalFormattingProperty where
  toJSON TableCellConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "TextFormat" Prelude.<$> textFormat])))
instance Property "FieldId" TableCellConditionalFormattingProperty where
  type PropertyType "FieldId" TableCellConditionalFormattingProperty = Value Prelude.Text
  set newValue TableCellConditionalFormattingProperty {..}
    = TableCellConditionalFormattingProperty {fieldId = newValue, ..}
instance Property "TextFormat" TableCellConditionalFormattingProperty where
  type PropertyType "TextFormat" TableCellConditionalFormattingProperty = TextConditionalFormatProperty
  set newValue TableCellConditionalFormattingProperty {..}
    = TableCellConditionalFormattingProperty
        {textFormat = Prelude.pure newValue, ..}