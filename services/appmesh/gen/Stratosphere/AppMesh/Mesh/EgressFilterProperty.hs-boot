module Stratosphere.AppMesh.Mesh.EgressFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EgressFilterProperty :: Prelude.Type
instance ToResourceProperties EgressFilterProperty
instance Prelude.Eq EgressFilterProperty
instance Prelude.Show EgressFilterProperty
instance JSON.ToJSON EgressFilterProperty