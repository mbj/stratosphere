module Stratosphere.AmplifyUIBuilder.Form.FormInputBindingPropertiesValueProperty (
        module Exports, FormInputBindingPropertiesValueProperty(..),
        mkFormInputBindingPropertiesValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FormInputBindingPropertiesValuePropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormInputBindingPropertiesValueProperty
  = FormInputBindingPropertiesValueProperty {bindingProperties :: (Prelude.Maybe FormInputBindingPropertiesValuePropertiesProperty),
                                             type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormInputBindingPropertiesValueProperty ::
  FormInputBindingPropertiesValueProperty
mkFormInputBindingPropertiesValueProperty
  = FormInputBindingPropertiesValueProperty
      {bindingProperties = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties FormInputBindingPropertiesValueProperty where
  toResourceProperties FormInputBindingPropertiesValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormInputBindingPropertiesValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BindingProperties" Prelude.<$> bindingProperties,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON FormInputBindingPropertiesValueProperty where
  toJSON FormInputBindingPropertiesValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BindingProperties" Prelude.<$> bindingProperties,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "BindingProperties" FormInputBindingPropertiesValueProperty where
  type PropertyType "BindingProperties" FormInputBindingPropertiesValueProperty = FormInputBindingPropertiesValuePropertiesProperty
  set newValue FormInputBindingPropertiesValueProperty {..}
    = FormInputBindingPropertiesValueProperty
        {bindingProperties = Prelude.pure newValue, ..}
instance Property "Type" FormInputBindingPropertiesValueProperty where
  type PropertyType "Type" FormInputBindingPropertiesValueProperty = Value Prelude.Text
  set newValue FormInputBindingPropertiesValueProperty {..}
    = FormInputBindingPropertiesValueProperty
        {type' = Prelude.pure newValue, ..}