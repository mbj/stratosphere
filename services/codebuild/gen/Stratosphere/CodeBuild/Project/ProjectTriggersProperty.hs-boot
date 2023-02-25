module Stratosphere.CodeBuild.Project.ProjectTriggersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProjectTriggersProperty :: Prelude.Type
instance ToResourceProperties ProjectTriggersProperty
instance JSON.ToJSON ProjectTriggersProperty