module Stratosphere.AppMesh.VirtualNode.BackendDefaultsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BackendDefaultsProperty :: Prelude.Type
instance ToResourceProperties BackendDefaultsProperty
instance JSON.ToJSON BackendDefaultsProperty