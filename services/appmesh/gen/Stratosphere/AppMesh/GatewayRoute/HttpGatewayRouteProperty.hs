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
  = HttpGatewayRouteProperty {action :: HttpGatewayRouteActionProperty,
                              match :: HttpGatewayRouteMatchProperty}
mkHttpGatewayRouteProperty ::
  HttpGatewayRouteActionProperty
  -> HttpGatewayRouteMatchProperty -> HttpGatewayRouteProperty
mkHttpGatewayRouteProperty action match
  = HttpGatewayRouteProperty {action = action, match = match}
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