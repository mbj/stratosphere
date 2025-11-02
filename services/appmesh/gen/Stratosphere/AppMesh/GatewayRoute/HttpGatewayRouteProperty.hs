module Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteProperty (
        module Exports, HttpGatewayRouteProperty(..),
        mkHttpGatewayRouteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteActionProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteMatchProperty as Exports
import Stratosphere.ResourceProperties
data HttpGatewayRouteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayroute.html>
    HttpGatewayRouteProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayroute.html#cfn-appmesh-gatewayroute-httpgatewayroute-action>
                              action :: HttpGatewayRouteActionProperty,
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayroute.html#cfn-appmesh-gatewayroute-httpgatewayroute-match>
                              match :: HttpGatewayRouteMatchProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpGatewayRouteProperty ::
  HttpGatewayRouteActionProperty
  -> HttpGatewayRouteMatchProperty -> HttpGatewayRouteProperty
mkHttpGatewayRouteProperty action match
  = HttpGatewayRouteProperty
      {haddock_workaround_ = (), action = action, match = match}
instance ToResourceProperties HttpGatewayRouteProperty where
  toResourceProperties HttpGatewayRouteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.HttpGatewayRoute",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action, "Match" JSON..= match]}
instance JSON.ToJSON HttpGatewayRouteProperty where
  toJSON HttpGatewayRouteProperty {..}
    = JSON.object ["Action" JSON..= action, "Match" JSON..= match]
instance Property "Action" HttpGatewayRouteProperty where
  type PropertyType "Action" HttpGatewayRouteProperty = HttpGatewayRouteActionProperty
  set newValue HttpGatewayRouteProperty {..}
    = HttpGatewayRouteProperty {action = newValue, ..}
instance Property "Match" HttpGatewayRouteProperty where
  type PropertyType "Match" HttpGatewayRouteProperty = HttpGatewayRouteMatchProperty
  set newValue HttpGatewayRouteProperty {..}
    = HttpGatewayRouteProperty {match = newValue, ..}