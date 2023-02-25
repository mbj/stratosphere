module Stratosphere.AppMesh.VirtualNode.ListenerTimeoutProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ListenerTimeoutProperty :: Prelude.Type
instance ToResourceProperties ListenerTimeoutProperty
instance JSON.ToJSON ListenerTimeoutProperty