module Stratosphere.CodeBuild.Project.GitSubmodulesConfigProperty (
        GitSubmodulesConfigProperty(..), mkGitSubmodulesConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GitSubmodulesConfigProperty
  = GitSubmodulesConfigProperty {fetchSubmodules :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitSubmodulesConfigProperty ::
  Value Prelude.Bool -> GitSubmodulesConfigProperty
mkGitSubmodulesConfigProperty fetchSubmodules
  = GitSubmodulesConfigProperty {fetchSubmodules = fetchSubmodules}
instance ToResourceProperties GitSubmodulesConfigProperty where
  toResourceProperties GitSubmodulesConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.GitSubmodulesConfig",
         supportsTags = Prelude.False,
         properties = ["FetchSubmodules" JSON..= fetchSubmodules]}
instance JSON.ToJSON GitSubmodulesConfigProperty where
  toJSON GitSubmodulesConfigProperty {..}
    = JSON.object ["FetchSubmodules" JSON..= fetchSubmodules]
instance Property "FetchSubmodules" GitSubmodulesConfigProperty where
  type PropertyType "FetchSubmodules" GitSubmodulesConfigProperty = Value Prelude.Bool
  set newValue GitSubmodulesConfigProperty {}
    = GitSubmodulesConfigProperty {fetchSubmodules = newValue, ..}