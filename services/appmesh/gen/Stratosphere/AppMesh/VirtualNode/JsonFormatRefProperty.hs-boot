module Stratosphere.AppMesh.VirtualNode.JsonFormatRefProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JsonFormatRefProperty :: Prelude.Type
instance ToResourceProperties JsonFormatRefProperty
instance JSON.ToJSON JsonFormatRefProperty