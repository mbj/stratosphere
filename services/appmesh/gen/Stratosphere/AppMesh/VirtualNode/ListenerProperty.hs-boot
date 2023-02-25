module Stratosphere.AppMesh.VirtualNode.ListenerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ListenerProperty :: Prelude.Type
instance ToResourceProperties ListenerProperty
instance JSON.ToJSON ListenerProperty