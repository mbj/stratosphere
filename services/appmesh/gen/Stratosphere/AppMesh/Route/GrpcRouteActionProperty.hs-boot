module Stratosphere.AppMesh.Route.GrpcRouteActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GrpcRouteActionProperty :: Prelude.Type
instance ToResourceProperties GrpcRouteActionProperty
instance JSON.ToJSON GrpcRouteActionProperty