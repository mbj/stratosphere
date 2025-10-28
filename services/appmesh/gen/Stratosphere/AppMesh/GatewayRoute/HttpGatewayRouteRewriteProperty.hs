module Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteRewriteProperty (
        module Exports, HttpGatewayRouteRewriteProperty(..),
        mkHttpGatewayRouteRewriteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteHostnameRewriteProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.HttpGatewayRoutePathRewriteProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.HttpGatewayRoutePrefixRewriteProperty as Exports
import Stratosphere.ResourceProperties
data HttpGatewayRouteRewriteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouterewrite.html>
    HttpGatewayRouteRewriteProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouterewrite.html#cfn-appmesh-gatewayroute-httpgatewayrouterewrite-hostname>
                                     hostname :: (Prelude.Maybe GatewayRouteHostnameRewriteProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouterewrite.html#cfn-appmesh-gatewayroute-httpgatewayrouterewrite-path>
                                     path :: (Prelude.Maybe HttpGatewayRoutePathRewriteProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouterewrite.html#cfn-appmesh-gatewayroute-httpgatewayrouterewrite-prefix>
                                     prefix :: (Prelude.Maybe HttpGatewayRoutePrefixRewriteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpGatewayRouteRewriteProperty ::
  HttpGatewayRouteRewriteProperty
mkHttpGatewayRouteRewriteProperty
  = HttpGatewayRouteRewriteProperty
      {haddock_workaround_ = (), hostname = Prelude.Nothing,
       path = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties HttpGatewayRouteRewriteProperty where
  toResourceProperties HttpGatewayRouteRewriteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.HttpGatewayRouteRewrite",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Hostname" Prelude.<$> hostname,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "Prefix" Prelude.<$> prefix])}
instance JSON.ToJSON HttpGatewayRouteRewriteProperty where
  toJSON HttpGatewayRouteRewriteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Hostname" Prelude.<$> hostname,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "Prefix" Prelude.<$> prefix]))
instance Property "Hostname" HttpGatewayRouteRewriteProperty where
  type PropertyType "Hostname" HttpGatewayRouteRewriteProperty = GatewayRouteHostnameRewriteProperty
  set newValue HttpGatewayRouteRewriteProperty {..}
    = HttpGatewayRouteRewriteProperty
        {hostname = Prelude.pure newValue, ..}
instance Property "Path" HttpGatewayRouteRewriteProperty where
  type PropertyType "Path" HttpGatewayRouteRewriteProperty = HttpGatewayRoutePathRewriteProperty
  set newValue HttpGatewayRouteRewriteProperty {..}
    = HttpGatewayRouteRewriteProperty
        {path = Prelude.pure newValue, ..}
instance Property "Prefix" HttpGatewayRouteRewriteProperty where
  type PropertyType "Prefix" HttpGatewayRouteRewriteProperty = HttpGatewayRoutePrefixRewriteProperty
  set newValue HttpGatewayRouteRewriteProperty {..}
    = HttpGatewayRouteRewriteProperty
        {prefix = Prelude.pure newValue, ..}