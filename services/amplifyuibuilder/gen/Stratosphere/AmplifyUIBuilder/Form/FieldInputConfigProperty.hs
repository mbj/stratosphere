module Stratosphere.AmplifyUIBuilder.Form.FieldInputConfigProperty (
        module Exports, FieldInputConfigProperty(..),
        mkFieldInputConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FileUploaderFieldConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.ValueMappingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldInputConfigProperty
  = FieldInputConfigProperty {defaultChecked :: (Prelude.Maybe (Value Prelude.Bool)),
                              defaultCountryCode :: (Prelude.Maybe (Value Prelude.Text)),
                              defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                              descriptiveText :: (Prelude.Maybe (Value Prelude.Text)),
                              fileUploaderConfig :: (Prelude.Maybe FileUploaderFieldConfigProperty),
                              isArray :: (Prelude.Maybe (Value Prelude.Bool)),
                              maxValue :: (Prelude.Maybe (Value Prelude.Double)),
                              minValue :: (Prelude.Maybe (Value Prelude.Double)),
                              name :: (Prelude.Maybe (Value Prelude.Text)),
                              placeholder :: (Prelude.Maybe (Value Prelude.Text)),
                              readOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                              required :: (Prelude.Maybe (Value Prelude.Bool)),
                              step :: (Prelude.Maybe (Value Prelude.Double)),
                              type' :: (Value Prelude.Text),
                              value :: (Prelude.Maybe (Value Prelude.Text)),
                              valueMappings :: (Prelude.Maybe ValueMappingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldInputConfigProperty ::
  Value Prelude.Text -> FieldInputConfigProperty
mkFieldInputConfigProperty type'
  = FieldInputConfigProperty
      {type' = type', defaultChecked = Prelude.Nothing,
       defaultCountryCode = Prelude.Nothing,
       defaultValue = Prelude.Nothing, descriptiveText = Prelude.Nothing,
       fileUploaderConfig = Prelude.Nothing, isArray = Prelude.Nothing,
       maxValue = Prelude.Nothing, minValue = Prelude.Nothing,
       name = Prelude.Nothing, placeholder = Prelude.Nothing,
       readOnly = Prelude.Nothing, required = Prelude.Nothing,
       step = Prelude.Nothing, value = Prelude.Nothing,
       valueMappings = Prelude.Nothing}
instance ToResourceProperties FieldInputConfigProperty where
  toResourceProperties FieldInputConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FieldInputConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultChecked" Prelude.<$> defaultChecked,
                               (JSON..=) "DefaultCountryCode" Prelude.<$> defaultCountryCode,
                               (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                               (JSON..=) "DescriptiveText" Prelude.<$> descriptiveText,
                               (JSON..=) "FileUploaderConfig" Prelude.<$> fileUploaderConfig,
                               (JSON..=) "IsArray" Prelude.<$> isArray,
                               (JSON..=) "MaxValue" Prelude.<$> maxValue,
                               (JSON..=) "MinValue" Prelude.<$> minValue,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Placeholder" Prelude.<$> placeholder,
                               (JSON..=) "ReadOnly" Prelude.<$> readOnly,
                               (JSON..=) "Required" Prelude.<$> required,
                               (JSON..=) "Step" Prelude.<$> step,
                               (JSON..=) "Value" Prelude.<$> value,
                               (JSON..=) "ValueMappings" Prelude.<$> valueMappings]))}
instance JSON.ToJSON FieldInputConfigProperty where
  toJSON FieldInputConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "DefaultChecked" Prelude.<$> defaultChecked,
                  (JSON..=) "DefaultCountryCode" Prelude.<$> defaultCountryCode,
                  (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                  (JSON..=) "DescriptiveText" Prelude.<$> descriptiveText,
                  (JSON..=) "FileUploaderConfig" Prelude.<$> fileUploaderConfig,
                  (JSON..=) "IsArray" Prelude.<$> isArray,
                  (JSON..=) "MaxValue" Prelude.<$> maxValue,
                  (JSON..=) "MinValue" Prelude.<$> minValue,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Placeholder" Prelude.<$> placeholder,
                  (JSON..=) "ReadOnly" Prelude.<$> readOnly,
                  (JSON..=) "Required" Prelude.<$> required,
                  (JSON..=) "Step" Prelude.<$> step,
                  (JSON..=) "Value" Prelude.<$> value,
                  (JSON..=) "ValueMappings" Prelude.<$> valueMappings])))
