module Stratosphere.AppMesh.VirtualNode.HttpTimeoutProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HttpTimeoutProperty :: Prelude.Type
instance ToResourceProperties HttpTimeoutProperty
instance Prelude.Eq HttpTimeoutProperty
instance Prelude.Show HttpTimeoutProperty
instance JSON.ToJSON HttpTimeoutProperty