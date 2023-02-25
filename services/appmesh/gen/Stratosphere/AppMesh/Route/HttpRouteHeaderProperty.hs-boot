module Stratosphere.AppMesh.Route.HttpRouteHeaderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HttpRouteHeaderProperty :: Prelude.Type
instance ToResourceProperties HttpRouteHeaderProperty
instance JSON.ToJSON HttpRouteHeaderProperty