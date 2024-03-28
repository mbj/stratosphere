module Stratosphere.QuickSight.Dashboard.TextFieldControlDisplayOptionsProperty (
        module Exports, TextFieldControlDisplayOptionsProperty(..),
        mkTextFieldControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SheetControlInfoIconLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TextControlPlaceholderOptionsProperty as Exports
import Stratosphere.ResourceProperties
data TextFieldControlDisplayOptionsProperty
  = TextFieldControlDisplayOptionsProperty {infoIconLabelOptions :: (Prelude.Maybe SheetControlInfoIconLabelOptionsProperty),
                                            placeholderOptions :: (Prelude.Maybe TextControlPlaceholderOptionsProperty),
                                            titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextFieldControlDisplayOptionsProperty ::
  TextFieldControlDisplayOptionsProperty
mkTextFieldControlDisplayOptionsProperty
  = TextFieldControlDisplayOptionsProperty
      {infoIconLabelOptions = Prelude.Nothing,
       placeholderOptions = Prelude.Nothing,
       titleOptions = Prelude.Nothing}
instance ToResourceProperties TextFieldControlDisplayOptionsProperty where
  toResourceProperties TextFieldControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TextFieldControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
                            (JSON..=) "PlaceholderOptions" Prelude.<$> placeholderOptions,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON TextFieldControlDisplayOptionsProperty where
  toJSON TextFieldControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
               (JSON..=) "PlaceholderOptions" Prelude.<$> placeholderOptions,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "InfoIconLabelOptions" TextFieldControlDisplayOptionsProperty where
  type PropertyType "InfoIconLabelOptions" TextFieldControlDisplayOptionsProperty = SheetControlInfoIconLabelOptionsProperty
  set newValue TextFieldControlDisplayOptionsProperty {..}
    = TextFieldControlDisplayOptionsProperty
        {infoIconLabelOptions = Prelude.pure newValue, ..}
instance Property "PlaceholderOptions" TextFieldControlDisplayOptionsProperty where
  type PropertyType "PlaceholderOptions" TextFieldControlDisplayOptionsProperty = TextControlPlaceholderOptionsProperty
  set newValue TextFieldControlDisplayOptionsProperty {..}
    = TextFieldControlDisplayOptionsProperty
        {placeholderOptions = Prelude.pure newValue, ..}
instance Property "TitleOptions" TextFieldControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" TextFieldControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue TextFieldControlDisplayOptionsProperty {..}
    = TextFieldControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}