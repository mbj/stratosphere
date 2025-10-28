module Stratosphere.AppMesh.Route.HttpRouteProperty (
        module Exports, HttpRouteProperty(..), mkHttpRouteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.HttpRetryPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.HttpRouteActionProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.HttpRouteMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.HttpTimeoutProperty as Exports
import Stratosphere.ResourceProperties
data HttpRouteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html>
    HttpRouteProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-action>
                       action :: HttpRouteActionProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-match>
                       match :: HttpRouteMatchProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-retrypolicy>
                       retryPolicy :: (Prelude.Maybe HttpRetryPolicyProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-timeout>
                       timeout :: (Prelude.Maybe HttpTimeoutProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpRouteProperty ::
  HttpRouteActionProperty
  -> HttpRouteMatchProperty -> HttpRouteProperty
mkHttpRouteProperty action match
  = HttpRouteProperty
      {haddock_workaround_ = (), action = action, match = match,
       retryPolicy = Prelude.Nothing, timeout = Prelude.Nothing}
instance ToResourceProperties HttpRouteProperty where
  toResourceProperties HttpRouteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.HttpRoute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Match" JSON..= match]
                           (Prelude.catMaybes
                              [(JSON..=) "RetryPolicy" Prelude.<$> retryPolicy,
                               (JSON..=) "Timeout" Prelude.<$> timeout]))}
instance JSON.ToJSON HttpRouteProperty where
  toJSON HttpRouteProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Match" JSON..= match]
              (Prelude.catMaybes
                 [(JSON..=) "RetryPolicy" Prelude.<$> retryPolicy,
                  (JSON..=) "Timeout" Prelude.<$> timeout])))
instance Property "Action" HttpRouteProperty where
  type PropertyType "Action" HttpRouteProperty = HttpRouteActionProperty
  set newValue HttpRouteProperty {..}
    = HttpRouteProperty {action = newValue, ..}
instance Property "Match" HttpRouteProperty where
  type PropertyType "Match" HttpRouteProperty = HttpRouteMatchProperty
  set newValue HttpRouteProperty {..}
    = HttpRouteProperty {match = newValue, ..}
instance Property "RetryPolicy" HttpRouteProperty where
  type PropertyType "RetryPolicy" HttpRouteProperty = HttpRetryPolicyProperty
  set newValue HttpRouteProperty {..}
    = HttpRouteProperty {retryPolicy = Prelude.pure newValue, ..}
instance Property "Timeout" HttpRouteProperty where
  type PropertyType "Timeout" HttpRouteProperty = HttpTimeoutProperty
  set newValue HttpRouteProperty {..}
    = HttpRouteProperty {timeout = Prelude.pure newValue, ..}