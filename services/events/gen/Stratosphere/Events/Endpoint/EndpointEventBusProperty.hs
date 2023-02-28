module Stratosphere.Events.Endpoint.EndpointEventBusProperty (
        EndpointEventBusProperty(..), mkEndpointEventBusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointEventBusProperty
  = EndpointEventBusProperty {eventBusArn :: (Value Prelude.Text)}
mkEndpointEventBusProperty ::
  Value Prelude.Text -> EndpointEventBusProperty
mkEndpointEventBusProperty eventBusArn
  = EndpointEventBusProperty {eventBusArn = eventBusArn}
instance ToResourceProperties EndpointEventBusProperty where
  toResourceProperties EndpointEventBusProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Endpoint.EndpointEventBus",
         supportsTags = Prelude.False,
         properties = ["EventBusArn" JSON..= eventBusArn]}
instance JSON.ToJSON EndpointEventBusProperty where
  toJSON EndpointEventBusProperty {..}
    = JSON.object ["EventBusArn" JSON..= eventBusArn]
instance Property "EventBusArn" EndpointEventBusProperty where
  type PropertyType "EventBusArn" EndpointEventBusProperty = Value Prelude.Text
  set newValue EndpointEventBusProperty {}
    = EndpointEventBusProperty {eventBusArn = newValue, ..}