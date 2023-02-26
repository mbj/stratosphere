module Stratosphere.Events.Endpoint.EndpointEventBusProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EndpointEventBusProperty :: Prelude.Type
instance ToResourceProperties EndpointEventBusProperty
instance JSON.ToJSON EndpointEventBusProperty