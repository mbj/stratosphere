module Stratosphere.KafkaConnect.Connector.PluginProperty (
        module Exports, PluginProperty(..), mkPluginProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.CustomPluginProperty as Exports
import Stratosphere.ResourceProperties
data PluginProperty
  = PluginProperty {customPlugin :: CustomPluginProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPluginProperty :: CustomPluginProperty -> PluginProperty
mkPluginProperty customPlugin
  = PluginProperty {customPlugin = customPlugin}
instance ToResourceProperties PluginProperty where
  toResourceProperties PluginProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.Plugin",
         supportsTags = Prelude.False,
         properties = ["CustomPlugin" JSON..= customPlugin]}
instance JSON.ToJSON PluginProperty where
  toJSON PluginProperty {..}
    = JSON.object ["CustomPlugin" JSON..= customPlugin]
instance Property "CustomPlugin" PluginProperty where
  type PropertyType "CustomPlugin" PluginProperty = CustomPluginProperty
  set newValue PluginProperty {}
    = PluginProperty {customPlugin = newValue, ..}