module Stratosphere.AppMesh.Mesh.MeshSpecProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MeshSpecProperty :: Prelude.Type
instance ToResourceProperties MeshSpecProperty
instance JSON.ToJSON MeshSpecProperty