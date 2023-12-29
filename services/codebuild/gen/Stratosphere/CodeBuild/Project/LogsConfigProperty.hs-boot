module Stratosphere.CodeBuild.Project.LogsConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LogsConfigProperty :: Prelude.Type
instance ToResourceProperties LogsConfigProperty
instance Prelude.Eq LogsConfigProperty
instance Prelude.Show LogsConfigProperty
instance JSON.ToJSON LogsConfigProperty