module Stratosphere.QuickSight.Template.SliderControlDisplayOptionsProperty (
        module Exports, SliderControlDisplayOptionsProperty(..),
        mkSliderControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SheetControlInfoIconLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
data SliderControlDisplayOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-slidercontroldisplayoptions.html>
    SliderControlDisplayOptionsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-slidercontroldisplayoptions.html#cfn-quicksight-template-slidercontroldisplayoptions-infoiconlabeloptions>
                                         infoIconLabelOptions :: (Prelude.Maybe SheetControlInfoIconLabelOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-slidercontroldisplayoptions.html#cfn-quicksight-template-slidercontroldisplayoptions-titleoptions>
                                         titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSliderControlDisplayOptionsProperty ::
  SliderControlDisplayOptionsProperty
mkSliderControlDisplayOptionsProperty
  = SliderControlDisplayOptionsProperty
      {haddock_workaround_ = (), infoIconLabelOptions = Prelude.Nothing,
       titleOptions = Prelude.Nothing}
instance ToResourceProperties SliderControlDisplayOptionsProperty where
  toResourceProperties SliderControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SliderControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON SliderControlDisplayOptionsProperty where
  toJSON SliderControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "InfoIconLabelOptions" SliderControlDisplayOptionsProperty where
  type PropertyType "InfoIconLabelOptions" SliderControlDisplayOptionsProperty = SheetControlInfoIconLabelOptionsProperty
  set newValue SliderControlDisplayOptionsProperty {..}
    = SliderControlDisplayOptionsProperty
        {infoIconLabelOptions = Prelude.pure newValue, ..}
instance Property "TitleOptions" SliderControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" SliderControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue SliderControlDisplayOptionsProperty {..}
    = SliderControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}