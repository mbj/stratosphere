module Stratosphere.AppMesh.GatewayRoute.GatewayRouteVirtualServiceProperty (
        GatewayRouteVirtualServiceProperty(..),
        mkGatewayRouteVirtualServiceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayRouteVirtualServiceProperty
  = GatewayRouteVirtualServiceProperty {virtualServiceName :: (Value Prelude.Text)}
mkGatewayRouteVirtualServiceProperty ::
  Value Prelude.Text -> GatewayRouteVirtualServiceProperty
mkGatewayRouteVirtualServiceProperty virtualServiceName
  = GatewayRouteVirtualServiceProperty
      {virtualServiceName = virtualServiceName}
instance ToResourceProperties GatewayRouteVirtualServiceProperty where
  toResourceProperties GatewayRouteVirtualServiceProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GatewayRouteVirtualService",
         supportsTags = Prelude.False,
         properties = ["VirtualServiceName" JSON..= virtualServiceName]}
instance JSON.ToJSON GatewayRouteVirtualServiceProperty where
  toJSON GatewayRouteVirtualServiceProperty {..}
    = JSON.object ["VirtualServiceName" JSON..= virtualServiceName]
instance Property "VirtualServiceName" GatewayRouteVirtualServiceProperty where
  type PropertyType "VirtualServiceName" GatewayRouteVirtualServiceProperty = Value Prelude.Text
  set newValue GatewayRouteVirtualServiceProperty {}
    = GatewayRouteVirtualServiceProperty
        {virtualServiceName = newValue, ..}