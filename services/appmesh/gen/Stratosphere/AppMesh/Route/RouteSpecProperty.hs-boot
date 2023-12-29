module Stratosphere.AppMesh.Route.RouteSpecProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RouteSpecProperty :: Prelude.Type
instance ToResourceProperties RouteSpecProperty
instance Prelude.Eq RouteSpecProperty
instance Prelude.Show RouteSpecProperty
instance JSON.ToJSON RouteSpecProperty