instance Property "DefaultChecked" FieldInputConfigProperty where
  type PropertyType "DefaultChecked" FieldInputConfigProperty = Value Prelude.Bool
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty
        {defaultChecked = Prelude.pure newValue, ..}
instance Property "DefaultCountryCode" FieldInputConfigProperty where
  type PropertyType "DefaultCountryCode" FieldInputConfigProperty = Value Prelude.Text
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty
        {defaultCountryCode = Prelude.pure newValue, ..}
instance Property "DefaultValue" FieldInputConfigProperty where
  type PropertyType "DefaultValue" FieldInputConfigProperty = Value Prelude.Text
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty
        {defaultValue = Prelude.pure newValue, ..}
instance Property "DescriptiveText" FieldInputConfigProperty where
  type PropertyType "DescriptiveText" FieldInputConfigProperty = Value Prelude.Text
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty
        {descriptiveText = Prelude.pure newValue, ..}
instance Property "FileUploaderConfig" FieldInputConfigProperty where
  type PropertyType "FileUploaderConfig" FieldInputConfigProperty = FileUploaderFieldConfigProperty
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty
        {fileUploaderConfig = Prelude.pure newValue, ..}
instance Property "IsArray" FieldInputConfigProperty where
  type PropertyType "IsArray" FieldInputConfigProperty = Value Prelude.Bool
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty {isArray = Prelude.pure newValue, ..}
instance Property "MaxValue" FieldInputConfigProperty where
  type PropertyType "MaxValue" FieldInputConfigProperty = Value Prelude.Double
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty {maxValue = Prelude.pure newValue, ..}
instance Property "MinValue" FieldInputConfigProperty where
  type PropertyType "MinValue" FieldInputConfigProperty = Value Prelude.Double
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty {minValue = Prelude.pure newValue, ..}
instance Property "Name" FieldInputConfigProperty where
  type PropertyType "Name" FieldInputConfigProperty = Value Prelude.Text
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty {name = Prelude.pure newValue, ..}
instance Property "Placeholder" FieldInputConfigProperty where
  type PropertyType "Placeholder" FieldInputConfigProperty = Value Prelude.Text
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty
        {placeholder = Prelude.pure newValue, ..}
instance Property "ReadOnly" FieldInputConfigProperty where
  type PropertyType "ReadOnly" FieldInputConfigProperty = Value Prelude.Bool
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty {readOnly = Prelude.pure newValue, ..}
instance Property "Required" FieldInputConfigProperty where
  type PropertyType "Required" FieldInputConfigProperty = Value Prelude.Bool
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty {required = Prelude.pure newValue, ..}
instance Property "Step" FieldInputConfigProperty where
  type PropertyType "Step" FieldInputConfigProperty = Value Prelude.Double
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty {step = Prelude.pure newValue, ..}
instance Property "Type" FieldInputConfigProperty where
  type PropertyType "Type" FieldInputConfigProperty = Value Prelude.Text
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty {type' = newValue, ..}
instance Property "Value" FieldInputConfigProperty where
  type PropertyType "Value" FieldInputConfigProperty = Value Prelude.Text
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty {value = Prelude.pure newValue, ..}
instance Property "ValueMappings" FieldInputConfigProperty where
  type PropertyType "ValueMappings" FieldInputConfigProperty = ValueMappingsProperty
  set newValue FieldInputConfigProperty {..}
    = FieldInputConfigProperty
        {valueMappings = Prelude.pure newValue, ..}