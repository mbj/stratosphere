module Stratosphere.AppMesh.VirtualNode.AccessLogProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AccessLogProperty :: Prelude.Type
instance ToResourceProperties AccessLogProperty
instance JSON.ToJSON AccessLogProperty