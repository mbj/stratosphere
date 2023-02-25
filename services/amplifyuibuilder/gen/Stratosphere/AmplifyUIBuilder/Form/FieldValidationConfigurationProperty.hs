module Stratosphere.AmplifyUIBuilder.Form.FieldValidationConfigurationProperty (
        FieldValidationConfigurationProperty(..),
        mkFieldValidationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldValidationConfigurationProperty
  = FieldValidationConfigurationProperty {numValues :: (Prelude.Maybe (ValueList (Value Prelude.Double))),
                                          strValues :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                          type' :: (Value Prelude.Text),
                                          validationMessage :: (Prelude.Maybe (Value Prelude.Text))}
mkFieldValidationConfigurationProperty ::
  Value Prelude.Text -> FieldValidationConfigurationProperty
mkFieldValidationConfigurationProperty type'
  = FieldValidationConfigurationProperty
      {type' = type', numValues = Prelude.Nothing,
       strValues = Prelude.Nothing, validationMessage = Prelude.Nothing}
instance ToResourceProperties FieldValidationConfigurationProperty where
  toResourceProperties FieldValidationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FieldValidationConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "NumValues" Prelude.<$> numValues,
                               (JSON..=) "StrValues" Prelude.<$> strValues,
                               (JSON..=) "ValidationMessage" Prelude.<$> validationMessage]))}
instance JSON.ToJSON FieldValidationConfigurationProperty where
  toJSON FieldValidationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "NumValues" Prelude.<$> numValues,
                  (JSON..=) "StrValues" Prelude.<$> strValues,
                  (JSON..=) "ValidationMessage" Prelude.<$> validationMessage])))
instance Property "NumValues" FieldValidationConfigurationProperty where
  type PropertyType "NumValues" FieldValidationConfigurationProperty = ValueList (Value Prelude.Double)
  set newValue FieldValidationConfigurationProperty {..}
    = FieldValidationConfigurationProperty
        {numValues = Prelude.pure newValue, ..}
instance Property "StrValues" FieldValidationConfigurationProperty where
  type PropertyType "StrValues" FieldValidationConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue FieldValidationConfigurationProperty {..}
    = FieldValidationConfigurationProperty
        {strValues = Prelude.pure newValue, ..}
instance Property "Type" FieldValidationConfigurationProperty where
  type PropertyType "Type" FieldValidationConfigurationProperty = Value Prelude.Text
  set newValue FieldValidationConfigurationProperty {..}
    = FieldValidationConfigurationProperty {type' = newValue, ..}
instance Property "ValidationMessage" FieldValidationConfigurationProperty where
  type PropertyType "ValidationMessage" FieldValidationConfigurationProperty = Value Prelude.Text
  set newValue FieldValidationConfigurationProperty {..}
    = FieldValidationConfigurationProperty
        {validationMessage = Prelude.pure newValue, ..}