module Stratosphere.KafkaConnect.Connector.AutoScalingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AutoScalingProperty :: Prelude.Type
instance ToResourceProperties AutoScalingProperty
instance JSON.ToJSON AutoScalingProperty