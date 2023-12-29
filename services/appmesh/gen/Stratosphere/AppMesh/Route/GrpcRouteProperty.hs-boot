module Stratosphere.AppMesh.Route.GrpcRouteProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GrpcRouteProperty :: Prelude.Type
instance ToResourceProperties GrpcRouteProperty
instance Prelude.Eq GrpcRouteProperty
instance Prelude.Show GrpcRouteProperty
instance JSON.ToJSON GrpcRouteProperty