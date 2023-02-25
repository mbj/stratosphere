module Stratosphere.AppMesh.Route.HttpRouteMatchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HttpRouteMatchProperty :: Prelude.Type
instance ToResourceProperties HttpRouteMatchProperty
instance JSON.ToJSON HttpRouteMatchProperty