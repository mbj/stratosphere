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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-textconditionalformat.html>
    TextConditionalFormatProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-textconditionalformat.html#cfn-quicksight-dashboard-textconditionalformat-backgroundcolor>
                                   backgroundColor :: (Prelude.Maybe ConditionalFormattingColorProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-textconditionalformat.html#cfn-quicksight-dashboard-textconditionalformat-icon>
                                   icon :: (Prelude.Maybe ConditionalFormattingIconProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-textconditionalformat.html#cfn-quicksight-dashboard-textconditionalformat-textcolor>
                                   textColor :: (Prelude.Maybe ConditionalFormattingColorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextConditionalFormatProperty :: TextConditionalFormatProperty
mkTextConditionalFormatProperty
  = TextConditionalFormatProperty
      {haddock_workaround_ = (), backgroundColor = Prelude.Nothing,
       icon = Prelude.Nothing, textColor = Prelude.Nothing}
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