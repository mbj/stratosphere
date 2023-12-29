module Stratosphere.AppMesh.Route.TcpRouteProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TcpRouteProperty :: Prelude.Type
instance ToResourceProperties TcpRouteProperty
instance Prelude.Eq TcpRouteProperty
instance Prelude.Show TcpRouteProperty
instance JSON.ToJSON TcpRouteProperty