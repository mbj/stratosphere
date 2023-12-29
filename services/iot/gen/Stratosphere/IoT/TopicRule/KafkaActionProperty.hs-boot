module Stratosphere.IoT.TopicRule.KafkaActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KafkaActionProperty :: Prelude.Type
instance ToResourceProperties KafkaActionProperty
instance Prelude.Eq KafkaActionProperty
instance Prelude.Show KafkaActionProperty
instance JSON.ToJSON KafkaActionProperty