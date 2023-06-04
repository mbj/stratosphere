module Stratosphere.QuickSight.Template.ParameterDateTimePickerControlProperty (
        module Exports, ParameterDateTimePickerControlProperty(..),
        mkParameterDateTimePickerControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DateTimePickerControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterDateTimePickerControlProperty
  = ParameterDateTimePickerControlProperty {displayOptions :: (Prelude.Maybe DateTimePickerControlDisplayOptionsProperty),
                                            parameterControlId :: (Value Prelude.Text),
                                            sourceParameterName :: (Value Prelude.Text),
                                            title :: (Value Prelude.Text)}
mkParameterDateTimePickerControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ParameterDateTimePickerControlProperty
mkParameterDateTimePickerControlProperty
  parameterControlId
  sourceParameterName
  title
  = ParameterDateTimePickerControlProperty
      {parameterControlId = parameterControlId,
       sourceParameterName = sourceParameterName, title = title,
       displayOptions = Prelude.Nothing}
instance ToResourceProperties ParameterDateTimePickerControlProperty where
  toResourceProperties ParameterDateTimePickerControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ParameterDateTimePickerControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParameterControlId" JSON..= parameterControlId,
                            "SourceParameterName" JSON..= sourceParameterName,
                            "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))}
instance JSON.ToJSON ParameterDateTimePickerControlProperty where
  toJSON ParameterDateTimePickerControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParameterControlId" JSON..= parameterControlId,
               "SourceParameterName" JSON..= sourceParameterName,
               "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions])))
instance Property "DisplayOptions" ParameterDateTimePickerControlProperty where
  type PropertyType "DisplayOptions" ParameterDateTimePickerControlProperty = DateTimePickerControlDisplayOptionsProperty
  set newValue ParameterDateTimePickerControlProperty {..}
    = ParameterDateTimePickerControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "ParameterControlId" ParameterDateTimePickerControlProperty where
  type PropertyType "ParameterControlId" ParameterDateTimePickerControlProperty = Value Prelude.Text
  set newValue ParameterDateTimePickerControlProperty {..}
    = ParameterDateTimePickerControlProperty
        {parameterControlId = newValue, ..}
instance Property "SourceParameterName" ParameterDateTimePickerControlProperty where
  type PropertyType "SourceParameterName" ParameterDateTimePickerControlProperty = Value Prelude.Text
  set newValue ParameterDateTimePickerControlProperty {..}
    = ParameterDateTimePickerControlProperty
        {sourceParameterName = newValue, ..}
instance Property "Title" ParameterDateTimePickerControlProperty where
  type PropertyType "Title" ParameterDateTimePickerControlProperty = Value Prelude.Text
  set newValue ParameterDateTimePickerControlProperty {..}
    = ParameterDateTimePickerControlProperty {title = newValue, ..}