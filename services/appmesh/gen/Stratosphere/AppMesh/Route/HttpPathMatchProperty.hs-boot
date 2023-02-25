module Stratosphere.AppMesh.Route.HttpPathMatchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HttpPathMatchProperty :: Prelude.Type
instance ToResourceProperties HttpPathMatchProperty
instance JSON.ToJSON HttpPathMatchProperty