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
  = TcpRouteProperty {action :: TcpRouteActionProperty,
                      match :: (Prelude.Maybe TcpRouteMatchProperty),
                      timeout :: (Prelude.Maybe TcpTimeoutProperty)}
mkTcpRouteProperty :: TcpRouteActionProperty -> TcpRouteProperty
mkTcpRouteProperty action
  = TcpRouteProperty
      {action = action, match = Prelude.Nothing,
       timeout = Prelude.Nothing}
instance ToResourceProperties TcpRouteProperty where
  toResourceProperties TcpRouteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.TcpRoute",
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