module Stratosphere.QuickSight.Template.ParameterTextAreaControlProperty (
        module Exports, ParameterTextAreaControlProperty(..),
        mkParameterTextAreaControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TextAreaControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterTextAreaControlProperty
  = ParameterTextAreaControlProperty {delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                                      displayOptions :: (Prelude.Maybe TextAreaControlDisplayOptionsProperty),
                                      parameterControlId :: (Value Prelude.Text),
                                      sourceParameterName :: (Value Prelude.Text),
                                      title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterTextAreaControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ParameterTextAreaControlProperty
mkParameterTextAreaControlProperty
  parameterControlId
  sourceParameterName
  title
  = ParameterTextAreaControlProperty
      {parameterControlId = parameterControlId,
       sourceParameterName = sourceParameterName, title = title,
       delimiter = Prelude.Nothing, displayOptions = Prelude.Nothing}
instance ToResourceProperties ParameterTextAreaControlProperty where
  toResourceProperties ParameterTextAreaControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ParameterTextAreaControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParameterControlId" JSON..= parameterControlId,
                            "SourceParameterName" JSON..= sourceParameterName,
                            "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))}
instance JSON.ToJSON ParameterTextAreaControlProperty where
  toJSON ParameterTextAreaControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParameterControlId" JSON..= parameterControlId,
               "SourceParameterName" JSON..= sourceParameterName,
               "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions])))
instance Property "Delimiter" ParameterTextAreaControlProperty where
  type PropertyType "Delimiter" ParameterTextAreaControlProperty = Value Prelude.Text
  set newValue ParameterTextAreaControlProperty {..}
    = ParameterTextAreaControlProperty
        {delimiter = Prelude.pure newValue, ..}
instance Property "DisplayOptions" ParameterTextAreaControlProperty where
  type PropertyType "DisplayOptions" ParameterTextAreaControlProperty = TextAreaControlDisplayOptionsProperty
  set newValue ParameterTextAreaControlProperty {..}
    = ParameterTextAreaControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "ParameterControlId" ParameterTextAreaControlProperty where
  type PropertyType "ParameterControlId" ParameterTextAreaControlProperty = Value Prelude.Text
  set newValue ParameterTextAreaControlProperty {..}
    = ParameterTextAreaControlProperty
        {parameterControlId = newValue, ..}
instance Property "SourceParameterName" ParameterTextAreaControlProperty where
  type PropertyType "SourceParameterName" ParameterTextAreaControlProperty = Value Prelude.Text
  set newValue ParameterTextAreaControlProperty {..}
    = ParameterTextAreaControlProperty
        {sourceParameterName = newValue, ..}
instance Property "Title" ParameterTextAreaControlProperty where
  type PropertyType "Title" ParameterTextAreaControlProperty = Value Prelude.Text
  set newValue ParameterTextAreaControlProperty {..}
    = ParameterTextAreaControlProperty {title = newValue, ..}