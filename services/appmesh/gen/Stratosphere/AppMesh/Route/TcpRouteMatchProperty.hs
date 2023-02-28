module Stratosphere.AppMesh.Route.TcpRouteMatchProperty (
        TcpRouteMatchProperty(..), mkTcpRouteMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TcpRouteMatchProperty
  = TcpRouteMatchProperty {port :: (Prelude.Maybe (Value Prelude.Integer))}
mkTcpRouteMatchProperty :: TcpRouteMatchProperty
mkTcpRouteMatchProperty
  = TcpRouteMatchProperty {port = Prelude.Nothing}
instance ToResourceProperties TcpRouteMatchProperty where
  toResourceProperties TcpRouteMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.TcpRouteMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Port" Prelude.<$> port])}
instance JSON.ToJSON TcpRouteMatchProperty where
  toJSON TcpRouteMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Port" Prelude.<$> port]))
instance Property "Port" TcpRouteMatchProperty where
  type PropertyType "Port" TcpRouteMatchProperty = Value Prelude.Integer
  set newValue TcpRouteMatchProperty {}
    = TcpRouteMatchProperty {port = Prelude.pure newValue, ..}