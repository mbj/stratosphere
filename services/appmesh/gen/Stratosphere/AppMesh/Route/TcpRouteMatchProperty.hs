module Stratosphere.AppMesh.Route.TcpRouteMatchProperty (
        TcpRouteMatchProperty(..), mkTcpRouteMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TcpRouteMatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproutematch.html>
    TcpRouteMatchProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproutematch.html#cfn-appmesh-route-tcproutematch-port>
                           port :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTcpRouteMatchProperty :: TcpRouteMatchProperty
mkTcpRouteMatchProperty
  = TcpRouteMatchProperty
      {haddock_workaround_ = (), port = Prelude.Nothing}
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
  set newValue TcpRouteMatchProperty {..}
    = TcpRouteMatchProperty {port = Prelude.pure newValue, ..}