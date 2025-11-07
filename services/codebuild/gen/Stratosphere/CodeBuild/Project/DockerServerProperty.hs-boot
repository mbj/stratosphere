module Stratosphere.CodeBuild.Project.DockerServerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DockerServerProperty :: Prelude.Type
instance ToResourceProperties DockerServerProperty
instance Prelude.Eq DockerServerProperty
instance Prelude.Show DockerServerProperty
instance JSON.ToJSON DockerServerProperty