module Stratosphere.Cognito.UserPoolUser.AttributeTypeProperty (
        AttributeTypeProperty(..), mkAttributeTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeTypeProperty
  = AttributeTypeProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                           value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeTypeProperty :: AttributeTypeProperty
mkAttributeTypeProperty
  = AttributeTypeProperty
      {name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties AttributeTypeProperty where
  toResourceProperties AttributeTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolUser.AttributeType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON AttributeTypeProperty where
  toJSON AttributeTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" AttributeTypeProperty where
  type PropertyType "Name" AttributeTypeProperty = Value Prelude.Text
  set newValue AttributeTypeProperty {..}
    = AttributeTypeProperty {name = Prelude.pure newValue, ..}
instance Property "Value" AttributeTypeProperty where
  type PropertyType "Value" AttributeTypeProperty = Value Prelude.Text
  set newValue AttributeTypeProperty {..}
    = AttributeTypeProperty {value = Prelude.pure newValue, ..}