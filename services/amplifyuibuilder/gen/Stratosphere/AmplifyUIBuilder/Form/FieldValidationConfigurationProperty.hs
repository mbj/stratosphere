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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldvalidationconfiguration.html>
    FieldValidationConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldvalidationconfiguration.html#cfn-amplifyuibuilder-form-fieldvalidationconfiguration-numvalues>
                                          numValues :: (Prelude.Maybe (ValueList Prelude.Double)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldvalidationconfiguration.html#cfn-amplifyuibuilder-form-fieldvalidationconfiguration-strvalues>
                                          strValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldvalidationconfiguration.html#cfn-amplifyuibuilder-form-fieldvalidationconfiguration-type>
                                          type' :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldvalidationconfiguration.html#cfn-amplifyuibuilder-form-fieldvalidationconfiguration-validationmessage>
                                          validationMessage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldValidationConfigurationProperty ::
  Value Prelude.Text -> FieldValidationConfigurationProperty
mkFieldValidationConfigurationProperty type'
  = FieldValidationConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       numValues = Prelude.Nothing, strValues = Prelude.Nothing,
       validationMessage = Prelude.Nothing}
instance ToResourceProperties FieldValidationConfigurationProperty where
  toResourceProperties FieldValidationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FieldValidationConfiguration",
         supportsTags = Prelude.False,
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
  type PropertyType "NumValues" FieldValidationConfigurationProperty = ValueList Prelude.Double
  set newValue FieldValidationConfigurationProperty {..}
    = FieldValidationConfigurationProperty
        {numValues = Prelude.pure newValue, ..}
instance Property "StrValues" FieldValidationConfigurationProperty where
  type PropertyType "StrValues" FieldValidationConfigurationProperty = ValueList Prelude.Text
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