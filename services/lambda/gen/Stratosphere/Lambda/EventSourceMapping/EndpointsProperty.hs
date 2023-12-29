module Stratosphere.Lambda.EventSourceMapping.EndpointsProperty (
        EndpointsProperty(..), mkEndpointsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointsProperty
  = EndpointsProperty {kafkaBootstrapServers :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointsProperty :: EndpointsProperty
mkEndpointsProperty
  = EndpointsProperty {kafkaBootstrapServers = Prelude.Nothing}
instance ToResourceProperties EndpointsProperty where
  toResourceProperties EndpointsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.Endpoints",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KafkaBootstrapServers"
                              Prelude.<$> kafkaBootstrapServers])}
instance JSON.ToJSON EndpointsProperty where
  toJSON EndpointsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KafkaBootstrapServers"
                 Prelude.<$> kafkaBootstrapServers]))
instance Property "KafkaBootstrapServers" EndpointsProperty where
  type PropertyType "KafkaBootstrapServers" EndpointsProperty = ValueList Prelude.Text
  set newValue EndpointsProperty {}
    = EndpointsProperty
        {kafkaBootstrapServers = Prelude.pure newValue, ..}