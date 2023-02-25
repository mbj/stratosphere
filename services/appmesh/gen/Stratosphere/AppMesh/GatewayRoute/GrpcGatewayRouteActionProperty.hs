module Stratosphere.AppMesh.GatewayRoute.GrpcGatewayRouteActionProperty (
        module Exports, GrpcGatewayRouteActionProperty(..),
        mkGrpcGatewayRouteActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GrpcGatewayRouteRewriteProperty as Exports
import Stratosphere.ResourceProperties
data GrpcGatewayRouteActionProperty
  = GrpcGatewayRouteActionProperty {rewrite :: (Prelude.Maybe GrpcGatewayRouteRewriteProperty),
                                    target :: GatewayRouteTargetProperty}
mkGrpcGatewayRouteActionProperty ::
  GatewayRouteTargetProperty -> GrpcGatewayRouteActionProperty
mkGrpcGatewayRouteActionProperty target
  = GrpcGatewayRouteActionProperty
      {target = target, rewrite = Prelude.Nothing}
instance ToResourceProperties GrpcGatewayRouteActionProperty where
  toResourceProperties GrpcGatewayRouteActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GrpcGatewayRouteAction",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Target" JSON..= target]
                           (Prelude.catMaybes [(JSON..=) "Rewrite" Prelude.<$> rewrite]))}
instance JSON.ToJSON GrpcGatewayRouteActionProperty where
  toJSON GrpcGatewayRouteActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Target" JSON..= target]
              (Prelude.catMaybes [(JSON..=) "Rewrite" Prelude.<$> rewrite])))
instance Property "Rewrite" GrpcGatewayRouteActionProperty where
  type PropertyType "Rewrite" GrpcGatewayRouteActionProperty = GrpcGatewayRouteRewriteProperty
  set newValue GrpcGatewayRouteActionProperty {..}
    = GrpcGatewayRouteActionProperty
        {rewrite = Prelude.pure newValue, ..}
instance Property "Target" GrpcGatewayRouteActionProperty where
  type PropertyType "Target" GrpcGatewayRouteActionProperty = GatewayRouteTargetProperty
  set newValue GrpcGatewayRouteActionProperty {..}
    = GrpcGatewayRouteActionProperty {target = newValue, ..}