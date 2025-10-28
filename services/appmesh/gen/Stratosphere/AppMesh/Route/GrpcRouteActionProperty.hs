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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcrouteaction.html>
    GrpcRouteActionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcrouteaction.html#cfn-appmesh-route-grpcrouteaction-weightedtargets>
                             weightedTargets :: [WeightedTargetProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcRouteActionProperty ::
  [WeightedTargetProperty] -> GrpcRouteActionProperty
mkGrpcRouteActionProperty weightedTargets
  = GrpcRouteActionProperty
      {haddock_workaround_ = (), weightedTargets = weightedTargets}
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
  set newValue GrpcRouteActionProperty {..}
    = GrpcRouteActionProperty {weightedTargets = newValue, ..}