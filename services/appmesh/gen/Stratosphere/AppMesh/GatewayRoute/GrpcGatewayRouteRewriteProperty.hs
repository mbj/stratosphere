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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayrouterewrite.html>
    GrpcGatewayRouteRewriteProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayrouterewrite.html#cfn-appmesh-gatewayroute-grpcgatewayrouterewrite-hostname>
                                     hostname :: (Prelude.Maybe GatewayRouteHostnameRewriteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcGatewayRouteRewriteProperty ::
  GrpcGatewayRouteRewriteProperty
mkGrpcGatewayRouteRewriteProperty
  = GrpcGatewayRouteRewriteProperty
      {haddock_workaround_ = (), hostname = Prelude.Nothing}
instance ToResourceProperties GrpcGatewayRouteRewriteProperty where
  toResourceProperties GrpcGatewayRouteRewriteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GrpcGatewayRouteRewrite",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Hostname" Prelude.<$> hostname])}
instance JSON.ToJSON GrpcGatewayRouteRewriteProperty where
  toJSON GrpcGatewayRouteRewriteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Hostname" Prelude.<$> hostname]))
instance Property "Hostname" GrpcGatewayRouteRewriteProperty where
  type PropertyType "Hostname" GrpcGatewayRouteRewriteProperty = GatewayRouteHostnameRewriteProperty
  set newValue GrpcGatewayRouteRewriteProperty {..}
    = GrpcGatewayRouteRewriteProperty
        {hostname = Prelude.pure newValue, ..}