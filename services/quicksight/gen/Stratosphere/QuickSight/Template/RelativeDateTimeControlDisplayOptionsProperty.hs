module Stratosphere.QuickSight.Template.RelativeDateTimeControlDisplayOptionsProperty (
        module Exports, RelativeDateTimeControlDisplayOptionsProperty(..),
        mkRelativeDateTimeControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SheetControlInfoIconLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelativeDateTimeControlDisplayOptionsProperty
  = RelativeDateTimeControlDisplayOptionsProperty {dateTimeFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                                   infoIconLabelOptions :: (Prelude.Maybe SheetControlInfoIconLabelOptionsProperty),
                                                   titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRelativeDateTimeControlDisplayOptionsProperty ::
  RelativeDateTimeControlDisplayOptionsProperty
mkRelativeDateTimeControlDisplayOptionsProperty
  = RelativeDateTimeControlDisplayOptionsProperty
      {dateTimeFormat = Prelude.Nothing,
       infoIconLabelOptions = Prelude.Nothing,
       titleOptions = Prelude.Nothing}
instance ToResourceProperties RelativeDateTimeControlDisplayOptionsProperty where
  toResourceProperties
    RelativeDateTimeControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.RelativeDateTimeControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
                            (JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON RelativeDateTimeControlDisplayOptionsProperty where
  toJSON RelativeDateTimeControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
               (JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "DateTimeFormat" RelativeDateTimeControlDisplayOptionsProperty where
  type PropertyType "DateTimeFormat" RelativeDateTimeControlDisplayOptionsProperty = Value Prelude.Text
  set newValue RelativeDateTimeControlDisplayOptionsProperty {..}
    = RelativeDateTimeControlDisplayOptionsProperty
        {dateTimeFormat = Prelude.pure newValue, ..}
instance Property "InfoIconLabelOptions" RelativeDateTimeControlDisplayOptionsProperty where
  type PropertyType "InfoIconLabelOptions" RelativeDateTimeControlDisplayOptionsProperty = SheetControlInfoIconLabelOptionsProperty
  set newValue RelativeDateTimeControlDisplayOptionsProperty {..}
    = RelativeDateTimeControlDisplayOptionsProperty
        {infoIconLabelOptions = Prelude.pure newValue, ..}
instance Property "TitleOptions" RelativeDateTimeControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" RelativeDateTimeControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue RelativeDateTimeControlDisplayOptionsProperty {..}
    = RelativeDateTimeControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}