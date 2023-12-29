module Stratosphere.AppMesh.VirtualNode.BackendProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BackendProperty :: Prelude.Type
instance ToResourceProperties BackendProperty
instance Prelude.Eq BackendProperty
instance Prelude.Show BackendProperty
instance JSON.ToJSON BackendProperty