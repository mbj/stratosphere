module Stratosphere.QuickSight.Dashboard.ParameterTextFieldControlProperty (
        module Exports, ParameterTextFieldControlProperty(..),
        mkParameterTextFieldControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TextFieldControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterTextFieldControlProperty
  = ParameterTextFieldControlProperty {displayOptions :: (Prelude.Maybe TextFieldControlDisplayOptionsProperty),
                                       parameterControlId :: (Value Prelude.Text),
                                       sourceParameterName :: (Value Prelude.Text),
                                       title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterTextFieldControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ParameterTextFieldControlProperty
mkParameterTextFieldControlProperty
  parameterControlId
  sourceParameterName
  title
  = ParameterTextFieldControlProperty
      {parameterControlId = parameterControlId,
       sourceParameterName = sourceParameterName, title = title,
       displayOptions = Prelude.Nothing}
instance ToResourceProperties ParameterTextFieldControlProperty where
  toResourceProperties ParameterTextFieldControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ParameterTextFieldControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParameterControlId" JSON..= parameterControlId,
                            "SourceParameterName" JSON..= sourceParameterName,
                            "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))}
instance JSON.ToJSON ParameterTextFieldControlProperty where
  toJSON ParameterTextFieldControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParameterControlId" JSON..= parameterControlId,
               "SourceParameterName" JSON..= sourceParameterName,
               "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions])))
instance Property "DisplayOptions" ParameterTextFieldControlProperty where
  type PropertyType "DisplayOptions" ParameterTextFieldControlProperty = TextFieldControlDisplayOptionsProperty
  set newValue ParameterTextFieldControlProperty {..}
    = ParameterTextFieldControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "ParameterControlId" ParameterTextFieldControlProperty where
  type PropertyType "ParameterControlId" ParameterTextFieldControlProperty = Value Prelude.Text
  set newValue ParameterTextFieldControlProperty {..}
    = ParameterTextFieldControlProperty
        {parameterControlId = newValue, ..}
instance Property "SourceParameterName" ParameterTextFieldControlProperty where
  type PropertyType "SourceParameterName" ParameterTextFieldControlProperty = Value Prelude.Text
  set newValue ParameterTextFieldControlProperty {..}
    = ParameterTextFieldControlProperty
        {sourceParameterName = newValue, ..}
instance Property "Title" ParameterTextFieldControlProperty where
  type PropertyType "Title" ParameterTextFieldControlProperty = Value Prelude.Text
  set newValue ParameterTextFieldControlProperty {..}
    = ParameterTextFieldControlProperty {title = newValue, ..}