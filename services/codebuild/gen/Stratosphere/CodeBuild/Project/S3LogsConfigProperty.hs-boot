module Stratosphere.CodeBuild.Project.S3LogsConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3LogsConfigProperty :: Prelude.Type
instance ToResourceProperties S3LogsConfigProperty
instance Prelude.Eq S3LogsConfigProperty
instance Prelude.Show S3LogsConfigProperty
instance JSON.ToJSON S3LogsConfigProperty