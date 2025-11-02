module Stratosphere.AppMesh.GatewayRoute.GatewayRouteRangeMatchProperty (
        GatewayRouteRangeMatchProperty(..),
        mkGatewayRouteRangeMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayRouteRangeMatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayrouterangematch.html>
    GatewayRouteRangeMatchProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayrouterangematch.html#cfn-appmesh-gatewayroute-gatewayrouterangematch-end>
                                    end :: (Value Prelude.Integer),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayrouterangematch.html#cfn-appmesh-gatewayroute-gatewayrouterangematch-start>
                                    start :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayRouteRangeMatchProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> GatewayRouteRangeMatchProperty
mkGatewayRouteRangeMatchProperty end start
  = GatewayRouteRangeMatchProperty
      {haddock_workaround_ = (), end = end, start = start}
instance ToResourceProperties GatewayRouteRangeMatchProperty where
  toResourceProperties GatewayRouteRangeMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GatewayRouteRangeMatch",
         supportsTags = Prelude.False,
         properties = ["End" JSON..= end, "Start" JSON..= start]}
instance JSON.ToJSON GatewayRouteRangeMatchProperty where
  toJSON GatewayRouteRangeMatchProperty {..}
    = JSON.object ["End" JSON..= end, "Start" JSON..= start]
instance Property "End" GatewayRouteRangeMatchProperty where
  type PropertyType "End" GatewayRouteRangeMatchProperty = Value Prelude.Integer
  set newValue GatewayRouteRangeMatchProperty {..}
    = GatewayRouteRangeMatchProperty {end = newValue, ..}
instance Property "Start" GatewayRouteRangeMatchProperty where
  type PropertyType "Start" GatewayRouteRangeMatchProperty = Value Prelude.Integer
  set newValue GatewayRouteRangeMatchProperty {..}
    = GatewayRouteRangeMatchProperty {start = newValue, ..}