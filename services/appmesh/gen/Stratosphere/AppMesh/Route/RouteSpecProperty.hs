module Stratosphere.AppMesh.Route.RouteSpecProperty (
        module Exports, RouteSpecProperty(..), mkRouteSpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.GrpcRouteProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.HttpRouteProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.TcpRouteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RouteSpecProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html>
    RouteSpecProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-grpcroute>
                       grpcRoute :: (Prelude.Maybe GrpcRouteProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-http2route>
                       http2Route :: (Prelude.Maybe HttpRouteProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-httproute>
                       httpRoute :: (Prelude.Maybe HttpRouteProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-priority>
                       priority :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-tcproute>
                       tcpRoute :: (Prelude.Maybe TcpRouteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRouteSpecProperty :: RouteSpecProperty
mkRouteSpecProperty
  = RouteSpecProperty
      {haddock_workaround_ = (), grpcRoute = Prelude.Nothing,
       http2Route = Prelude.Nothing, httpRoute = Prelude.Nothing,
       priority = Prelude.Nothing, tcpRoute = Prelude.Nothing}
instance ToResourceProperties RouteSpecProperty where
  toResourceProperties RouteSpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.RouteSpec",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GrpcRoute" Prelude.<$> grpcRoute,
                            (JSON..=) "Http2Route" Prelude.<$> http2Route,
                            (JSON..=) "HttpRoute" Prelude.<$> httpRoute,
                            (JSON..=) "Priority" Prelude.<$> priority,
                            (JSON..=) "TcpRoute" Prelude.<$> tcpRoute])}
instance JSON.ToJSON RouteSpecProperty where
  toJSON RouteSpecProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GrpcRoute" Prelude.<$> grpcRoute,
               (JSON..=) "Http2Route" Prelude.<$> http2Route,
               (JSON..=) "HttpRoute" Prelude.<$> httpRoute,
               (JSON..=) "Priority" Prelude.<$> priority,
               (JSON..=) "TcpRoute" Prelude.<$> tcpRoute]))
instance Property "GrpcRoute" RouteSpecProperty where
  type PropertyType "GrpcRoute" RouteSpecProperty = GrpcRouteProperty
  set newValue RouteSpecProperty {..}
    = RouteSpecProperty {grpcRoute = Prelude.pure newValue, ..}
instance Property "Http2Route" RouteSpecProperty where
  type PropertyType "Http2Route" RouteSpecProperty = HttpRouteProperty
  set newValue RouteSpecProperty {..}
    = RouteSpecProperty {http2Route = Prelude.pure newValue, ..}
instance Property "HttpRoute" RouteSpecProperty where
  type PropertyType "HttpRoute" RouteSpecProperty = HttpRouteProperty
  set newValue RouteSpecProperty {..}
    = RouteSpecProperty {httpRoute = Prelude.pure newValue, ..}
instance Property "Priority" RouteSpecProperty where
  type PropertyType "Priority" RouteSpecProperty = Value Prelude.Integer
  set newValue RouteSpecProperty {..}
    = RouteSpecProperty {priority = Prelude.pure newValue, ..}
instance Property "TcpRoute" RouteSpecProperty where
  type PropertyType "TcpRoute" RouteSpecProperty = TcpRouteProperty
  set newValue RouteSpecProperty {..}
    = RouteSpecProperty {tcpRoute = Prelude.pure newValue, ..}