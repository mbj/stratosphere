module Stratosphere.AppMesh.GatewayRoute.GatewayRouteTargetProperty (
        module Exports, GatewayRouteTargetProperty(..),
        mkGatewayRouteTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteVirtualServiceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayRouteTargetProperty
  = GatewayRouteTargetProperty {port :: (Prelude.Maybe (Value Prelude.Integer)),
                                virtualService :: GatewayRouteVirtualServiceProperty}
mkGatewayRouteTargetProperty ::
  GatewayRouteVirtualServiceProperty -> GatewayRouteTargetProperty
mkGatewayRouteTargetProperty virtualService
  = GatewayRouteTargetProperty
      {virtualService = virtualService, port = Prelude.Nothing}
instance ToResourceProperties GatewayRouteTargetProperty where
  toResourceProperties GatewayRouteTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GatewayRouteTarget",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VirtualService" JSON..= virtualService]
                           (Prelude.catMaybes [(JSON..=) "Port" Prelude.<$> port]))}
instance JSON.ToJSON GatewayRouteTargetProperty where
  toJSON GatewayRouteTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VirtualService" JSON..= virtualService]
              (Prelude.catMaybes [(JSON..=) "Port" Prelude.<$> port])))
instance Property "Port" GatewayRouteTargetProperty where
  type PropertyType "Port" GatewayRouteTargetProperty = Value Prelude.Integer
  set newValue GatewayRouteTargetProperty {..}
    = GatewayRouteTargetProperty {port = Prelude.pure newValue, ..}
instance Property "VirtualService" GatewayRouteTargetProperty where
  type PropertyType "VirtualService" GatewayRouteTargetProperty = GatewayRouteVirtualServiceProperty
  set newValue GatewayRouteTargetProperty {..}
    = GatewayRouteTargetProperty {virtualService = newValue, ..}