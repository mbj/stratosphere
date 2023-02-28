module Stratosphere.MSK.Configuration (
        Configuration(..), mkConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Configuration
  = Configuration {description :: (Prelude.Maybe (Value Prelude.Text)),
                   kafkaVersionsList :: (Prelude.Maybe (ValueList Prelude.Text)),
                   name :: (Value Prelude.Text),
                   serverProperties :: (Value Prelude.Text)}
mkConfiguration ::
  Value Prelude.Text -> Value Prelude.Text -> Configuration
mkConfiguration name serverProperties
  = Configuration
      {name = name, serverProperties = serverProperties,
       description = Prelude.Nothing, kafkaVersionsList = Prelude.Nothing}
instance ToResourceProperties Configuration where
  toResourceProperties Configuration {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Configuration", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "ServerProperties" JSON..= serverProperties]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KafkaVersionsList" Prelude.<$> kafkaVersionsList]))}
instance JSON.ToJSON Configuration where
  toJSON Configuration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "ServerProperties" JSON..= serverProperties]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KafkaVersionsList" Prelude.<$> kafkaVersionsList])))
instance Property "Description" Configuration where
  type PropertyType "Description" Configuration = Value Prelude.Text
  set newValue Configuration {..}
    = Configuration {description = Prelude.pure newValue, ..}
instance Property "KafkaVersionsList" Configuration where
  type PropertyType "KafkaVersionsList" Configuration = ValueList Prelude.Text
  set newValue Configuration {..}
    = Configuration {kafkaVersionsList = Prelude.pure newValue, ..}
instance Property "Name" Configuration where
  type PropertyType "Name" Configuration = Value Prelude.Text
  set newValue Configuration {..}
    = Configuration {name = newValue, ..}
instance Property "ServerProperties" Configuration where
  type PropertyType "ServerProperties" Configuration = Value Prelude.Text
  set newValue Configuration {..}
    = Configuration {serverProperties = newValue, ..}