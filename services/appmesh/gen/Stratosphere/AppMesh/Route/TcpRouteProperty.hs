module Stratosphere.AppMesh.Route.TcpRouteProperty (
        module Exports, TcpRouteProperty(..), mkTcpRouteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.TcpRouteActionProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.TcpRouteMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.TcpTimeoutProperty as Exports
import Stratosphere.ResourceProperties
data TcpRouteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html>
    TcpRouteProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html#cfn-appmesh-route-tcproute-action>
                      action :: TcpRouteActionProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html#cfn-appmesh-route-tcproute-match>
                      match :: (Prelude.Maybe TcpRouteMatchProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html#cfn-appmesh-route-tcproute-timeout>
                      timeout :: (Prelude.Maybe TcpTimeoutProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTcpRouteProperty :: TcpRouteActionProperty -> TcpRouteProperty
mkTcpRouteProperty action
  = TcpRouteProperty
      {haddock_workaround_ = (), action = action,
       match = Prelude.Nothing, timeout = Prelude.Nothing}
instance ToResourceProperties TcpRouteProperty where
  toResourceProperties TcpRouteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.TcpRoute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action]
                           (Prelude.catMaybes
                              [(JSON..=) "Match" Prelude.<$> match,
                               (JSON..=) "Timeout" Prelude.<$> timeout]))}
instance JSON.ToJSON TcpRouteProperty where
  toJSON TcpRouteProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action]
              (Prelude.catMaybes
                 [(JSON..=) "Match" Prelude.<$> match,
                  (JSON..=) "Timeout" Prelude.<$> timeout])))
instance Property "Action" TcpRouteProperty where
  type PropertyType "Action" TcpRouteProperty = TcpRouteActionProperty
  set newValue TcpRouteProperty {..}
    = TcpRouteProperty {action = newValue, ..}
instance Property "Match" TcpRouteProperty where
  type PropertyType "Match" TcpRouteProperty = TcpRouteMatchProperty
  set newValue TcpRouteProperty {..}
    = TcpRouteProperty {match = Prelude.pure newValue, ..}
instance Property "Timeout" TcpRouteProperty where
  type PropertyType "Timeout" TcpRouteProperty = TcpTimeoutProperty
  set newValue TcpRouteProperty {..}
    = TcpRouteProperty {timeout = Prelude.pure newValue, ..}