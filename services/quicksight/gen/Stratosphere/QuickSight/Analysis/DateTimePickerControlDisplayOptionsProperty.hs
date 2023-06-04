module Stratosphere.QuickSight.Analysis.DateTimePickerControlDisplayOptionsProperty (
        module Exports, DateTimePickerControlDisplayOptionsProperty(..),
        mkDateTimePickerControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimePickerControlDisplayOptionsProperty
  = DateTimePickerControlDisplayOptionsProperty {dateTimeFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                                 titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
mkDateTimePickerControlDisplayOptionsProperty ::
  DateTimePickerControlDisplayOptionsProperty
mkDateTimePickerControlDisplayOptionsProperty
  = DateTimePickerControlDisplayOptionsProperty
      {dateTimeFormat = Prelude.Nothing, titleOptions = Prelude.Nothing}
instance ToResourceProperties DateTimePickerControlDisplayOptionsProperty where
  toResourceProperties
    DateTimePickerControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DateTimePickerControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON DateTimePickerControlDisplayOptionsProperty where
  toJSON DateTimePickerControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "DateTimeFormat" DateTimePickerControlDisplayOptionsProperty where
  type PropertyType "DateTimeFormat" DateTimePickerControlDisplayOptionsProperty = Value Prelude.Text
  set newValue DateTimePickerControlDisplayOptionsProperty {..}
    = DateTimePickerControlDisplayOptionsProperty
        {dateTimeFormat = Prelude.pure newValue, ..}
instance Property "TitleOptions" DateTimePickerControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" DateTimePickerControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue DateTimePickerControlDisplayOptionsProperty {..}
    = DateTimePickerControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}