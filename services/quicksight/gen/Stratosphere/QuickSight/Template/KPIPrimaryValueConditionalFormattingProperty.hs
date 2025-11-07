module Stratosphere.QuickSight.Template.KPIPrimaryValueConditionalFormattingProperty (
        module Exports, KPIPrimaryValueConditionalFormattingProperty(..),
        mkKPIPrimaryValueConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ConditionalFormattingColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ConditionalFormattingIconProperty as Exports
import Stratosphere.ResourceProperties
data KPIPrimaryValueConditionalFormattingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiprimaryvalueconditionalformatting.html>
    KPIPrimaryValueConditionalFormattingProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiprimaryvalueconditionalformatting.html#cfn-quicksight-template-kpiprimaryvalueconditionalformatting-icon>
                                                  icon :: (Prelude.Maybe ConditionalFormattingIconProperty),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiprimaryvalueconditionalformatting.html#cfn-quicksight-template-kpiprimaryvalueconditionalformatting-textcolor>
                                                  textColor :: (Prelude.Maybe ConditionalFormattingColorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIPrimaryValueConditionalFormattingProperty ::
  KPIPrimaryValueConditionalFormattingProperty
mkKPIPrimaryValueConditionalFormattingProperty
  = KPIPrimaryValueConditionalFormattingProperty
      {haddock_workaround_ = (), icon = Prelude.Nothing,
       textColor = Prelude.Nothing}
instance ToResourceProperties KPIPrimaryValueConditionalFormattingProperty where
  toResourceProperties
    KPIPrimaryValueConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.KPIPrimaryValueConditionalFormatting",
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