module Stratosphere.EMR.Cluster.KeyValueProperty (
        KeyValueProperty(..), mkKeyValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyValueProperty
  = KeyValueProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                      value :: (Prelude.Maybe (Value Prelude.Text))}
mkKeyValueProperty :: KeyValueProperty
mkKeyValueProperty
  = KeyValueProperty {key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties KeyValueProperty where
  toResourceProperties KeyValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.KeyValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON KeyValueProperty where
  toJSON KeyValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" KeyValueProperty where
  type PropertyType "Key" KeyValueProperty = Value Prelude.Text
  set newValue KeyValueProperty {..}
    = KeyValueProperty {key = Prelude.pure newValue, ..}
instance Property "Value" KeyValueProperty where
  type PropertyType "Value" KeyValueProperty = Value Prelude.Text
  set newValue KeyValueProperty {..}
    = KeyValueProperty {value = Prelude.pure newValue, ..}