module Stratosphere.Events.Endpoint.RoutingConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RoutingConfigProperty :: Prelude.Type
instance ToResourceProperties RoutingConfigProperty
instance JSON.ToJSON RoutingConfigProperty