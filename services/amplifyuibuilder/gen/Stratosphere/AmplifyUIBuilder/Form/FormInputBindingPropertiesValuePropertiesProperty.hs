module Stratosphere.AmplifyUIBuilder.Form.FormInputBindingPropertiesValuePropertiesProperty (
        FormInputBindingPropertiesValuePropertiesProperty(..),
        mkFormInputBindingPropertiesValuePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormInputBindingPropertiesValuePropertiesProperty
  = FormInputBindingPropertiesValuePropertiesProperty {model :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormInputBindingPropertiesValuePropertiesProperty ::
  FormInputBindingPropertiesValuePropertiesProperty
mkFormInputBindingPropertiesValuePropertiesProperty
  = FormInputBindingPropertiesValuePropertiesProperty
      {model = Prelude.Nothing}
instance ToResourceProperties FormInputBindingPropertiesValuePropertiesProperty where
  toResourceProperties
    FormInputBindingPropertiesValuePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormInputBindingPropertiesValueProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Model" Prelude.<$> model])}
instance JSON.ToJSON FormInputBindingPropertiesValuePropertiesProperty where
  toJSON FormInputBindingPropertiesValuePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Model" Prelude.<$> model]))
instance Property "Model" FormInputBindingPropertiesValuePropertiesProperty where
  type PropertyType "Model" FormInputBindingPropertiesValuePropertiesProperty = Value Prelude.Text
  set newValue FormInputBindingPropertiesValuePropertiesProperty {}
    = FormInputBindingPropertiesValuePropertiesProperty
        {model = Prelude.pure newValue, ..}