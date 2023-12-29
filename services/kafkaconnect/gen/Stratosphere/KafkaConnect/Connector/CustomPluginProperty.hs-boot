module Stratosphere.KafkaConnect.Connector.CustomPluginProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomPluginProperty :: Prelude.Type
instance ToResourceProperties CustomPluginProperty
instance Prelude.Eq CustomPluginProperty
instance Prelude.Show CustomPluginProperty
instance JSON.ToJSON CustomPluginProperty