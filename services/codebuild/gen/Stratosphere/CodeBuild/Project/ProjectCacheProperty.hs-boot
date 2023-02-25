module Stratosphere.CodeBuild.Project.ProjectCacheProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProjectCacheProperty :: Prelude.Type
instance ToResourceProperties ProjectCacheProperty
instance JSON.ToJSON ProjectCacheProperty