module Stratosphere.AmplifyUIBuilder.Form.FormInputValuePropertyProperty (
        module Exports, FormInputValuePropertyProperty(..),
        mkFormInputValuePropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FormInputValuePropertyBindingPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormInputValuePropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-forminputvalueproperty.html>
    FormInputValuePropertyProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-forminputvalueproperty.html#cfn-amplifyuibuilder-form-forminputvalueproperty-bindingproperties>
                                    bindingProperties :: (Prelude.Maybe FormInputValuePropertyBindingPropertiesProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-forminputvalueproperty.html#cfn-amplifyuibuilder-form-forminputvalueproperty-concat>
                                    concat :: (Prelude.Maybe [FormInputValuePropertyProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-forminputvalueproperty.html#cfn-amplifyuibuilder-form-forminputvalueproperty-value>
                                    value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormInputValuePropertyProperty :: FormInputValuePropertyProperty
mkFormInputValuePropertyProperty
  = FormInputValuePropertyProperty
      {haddock_workaround_ = (), bindingProperties = Prelude.Nothing,
       concat = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties FormInputValuePropertyProperty where
  toResourceProperties FormInputValuePropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormInputValueProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BindingProperties" Prelude.<$> bindingProperties,
                            (JSON..=) "Concat" Prelude.<$> concat,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON FormInputValuePropertyProperty where
  toJSON FormInputValuePropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BindingProperties" Prelude.<$> bindingProperties,
               (JSON..=) "Concat" Prelude.<$> concat,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "BindingProperties" FormInputValuePropertyProperty where
  type PropertyType "BindingProperties" FormInputValuePropertyProperty = FormInputValuePropertyBindingPropertiesProperty
  set newValue FormInputValuePropertyProperty {..}
    = FormInputValuePropertyProperty
        {bindingProperties = Prelude.pure newValue, ..}
instance Property "Concat" FormInputValuePropertyProperty where
  type PropertyType "Concat" FormInputValuePropertyProperty = [FormInputValuePropertyProperty]
  set newValue FormInputValuePropertyProperty {..}
    = FormInputValuePropertyProperty
        {concat = Prelude.pure newValue, ..}
instance Property "Value" FormInputValuePropertyProperty where
  type PropertyType "Value" FormInputValuePropertyProperty = Value Prelude.Text
  set newValue FormInputValuePropertyProperty {..}
    = FormInputValuePropertyProperty
        {value = Prelude.pure newValue, ..}