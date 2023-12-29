module Stratosphere.AppMesh.Route.HttpRouteProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HttpRouteProperty :: Prelude.Type
instance ToResourceProperties HttpRouteProperty
instance Prelude.Eq HttpRouteProperty
instance Prelude.Show HttpRouteProperty
instance JSON.ToJSON HttpRouteProperty