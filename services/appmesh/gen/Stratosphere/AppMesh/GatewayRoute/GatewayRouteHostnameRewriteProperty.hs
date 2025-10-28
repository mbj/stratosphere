module Stratosphere.AppMesh.GatewayRoute.GatewayRouteHostnameRewriteProperty (
        GatewayRouteHostnameRewriteProperty(..),
        mkGatewayRouteHostnameRewriteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayRouteHostnameRewriteProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutehostnamerewrite.html>
    GatewayRouteHostnameRewriteProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutehostnamerewrite.html#cfn-appmesh-gatewayroute-gatewayroutehostnamerewrite-defaulttargethostname>
                                         defaultTargetHostname :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayRouteHostnameRewriteProperty ::
  GatewayRouteHostnameRewriteProperty
mkGatewayRouteHostnameRewriteProperty
  = GatewayRouteHostnameRewriteProperty
      {defaultTargetHostname = Prelude.Nothing}
instance ToResourceProperties GatewayRouteHostnameRewriteProperty where
  toResourceProperties GatewayRouteHostnameRewriteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GatewayRouteHostnameRewrite",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultTargetHostname"
                              Prelude.<$> defaultTargetHostname])}
instance JSON.ToJSON GatewayRouteHostnameRewriteProperty where
  toJSON GatewayRouteHostnameRewriteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultTargetHostname"
                 Prelude.<$> defaultTargetHostname]))
instance Property "DefaultTargetHostname" GatewayRouteHostnameRewriteProperty where
  type PropertyType "DefaultTargetHostname" GatewayRouteHostnameRewriteProperty = Value Prelude.Text
  set newValue GatewayRouteHostnameRewriteProperty {}
    = GatewayRouteHostnameRewriteProperty
        {defaultTargetHostname = Prelude.pure newValue, ..}