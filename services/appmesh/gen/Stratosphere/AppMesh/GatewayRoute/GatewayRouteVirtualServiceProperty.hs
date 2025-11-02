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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutevirtualservice.html>
    GatewayRouteVirtualServiceProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutevirtualservice.html#cfn-appmesh-gatewayroute-gatewayroutevirtualservice-virtualservicename>
                                        virtualServiceName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayRouteVirtualServiceProperty ::
  Value Prelude.Text -> GatewayRouteVirtualServiceProperty
mkGatewayRouteVirtualServiceProperty virtualServiceName
  = GatewayRouteVirtualServiceProperty
      {haddock_workaround_ = (), virtualServiceName = virtualServiceName}
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
  set newValue GatewayRouteVirtualServiceProperty {..}
    = GatewayRouteVirtualServiceProperty
        {virtualServiceName = newValue, ..}