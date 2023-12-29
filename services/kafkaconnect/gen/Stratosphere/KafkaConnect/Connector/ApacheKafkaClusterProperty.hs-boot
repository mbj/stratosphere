module Stratosphere.KafkaConnect.Connector.ApacheKafkaClusterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ApacheKafkaClusterProperty :: Prelude.Type
instance ToResourceProperties ApacheKafkaClusterProperty
instance Prelude.Eq ApacheKafkaClusterProperty
instance Prelude.Show ApacheKafkaClusterProperty
instance JSON.ToJSON ApacheKafkaClusterProperty