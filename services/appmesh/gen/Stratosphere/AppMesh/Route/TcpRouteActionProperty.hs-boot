module Stratosphere.AppMesh.Route.TcpRouteActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TcpRouteActionProperty :: Prelude.Type
instance ToResourceProperties TcpRouteActionProperty
instance JSON.ToJSON TcpRouteActionProperty