module Stratosphere.AmplifyUIBuilder.Form.FormInputValuePropertyProperty (
        FormInputValuePropertyProperty(..),
        mkFormInputValuePropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormInputValuePropertyProperty
  = FormInputValuePropertyProperty {value :: (Prelude.Maybe (Value Prelude.Text))}
mkFormInputValuePropertyProperty :: FormInputValuePropertyProperty
mkFormInputValuePropertyProperty
  = FormInputValuePropertyProperty {value = Prelude.Nothing}
instance ToResourceProperties FormInputValuePropertyProperty where
  toResourceProperties FormInputValuePropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormInputValueProperty",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON FormInputValuePropertyProperty where
  toJSON FormInputValuePropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))
instance Property "Value" FormInputValuePropertyProperty where
  type PropertyType "Value" FormInputValuePropertyProperty = Value Prelude.Text
  set newValue FormInputValuePropertyProperty {}
    = FormInputValuePropertyProperty
        {value = Prelude.pure newValue, ..}