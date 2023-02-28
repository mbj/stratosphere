module Stratosphere.ECS.TaskDefinition.KeyValuePairProperty (
        KeyValuePairProperty(..), mkKeyValuePairProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyValuePairProperty
  = KeyValuePairProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                          value :: (Prelude.Maybe (Value Prelude.Text))}
mkKeyValuePairProperty :: KeyValuePairProperty
mkKeyValuePairProperty
  = KeyValuePairProperty
      {name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties KeyValuePairProperty where
  toResourceProperties KeyValuePairProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.KeyValuePair",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON KeyValuePairProperty where
  toJSON KeyValuePairProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" KeyValuePairProperty where
  type PropertyType "Name" KeyValuePairProperty = Value Prelude.Text
  set newValue KeyValuePairProperty {..}
    = KeyValuePairProperty {name = Prelude.pure newValue, ..}
instance Property "Value" KeyValuePairProperty where
  type PropertyType "Value" KeyValuePairProperty = Value Prelude.Text
  set newValue KeyValuePairProperty {..}
    = KeyValuePairProperty {value = Prelude.pure newValue, ..}