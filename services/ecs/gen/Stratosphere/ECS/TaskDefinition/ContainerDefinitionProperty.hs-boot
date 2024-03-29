module Stratosphere.ECS.TaskDefinition.ContainerDefinitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ContainerDefinitionProperty :: Prelude.Type
instance ToResourceProperties ContainerDefinitionProperty
instance Prelude.Eq ContainerDefinitionProperty
instance Prelude.Show ContainerDefinitionProperty
instance JSON.ToJSON ContainerDefinitionProperty