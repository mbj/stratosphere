module Stratosphere.AppMesh.VirtualNode.VirtualNodeSpecProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VirtualNodeSpecProperty :: Prelude.Type
instance ToResourceProperties VirtualNodeSpecProperty
instance JSON.ToJSON VirtualNodeSpecProperty