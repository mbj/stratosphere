module Stratosphere.QuickSight.Analysis.TextAreaControlDisplayOptionsProperty (
        module Exports, TextAreaControlDisplayOptionsProperty(..),
        mkTextAreaControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetControlInfoIconLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TextControlPlaceholderOptionsProperty as Exports
import Stratosphere.ResourceProperties
data TextAreaControlDisplayOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-textareacontroldisplayoptions.html>
    TextAreaControlDisplayOptionsProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-textareacontroldisplayoptions.html#cfn-quicksight-analysis-textareacontroldisplayoptions-infoiconlabeloptions>
                                           infoIconLabelOptions :: (Prelude.Maybe SheetControlInfoIconLabelOptionsProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-textareacontroldisplayoptions.html#cfn-quicksight-analysis-textareacontroldisplayoptions-placeholderoptions>
                                           placeholderOptions :: (Prelude.Maybe TextControlPlaceholderOptionsProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-textareacontroldisplayoptions.html#cfn-quicksight-analysis-textareacontroldisplayoptions-titleoptions>
                                           titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextAreaControlDisplayOptionsProperty ::
  TextAreaControlDisplayOptionsProperty
mkTextAreaControlDisplayOptionsProperty
  = TextAreaControlDisplayOptionsProperty
      {haddock_workaround_ = (), infoIconLabelOptions = Prelude.Nothing,
       placeholderOptions = Prelude.Nothing,
       titleOptions = Prelude.Nothing}
instance ToResourceProperties TextAreaControlDisplayOptionsProperty where
  toResourceProperties TextAreaControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TextAreaControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
                            (JSON..=) "PlaceholderOptions" Prelude.<$> placeholderOptions,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON TextAreaControlDisplayOptionsProperty where
  toJSON TextAreaControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
               (JSON..=) "PlaceholderOptions" Prelude.<$> placeholderOptions,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "InfoIconLabelOptions" TextAreaControlDisplayOptionsProperty where
  type PropertyType "InfoIconLabelOptions" TextAreaControlDisplayOptionsProperty = SheetControlInfoIconLabelOptionsProperty
  set newValue TextAreaControlDisplayOptionsProperty {..}
    = TextAreaControlDisplayOptionsProperty
        {infoIconLabelOptions = Prelude.pure newValue, ..}
instance Property "PlaceholderOptions" TextAreaControlDisplayOptionsProperty where
  type PropertyType "PlaceholderOptions" TextAreaControlDisplayOptionsProperty = TextControlPlaceholderOptionsProperty
  set newValue TextAreaControlDisplayOptionsProperty {..}
    = TextAreaControlDisplayOptionsProperty
        {placeholderOptions = Prelude.pure newValue, ..}
instance Property "TitleOptions" TextAreaControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" TextAreaControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue TextAreaControlDisplayOptionsProperty {..}
    = TextAreaControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}