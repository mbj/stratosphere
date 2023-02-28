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
  = GatewayRouteRangeMatchProperty {end :: (Value Prelude.Integer),
                                    start :: (Value Prelude.Integer)}
mkGatewayRouteRangeMatchProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> GatewayRouteRangeMatchProperty
mkGatewayRouteRangeMatchProperty end start
  = GatewayRouteRangeMatchProperty {end = end, start = start}
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