module Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteActionProperty (
        module Exports, HttpGatewayRouteActionProperty(..),
        mkHttpGatewayRouteActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteRewriteProperty as Exports
import Stratosphere.ResourceProperties
data HttpGatewayRouteActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouteaction.html>
    HttpGatewayRouteActionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouteaction.html#cfn-appmesh-gatewayroute-httpgatewayrouteaction-rewrite>
                                    rewrite :: (Prelude.Maybe HttpGatewayRouteRewriteProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouteaction.html#cfn-appmesh-gatewayroute-httpgatewayrouteaction-target>
                                    target :: GatewayRouteTargetProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpGatewayRouteActionProperty ::
  GatewayRouteTargetProperty -> HttpGatewayRouteActionProperty
mkHttpGatewayRouteActionProperty target
  = HttpGatewayRouteActionProperty
      {haddock_workaround_ = (), target = target,
       rewrite = Prelude.Nothing}
instance ToResourceProperties HttpGatewayRouteActionProperty where
  toResourceProperties HttpGatewayRouteActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.HttpGatewayRouteAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Target" JSON..= target]
                           (Prelude.catMaybes [(JSON..=) "Rewrite" Prelude.<$> rewrite]))}
instance JSON.ToJSON HttpGatewayRouteActionProperty where
  toJSON HttpGatewayRouteActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Target" JSON..= target]
              (Prelude.catMaybes [(JSON..=) "Rewrite" Prelude.<$> rewrite])))
instance Property "Rewrite" HttpGatewayRouteActionProperty where
  type PropertyType "Rewrite" HttpGatewayRouteActionProperty = HttpGatewayRouteRewriteProperty
  set newValue HttpGatewayRouteActionProperty {..}
    = HttpGatewayRouteActionProperty
        {rewrite = Prelude.pure newValue, ..}
instance Property "Target" HttpGatewayRouteActionProperty where
  type PropertyType "Target" HttpGatewayRouteActionProperty = GatewayRouteTargetProperty
  set newValue HttpGatewayRouteActionProperty {..}
    = HttpGatewayRouteActionProperty {target = newValue, ..}