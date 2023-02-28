module Stratosphere.AmplifyUIBuilder.Form.ValueMappingProperty (
        module Exports, ValueMappingProperty(..), mkValueMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FormInputValuePropertyProperty as Exports
import Stratosphere.ResourceProperties
data ValueMappingProperty
  = ValueMappingProperty {displayValue :: (Prelude.Maybe FormInputValuePropertyProperty),
                          value :: FormInputValuePropertyProperty}
mkValueMappingProperty ::
  FormInputValuePropertyProperty -> ValueMappingProperty
mkValueMappingProperty value
  = ValueMappingProperty
      {value = value, displayValue = Prelude.Nothing}
instance ToResourceProperties ValueMappingProperty where
  toResourceProperties ValueMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.ValueMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Value" JSON..= value]
                           (Prelude.catMaybes
                              [(JSON..=) "DisplayValue" Prelude.<$> displayValue]))}
instance JSON.ToJSON ValueMappingProperty where
  toJSON ValueMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Value" JSON..= value]
              (Prelude.catMaybes
                 [(JSON..=) "DisplayValue" Prelude.<$> displayValue])))
instance Property "DisplayValue" ValueMappingProperty where
  type PropertyType "DisplayValue" ValueMappingProperty = FormInputValuePropertyProperty
  set newValue ValueMappingProperty {..}
    = ValueMappingProperty {displayValue = Prelude.pure newValue, ..}
instance Property "Value" ValueMappingProperty where
  type PropertyType "Value" ValueMappingProperty = FormInputValuePropertyProperty
  set newValue ValueMappingProperty {..}
    = ValueMappingProperty {value = newValue, ..}