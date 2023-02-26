module Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteHeaderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HttpGatewayRouteHeaderProperty :: Prelude.Type
instance ToResourceProperties HttpGatewayRouteHeaderProperty
instance JSON.ToJSON HttpGatewayRouteHeaderProperty