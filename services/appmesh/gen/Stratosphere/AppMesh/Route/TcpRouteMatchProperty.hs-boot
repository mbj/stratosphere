module Stratosphere.AppMesh.Route.TcpRouteMatchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TcpRouteMatchProperty :: Prelude.Type
instance ToResourceProperties TcpRouteMatchProperty
instance Prelude.Eq TcpRouteMatchProperty
instance Prelude.Show TcpRouteMatchProperty
instance JSON.ToJSON TcpRouteMatchProperty