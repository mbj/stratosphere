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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablerowconditionalformatting.html>
    TableRowConditionalFormattingProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablerowconditionalformatting.html#cfn-quicksight-template-tablerowconditionalformatting-backgroundcolor>
                                           backgroundColor :: (Prelude.Maybe ConditionalFormattingColorProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablerowconditionalformatting.html#cfn-quicksight-template-tablerowconditionalformatting-textcolor>
                                           textColor :: (Prelude.Maybe ConditionalFormattingColorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableRowConditionalFormattingProperty ::
  TableRowConditionalFormattingProperty
mkTableRowConditionalFormattingProperty
  = TableRowConditionalFormattingProperty
      {haddock_workaround_ = (), backgroundColor = Prelude.Nothing,
       textColor = Prelude.Nothing}
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