module Stratosphere.AppMesh.Route.HttpRouteActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HttpRouteActionProperty :: Prelude.Type
instance ToResourceProperties HttpRouteActionProperty
instance JSON.ToJSON HttpRouteActionProperty