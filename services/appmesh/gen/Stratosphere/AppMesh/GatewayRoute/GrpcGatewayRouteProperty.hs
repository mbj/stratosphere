module Stratosphere.AppMesh.GatewayRoute.GrpcGatewayRouteProperty (
        module Exports, GrpcGatewayRouteProperty(..),
        mkGrpcGatewayRouteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GrpcGatewayRouteActionProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GrpcGatewayRouteMatchProperty as Exports
import Stratosphere.ResourceProperties
data GrpcGatewayRouteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayroute.html>
    GrpcGatewayRouteProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayroute.html#cfn-appmesh-gatewayroute-grpcgatewayroute-action>
                              action :: GrpcGatewayRouteActionProperty,
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayroute.html#cfn-appmesh-gatewayroute-grpcgatewayroute-match>
                              match :: GrpcGatewayRouteMatchProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcGatewayRouteProperty ::
  GrpcGatewayRouteActionProperty
  -> GrpcGatewayRouteMatchProperty -> GrpcGatewayRouteProperty
mkGrpcGatewayRouteProperty action match
  = GrpcGatewayRouteProperty
      {haddock_workaround_ = (), action = action, match = match}
instance ToResourceProperties GrpcGatewayRouteProperty where
  toResourceProperties GrpcGatewayRouteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GrpcGatewayRoute",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action, "Match" JSON..= match]}
instance JSON.ToJSON GrpcGatewayRouteProperty where
  toJSON GrpcGatewayRouteProperty {..}
    = JSON.object ["Action" JSON..= action, "Match" JSON..= match]
instance Property "Action" GrpcGatewayRouteProperty where
  type PropertyType "Action" GrpcGatewayRouteProperty = GrpcGatewayRouteActionProperty
  set newValue GrpcGatewayRouteProperty {..}
    = GrpcGatewayRouteProperty {action = newValue, ..}
instance Property "Match" GrpcGatewayRouteProperty where
  type PropertyType "Match" GrpcGatewayRouteProperty = GrpcGatewayRouteMatchProperty
  set newValue GrpcGatewayRouteProperty {..}
    = GrpcGatewayRouteProperty {match = newValue, ..}