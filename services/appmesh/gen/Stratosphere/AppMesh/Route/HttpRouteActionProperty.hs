module Stratosphere.AppMesh.Route.HttpRouteActionProperty (
        module Exports, HttpRouteActionProperty(..),
        mkHttpRouteActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.WeightedTargetProperty as Exports
import Stratosphere.ResourceProperties
data HttpRouteActionProperty
  = HttpRouteActionProperty {weightedTargets :: [WeightedTargetProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpRouteActionProperty ::
  [WeightedTargetProperty] -> HttpRouteActionProperty
mkHttpRouteActionProperty weightedTargets
  = HttpRouteActionProperty {weightedTargets = weightedTargets}
instance ToResourceProperties HttpRouteActionProperty where
  toResourceProperties HttpRouteActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.HttpRouteAction",
         supportsTags = Prelude.False,
         properties = ["WeightedTargets" JSON..= weightedTargets]}
instance JSON.ToJSON HttpRouteActionProperty where
  toJSON HttpRouteActionProperty {..}
    = JSON.object ["WeightedTargets" JSON..= weightedTargets]
instance Property "WeightedTargets" HttpRouteActionProperty where
  type PropertyType "WeightedTargets" HttpRouteActionProperty = [WeightedTargetProperty]
  set newValue HttpRouteActionProperty {}
    = HttpRouteActionProperty {weightedTargets = newValue, ..}