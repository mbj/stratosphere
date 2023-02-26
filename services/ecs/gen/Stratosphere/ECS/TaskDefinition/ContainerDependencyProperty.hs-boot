module Stratosphere.ECS.TaskDefinition.ContainerDependencyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ContainerDependencyProperty :: Prelude.Type
instance ToResourceProperties ContainerDependencyProperty
instance JSON.ToJSON ContainerDependencyProperty