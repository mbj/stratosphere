module Stratosphere.CodeBuild.Project.SourceAuthProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SourceAuthProperty :: Prelude.Type
instance ToResourceProperties SourceAuthProperty
instance JSON.ToJSON SourceAuthProperty