module Stratosphere.QuickSight.Dashboard.SliderControlDisplayOptionsProperty (
        module Exports, SliderControlDisplayOptionsProperty(..),
        mkSliderControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SheetControlInfoIconLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
data SliderControlDisplayOptionsProperty
  = SliderControlDisplayOptionsProperty {infoIconLabelOptions :: (Prelude.Maybe SheetControlInfoIconLabelOptionsProperty),
                                         titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSliderControlDisplayOptionsProperty ::
  SliderControlDisplayOptionsProperty
mkSliderControlDisplayOptionsProperty
  = SliderControlDisplayOptionsProperty
      {infoIconLabelOptions = Prelude.Nothing,
       titleOptions = Prelude.Nothing}
instance ToResourceProperties SliderControlDisplayOptionsProperty where
  toResourceProperties SliderControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SliderControlDisplayOptions",
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