module Stratosphere.ECS.TaskDefinition.PortMappingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PortMappingProperty :: Prelude.Type
instance ToResourceProperties PortMappingProperty
instance Prelude.Eq PortMappingProperty
instance Prelude.Show PortMappingProperty
instance JSON.ToJSON PortMappingProperty