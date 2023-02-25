module Stratosphere.CodeBuild.Project.ArtifactsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ArtifactsProperty :: Prelude.Type
instance ToResourceProperties ArtifactsProperty
instance JSON.ToJSON ArtifactsProperty