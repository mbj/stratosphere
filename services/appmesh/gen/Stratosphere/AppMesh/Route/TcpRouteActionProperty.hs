module Stratosphere.AppMesh.Route.TcpRouteActionProperty (
        module Exports, TcpRouteActionProperty(..),
        mkTcpRouteActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.WeightedTargetProperty as Exports
import Stratosphere.ResourceProperties
data TcpRouteActionProperty
  = TcpRouteActionProperty {weightedTargets :: [WeightedTargetProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTcpRouteActionProperty ::
  [WeightedTargetProperty] -> TcpRouteActionProperty
mkTcpRouteActionProperty weightedTargets
  = TcpRouteActionProperty {weightedTargets = weightedTargets}
instance ToResourceProperties TcpRouteActionProperty where
  toResourceProperties TcpRouteActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.TcpRouteAction",
         supportsTags = Prelude.False,
         properties = ["WeightedTargets" JSON..= weightedTargets]}
instance JSON.ToJSON TcpRouteActionProperty where
  toJSON TcpRouteActionProperty {..}
    = JSON.object ["WeightedTargets" JSON..= weightedTargets]
instance Property "WeightedTargets" TcpRouteActionProperty where
  type PropertyType "WeightedTargets" TcpRouteActionProperty = [WeightedTargetProperty]
  set newValue TcpRouteActionProperty {}
    = TcpRouteActionProperty {weightedTargets = newValue, ..}