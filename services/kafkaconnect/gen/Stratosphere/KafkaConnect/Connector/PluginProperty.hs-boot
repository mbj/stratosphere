module Stratosphere.KafkaConnect.Connector.PluginProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PluginProperty :: Prelude.Type
instance ToResourceProperties PluginProperty
instance Prelude.Eq PluginProperty
instance Prelude.Show PluginProperty
instance JSON.ToJSON PluginProperty