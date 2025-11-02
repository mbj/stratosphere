module Stratosphere.AppMesh.GatewayRoute.GatewayRouteHostnameMatchProperty (
        GatewayRouteHostnameMatchProperty(..),
        mkGatewayRouteHostnameMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayRouteHostnameMatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutehostnamematch.html>
    GatewayRouteHostnameMatchProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutehostnamematch.html#cfn-appmesh-gatewayroute-gatewayroutehostnamematch-exact>
                                       exact :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutehostnamematch.html#cfn-appmesh-gatewayroute-gatewayroutehostnamematch-suffix>
                                       suffix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayRouteHostnameMatchProperty ::
  GatewayRouteHostnameMatchProperty
mkGatewayRouteHostnameMatchProperty
  = GatewayRouteHostnameMatchProperty
      {haddock_workaround_ = (), exact = Prelude.Nothing,
       suffix = Prelude.Nothing}
instance ToResourceProperties GatewayRouteHostnameMatchProperty where
  toResourceProperties GatewayRouteHostnameMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GatewayRouteHostnameMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exact" Prelude.<$> exact,
                            (JSON..=) "Suffix" Prelude.<$> suffix])}
instance JSON.ToJSON GatewayRouteHostnameMatchProperty where
  toJSON GatewayRouteHostnameMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exact" Prelude.<$> exact,
               (JSON..=) "Suffix" Prelude.<$> suffix]))
instance Property "Exact" GatewayRouteHostnameMatchProperty where
  type PropertyType "Exact" GatewayRouteHostnameMatchProperty = Value Prelude.Text
  set newValue GatewayRouteHostnameMatchProperty {..}
    = GatewayRouteHostnameMatchProperty
        {exact = Prelude.pure newValue, ..}
instance Property "Suffix" GatewayRouteHostnameMatchProperty where
  type PropertyType "Suffix" GatewayRouteHostnameMatchProperty = Value Prelude.Text
  set newValue GatewayRouteHostnameMatchProperty {..}
    = GatewayRouteHostnameMatchProperty
        {suffix = Prelude.pure newValue, ..}