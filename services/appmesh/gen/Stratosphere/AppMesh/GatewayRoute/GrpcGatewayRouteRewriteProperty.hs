module Stratosphere.AppMesh.GatewayRoute.GrpcGatewayRouteRewriteProperty (
        module Exports, GrpcGatewayRouteRewriteProperty(..),
        mkGrpcGatewayRouteRewriteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteHostnameRewriteProperty as Exports
import Stratosphere.ResourceProperties
data GrpcGatewayRouteRewriteProperty
  = GrpcGatewayRouteRewriteProperty {hostname :: (Prelude.Maybe GatewayRouteHostnameRewriteProperty)}
mkGrpcGatewayRouteRewriteProperty ::
  GrpcGatewayRouteRewriteProperty
mkGrpcGatewayRouteRewriteProperty
  = GrpcGatewayRouteRewriteProperty {hostname = Prelude.Nothing}
instance ToResourceProperties GrpcGatewayRouteRewriteProperty where
  toResourceProperties GrpcGatewayRouteRewriteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GrpcGatewayRouteRewrite",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Hostname" Prelude.<$> hostname])}
instance JSON.ToJSON GrpcGatewayRouteRewriteProperty where
  toJSON GrpcGatewayRouteRewriteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Hostname" Prelude.<$> hostname]))
instance Property "Hostname" GrpcGatewayRouteRewriteProperty where
  type PropertyType "Hostname" GrpcGatewayRouteRewriteProperty = GatewayRouteHostnameRewriteProperty
  set newValue GrpcGatewayRouteRewriteProperty {}
    = GrpcGatewayRouteRewriteProperty
        {hostname = Prelude.pure newValue, ..}