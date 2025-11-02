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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayrouteaction.html>
    GrpcGatewayRouteActionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayrouteaction.html#cfn-appmesh-gatewayroute-grpcgatewayrouteaction-rewrite>
                                    rewrite :: (Prelude.Maybe GrpcGatewayRouteRewriteProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayrouteaction.html#cfn-appmesh-gatewayroute-grpcgatewayrouteaction-target>
                                    target :: GatewayRouteTargetProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcGatewayRouteActionProperty ::
  GatewayRouteTargetProperty -> GrpcGatewayRouteActionProperty
mkGrpcGatewayRouteActionProperty target
  = GrpcGatewayRouteActionProperty
      {haddock_workaround_ = (), target = target,
       rewrite = Prelude.Nothing}
instance ToResourceProperties GrpcGatewayRouteActionProperty where
  toResourceProperties GrpcGatewayRouteActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GrpcGatewayRouteAction",
         supportsTags = Prelude.False,
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