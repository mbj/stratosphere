module Stratosphere.KafkaConnect.Connector.KafkaClusterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KafkaClusterProperty :: Prelude.Type
instance ToResourceProperties KafkaClusterProperty
instance JSON.ToJSON KafkaClusterProperty