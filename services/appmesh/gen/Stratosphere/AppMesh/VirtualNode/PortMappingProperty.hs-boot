module Stratosphere.AppMesh.VirtualNode.PortMappingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PortMappingProperty :: Prelude.Type
instance ToResourceProperties PortMappingProperty
instance JSON.ToJSON PortMappingProperty