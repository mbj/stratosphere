module Stratosphere.AppMesh.Route.TcpRouteActionProperty (
        module Exports, TcpRouteActionProperty(..),
        mkTcpRouteActionProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.WeightedTargetProperty as Exports
import Stratosphere.ResourceProperties
data TcpRouteActionProperty
  = TcpRouteActionProperty {weightedTargets :: [WeightedTargetProperty]}
mkTcpRouteActionProperty ::
  [WeightedTargetProperty] -> TcpRouteActionProperty
mkTcpRouteActionProperty weightedTargets
  = TcpRouteActionProperty {weightedTargets = weightedTargets}
instance ToResourceProperties TcpRouteActionProperty where
  toResourceProperties TcpRouteActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.TcpRouteAction",
         properties = ["WeightedTargets" JSON..= weightedTargets]}
instance JSON.ToJSON TcpRouteActionProperty where
  toJSON TcpRouteActionProperty {..}
    = JSON.object ["WeightedTargets" JSON..= weightedTargets]
instance Property "WeightedTargets" TcpRouteActionProperty where
  type PropertyType "WeightedTargets" TcpRouteActionProperty = [WeightedTargetProperty]
  set newValue TcpRouteActionProperty {}
    = TcpRouteActionProperty {weightedTargets = newValue, ..}