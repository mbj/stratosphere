module Stratosphere.AppMesh.Route.GrpcTimeoutProperty (
        module Exports, GrpcTimeoutProperty(..), mkGrpcTimeoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.DurationProperty as Exports
import Stratosphere.ResourceProperties
data GrpcTimeoutProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpctimeout.html>
    GrpcTimeoutProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpctimeout.html#cfn-appmesh-route-grpctimeout-idle>
                         idle :: (Prelude.Maybe DurationProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpctimeout.html#cfn-appmesh-route-grpctimeout-perrequest>
                         perRequest :: (Prelude.Maybe DurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcTimeoutProperty :: GrpcTimeoutProperty
mkGrpcTimeoutProperty
  = GrpcTimeoutProperty
      {haddock_workaround_ = (), idle = Prelude.Nothing,
       perRequest = Prelude.Nothing}
instance ToResourceProperties GrpcTimeoutProperty where
  toResourceProperties GrpcTimeoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.GrpcTimeout",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Idle" Prelude.<$> idle,
                            (JSON..=) "PerRequest" Prelude.<$> perRequest])}
instance JSON.ToJSON GrpcTimeoutProperty where
  toJSON GrpcTimeoutProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Idle" Prelude.<$> idle,
               (JSON..=) "PerRequest" Prelude.<$> perRequest]))
instance Property "Idle" GrpcTimeoutProperty where
  type PropertyType "Idle" GrpcTimeoutProperty = DurationProperty
  set newValue GrpcTimeoutProperty {..}
    = GrpcTimeoutProperty {idle = Prelude.pure newValue, ..}
instance Property "PerRequest" GrpcTimeoutProperty where
  type PropertyType "PerRequest" GrpcTimeoutProperty = DurationProperty
  set newValue GrpcTimeoutProperty {..}
    = GrpcTimeoutProperty {perRequest = Prelude.pure newValue, ..}