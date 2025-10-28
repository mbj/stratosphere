module Stratosphere.AmplifyUIBuilder.Form.FormInputValuePropertyBindingPropertiesProperty (
        FormInputValuePropertyBindingPropertiesProperty(..),
        mkFormInputValuePropertyBindingPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormInputValuePropertyBindingPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-forminputvaluepropertybindingproperties.html>
    FormInputValuePropertyBindingPropertiesProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-forminputvaluepropertybindingproperties.html#cfn-amplifyuibuilder-form-forminputvaluepropertybindingproperties-field>
                                                     field :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-forminputvaluepropertybindingproperties.html#cfn-amplifyuibuilder-form-forminputvaluepropertybindingproperties-property>
                                                     property :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormInputValuePropertyBindingPropertiesProperty ::
  Value Prelude.Text
  -> FormInputValuePropertyBindingPropertiesProperty
mkFormInputValuePropertyBindingPropertiesProperty property
  = FormInputValuePropertyBindingPropertiesProperty
      {haddock_workaround_ = (), property = property,
       field = Prelude.Nothing}
instance ToResourceProperties FormInputValuePropertyBindingPropertiesProperty where
  toResourceProperties
    FormInputValuePropertyBindingPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormInputValuePropertyBindingProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Property" JSON..= property]
                           (Prelude.catMaybes [(JSON..=) "Field" Prelude.<$> field]))}
instance JSON.ToJSON FormInputValuePropertyBindingPropertiesProperty where
  toJSON FormInputValuePropertyBindingPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Property" JSON..= property]
              (Prelude.catMaybes [(JSON..=) "Field" Prelude.<$> field])))
instance Property "Field" FormInputValuePropertyBindingPropertiesProperty where
  type PropertyType "Field" FormInputValuePropertyBindingPropertiesProperty = Value Prelude.Text
  set newValue FormInputValuePropertyBindingPropertiesProperty {..}
    = FormInputValuePropertyBindingPropertiesProperty
        {field = Prelude.pure newValue, ..}
instance Property "Property" FormInputValuePropertyBindingPropertiesProperty where
  type PropertyType "Property" FormInputValuePropertyBindingPropertiesProperty = Value Prelude.Text
  set newValue FormInputValuePropertyBindingPropertiesProperty {..}
    = FormInputValuePropertyBindingPropertiesProperty
        {property = newValue, ..}