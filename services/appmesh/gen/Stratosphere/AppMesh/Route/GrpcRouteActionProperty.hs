module Stratosphere.AppMesh.Route.GrpcRouteActionProperty (
        module Exports, GrpcRouteActionProperty(..),
        mkGrpcRouteActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.WeightedTargetProperty as Exports
import Stratosphere.ResourceProperties
data GrpcRouteActionProperty
  = GrpcRouteActionProperty {weightedTargets :: [WeightedTargetProperty]}
mkGrpcRouteActionProperty ::
  [WeightedTargetProperty] -> GrpcRouteActionProperty
mkGrpcRouteActionProperty weightedTargets
  = GrpcRouteActionProperty {weightedTargets = weightedTargets}
instance ToResourceProperties GrpcRouteActionProperty where
  toResourceProperties GrpcRouteActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.GrpcRouteAction",
         supportsTags = Prelude.False,
         properties = ["WeightedTargets" JSON..= weightedTargets]}
instance JSON.ToJSON GrpcRouteActionProperty where
  toJSON GrpcRouteActionProperty {..}
    = JSON.object ["WeightedTargets" JSON..= weightedTargets]
instance Property "WeightedTargets" GrpcRouteActionProperty where
  type PropertyType "WeightedTargets" GrpcRouteActionProperty = [WeightedTargetProperty]
  set newValue GrpcRouteActionProperty {}
    = GrpcRouteActionProperty {weightedTargets = newValue, ..}