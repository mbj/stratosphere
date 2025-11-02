module Stratosphere.AppMesh.Route.GrpcRouteProperty (
        module Exports, GrpcRouteProperty(..), mkGrpcRouteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.GrpcRetryPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.GrpcRouteActionProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.GrpcRouteMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.GrpcTimeoutProperty as Exports
import Stratosphere.ResourceProperties
data GrpcRouteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html>
    GrpcRouteProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html#cfn-appmesh-route-grpcroute-action>
                       action :: GrpcRouteActionProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html#cfn-appmesh-route-grpcroute-match>
                       match :: GrpcRouteMatchProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html#cfn-appmesh-route-grpcroute-retrypolicy>
                       retryPolicy :: (Prelude.Maybe GrpcRetryPolicyProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html#cfn-appmesh-route-grpcroute-timeout>
                       timeout :: (Prelude.Maybe GrpcTimeoutProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcRouteProperty ::
  GrpcRouteActionProperty
  -> GrpcRouteMatchProperty -> GrpcRouteProperty
mkGrpcRouteProperty action match
  = GrpcRouteProperty
      {haddock_workaround_ = (), action = action, match = match,
       retryPolicy = Prelude.Nothing, timeout = Prelude.Nothing}
instance ToResourceProperties GrpcRouteProperty where
  toResourceProperties GrpcRouteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.GrpcRoute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Match" JSON..= match]
                           (Prelude.catMaybes
                              [(JSON..=) "RetryPolicy" Prelude.<$> retryPolicy,
                               (JSON..=) "Timeout" Prelude.<$> timeout]))}
instance JSON.ToJSON GrpcRouteProperty where
  toJSON GrpcRouteProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Match" JSON..= match]
              (Prelude.catMaybes
                 [(JSON..=) "RetryPolicy" Prelude.<$> retryPolicy,
                  (JSON..=) "Timeout" Prelude.<$> timeout])))
instance Property "Action" GrpcRouteProperty where
  type PropertyType "Action" GrpcRouteProperty = GrpcRouteActionProperty
  set newValue GrpcRouteProperty {..}
    = GrpcRouteProperty {action = newValue, ..}
instance Property "Match" GrpcRouteProperty where
  type PropertyType "Match" GrpcRouteProperty = GrpcRouteMatchProperty
  set newValue GrpcRouteProperty {..}
    = GrpcRouteProperty {match = newValue, ..}
instance Property "RetryPolicy" GrpcRouteProperty where
  type PropertyType "RetryPolicy" GrpcRouteProperty = GrpcRetryPolicyProperty
  set newValue GrpcRouteProperty {..}
    = GrpcRouteProperty {retryPolicy = Prelude.pure newValue, ..}
instance Property "Timeout" GrpcRouteProperty where
  type PropertyType "Timeout" GrpcRouteProperty = GrpcTimeoutProperty
  set newValue GrpcRouteProperty {..}
    = GrpcRouteProperty {timeout = Prelude.pure newValue, ..}