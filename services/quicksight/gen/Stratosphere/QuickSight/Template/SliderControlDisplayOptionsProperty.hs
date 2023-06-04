module Stratosphere.QuickSight.Template.SliderControlDisplayOptionsProperty (
        module Exports, SliderControlDisplayOptionsProperty(..),
        mkSliderControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
data SliderControlDisplayOptionsProperty
  = SliderControlDisplayOptionsProperty {titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
mkSliderControlDisplayOptionsProperty ::
  SliderControlDisplayOptionsProperty
mkSliderControlDisplayOptionsProperty
  = SliderControlDisplayOptionsProperty
      {titleOptions = Prelude.Nothing}
instance ToResourceProperties SliderControlDisplayOptionsProperty where
  toResourceProperties SliderControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SliderControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON SliderControlDisplayOptionsProperty where
  toJSON SliderControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "TitleOptions" SliderControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" SliderControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue SliderControlDisplayOptionsProperty {}
    = SliderControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}