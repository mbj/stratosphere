module Stratosphere.QuickSight.Template.TextAreaControlDisplayOptionsProperty (
        module Exports, TextAreaControlDisplayOptionsProperty(..),
        mkTextAreaControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SheetControlInfoIconLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TextControlPlaceholderOptionsProperty as Exports
import Stratosphere.ResourceProperties
data TextAreaControlDisplayOptionsProperty
  = TextAreaControlDisplayOptionsProperty {infoIconLabelOptions :: (Prelude.Maybe SheetControlInfoIconLabelOptionsProperty),
                                           placeholderOptions :: (Prelude.Maybe TextControlPlaceholderOptionsProperty),
                                           titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextAreaControlDisplayOptionsProperty ::
  TextAreaControlDisplayOptionsProperty
mkTextAreaControlDisplayOptionsProperty
  = TextAreaControlDisplayOptionsProperty
      {infoIconLabelOptions = Prelude.Nothing,
       placeholderOptions = Prelude.Nothing,
       titleOptions = Prelude.Nothing}
instance ToResourceProperties TextAreaControlDisplayOptionsProperty where
  toResourceProperties TextAreaControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TextAreaControlDisplayOptions",
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