module Stratosphere.AppMesh.GatewayRoute.GatewayRouteSpecProperty (
        module Exports, GatewayRouteSpecProperty(..),
        mkGatewayRouteSpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GrpcGatewayRouteProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayRouteSpecProperty
  = GatewayRouteSpecProperty {grpcRoute :: (Prelude.Maybe GrpcGatewayRouteProperty),
                              http2Route :: (Prelude.Maybe HttpGatewayRouteProperty),
                              httpRoute :: (Prelude.Maybe HttpGatewayRouteProperty),
                              priority :: (Prelude.Maybe (Value Prelude.Integer))}
mkGatewayRouteSpecProperty :: GatewayRouteSpecProperty
mkGatewayRouteSpecProperty
  = GatewayRouteSpecProperty
      {grpcRoute = Prelude.Nothing, http2Route = Prelude.Nothing,
       httpRoute = Prelude.Nothing, priority = Prelude.Nothing}
instance ToResourceProperties GatewayRouteSpecProperty where
  toResourceProperties GatewayRouteSpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GatewayRouteSpec",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GrpcRoute" Prelude.<$> grpcRoute,
                            (JSON..=) "Http2Route" Prelude.<$> http2Route,
                            (JSON..=) "HttpRoute" Prelude.<$> httpRoute,
                            (JSON..=) "Priority" Prelude.<$> priority])}
instance JSON.ToJSON GatewayRouteSpecProperty where
  toJSON GatewayRouteSpecProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GrpcRoute" Prelude.<$> grpcRoute,
               (JSON..=) "Http2Route" Prelude.<$> http2Route,
               (JSON..=) "HttpRoute" Prelude.<$> httpRoute,
               (JSON..=) "Priority" Prelude.<$> priority]))
instance Property "GrpcRoute" GatewayRouteSpecProperty where
  type PropertyType "GrpcRoute" GatewayRouteSpecProperty = GrpcGatewayRouteProperty
  set newValue GatewayRouteSpecProperty {..}
    = GatewayRouteSpecProperty {grpcRoute = Prelude.pure newValue, ..}
instance Property "Http2Route" GatewayRouteSpecProperty where
  type PropertyType "Http2Route" GatewayRouteSpecProperty = HttpGatewayRouteProperty
  set newValue GatewayRouteSpecProperty {..}
    = GatewayRouteSpecProperty {http2Route = Prelude.pure newValue, ..}
instance Property "HttpRoute" GatewayRouteSpecProperty where
  type PropertyType "HttpRoute" GatewayRouteSpecProperty = HttpGatewayRouteProperty
  set newValue GatewayRouteSpecProperty {..}
    = GatewayRouteSpecProperty {httpRoute = Prelude.pure newValue, ..}
instance Property "Priority" GatewayRouteSpecProperty where
  type PropertyType "Priority" GatewayRouteSpecProperty = Value Prelude.Integer
  set newValue GatewayRouteSpecProperty {..}
    = GatewayRouteSpecProperty {priority = Prelude.pure newValue, ..}