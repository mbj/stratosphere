module Stratosphere.AppMesh.VirtualNode.FileAccessLogProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FileAccessLogProperty :: Prelude.Type
instance ToResourceProperties FileAccessLogProperty
instance Prelude.Eq FileAccessLogProperty
instance Prelude.Show FileAccessLogProperty
instance JSON.ToJSON FileAccessLogProperty