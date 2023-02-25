module Stratosphere.ECS.TaskDefinition.EnvironmentFileProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EnvironmentFileProperty :: Prelude.Type
instance ToResourceProperties EnvironmentFileProperty
instance JSON.ToJSON EnvironmentFileProperty