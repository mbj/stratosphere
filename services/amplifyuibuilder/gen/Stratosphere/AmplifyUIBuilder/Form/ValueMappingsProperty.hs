module Stratosphere.AmplifyUIBuilder.Form.ValueMappingsProperty (
        module Exports, ValueMappingsProperty(..), mkValueMappingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FormInputBindingPropertiesValueProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.ValueMappingProperty as Exports
import Stratosphere.ResourceProperties
data ValueMappingsProperty
  = ValueMappingsProperty {bindingProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text FormInputBindingPropertiesValueProperty)),
                           values :: [ValueMappingProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValueMappingsProperty ::
  [ValueMappingProperty] -> ValueMappingsProperty
mkValueMappingsProperty values
  = ValueMappingsProperty
      {values = values, bindingProperties = Prelude.Nothing}
instance ToResourceProperties ValueMappingsProperty where
  toResourceProperties ValueMappingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.ValueMappings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Values" JSON..= values]
                           (Prelude.catMaybes
                              [(JSON..=) "BindingProperties" Prelude.<$> bindingProperties]))}
instance JSON.ToJSON ValueMappingsProperty where
  toJSON ValueMappingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Values" JSON..= values]
              (Prelude.catMaybes
                 [(JSON..=) "BindingProperties" Prelude.<$> bindingProperties])))
instance Property "BindingProperties" ValueMappingsProperty where
  type PropertyType "BindingProperties" ValueMappingsProperty = Prelude.Map Prelude.Text FormInputBindingPropertiesValueProperty
  set newValue ValueMappingsProperty {..}
    = ValueMappingsProperty
        {bindingProperties = Prelude.pure newValue, ..}
instance Property "Values" ValueMappingsProperty where
  type PropertyType "Values" ValueMappingsProperty = [ValueMappingProperty]
  set newValue ValueMappingsProperty {..}
    = ValueMappingsProperty {values = newValue, ..}