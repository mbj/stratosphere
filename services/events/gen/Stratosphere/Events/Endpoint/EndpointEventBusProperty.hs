module Stratosphere.Events.Endpoint.EndpointEventBusProperty (
        EndpointEventBusProperty(..), mkEndpointEventBusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointEventBusProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-endpoint-endpointeventbus.html>
    EndpointEventBusProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-endpoint-endpointeventbus.html#cfn-events-endpoint-endpointeventbus-eventbusarn>
                              eventBusArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
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