module Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HttpGatewayRouteProperty :: Prelude.Type
instance ToResourceProperties HttpGatewayRouteProperty
instance Prelude.Eq HttpGatewayRouteProperty
instance Prelude.Show HttpGatewayRouteProperty
instance JSON.ToJSON HttpGatewayRouteProperty