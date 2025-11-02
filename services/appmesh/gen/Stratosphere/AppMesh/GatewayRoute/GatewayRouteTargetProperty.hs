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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutetarget.html>
    GatewayRouteTargetProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutetarget.html#cfn-appmesh-gatewayroute-gatewayroutetarget-port>
                                port :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutetarget.html#cfn-appmesh-gatewayroute-gatewayroutetarget-virtualservice>
                                virtualService :: GatewayRouteVirtualServiceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayRouteTargetProperty ::
  GatewayRouteVirtualServiceProperty -> GatewayRouteTargetProperty
mkGatewayRouteTargetProperty virtualService
  = GatewayRouteTargetProperty
      {haddock_workaround_ = (), virtualService = virtualService,
       port = Prelude.Nothing}
instance ToResourceProperties GatewayRouteTargetProperty where
  toResourceProperties GatewayRouteTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GatewayRouteTarget",
         supportsTags = Prelude.False,
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