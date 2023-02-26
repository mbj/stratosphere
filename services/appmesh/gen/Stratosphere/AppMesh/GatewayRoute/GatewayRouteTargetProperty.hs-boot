module Stratosphere.AppMesh.GatewayRoute.GatewayRouteTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GatewayRouteTargetProperty :: Prelude.Type
instance ToResourceProperties GatewayRouteTargetProperty
instance JSON.ToJSON GatewayRouteTargetProperty