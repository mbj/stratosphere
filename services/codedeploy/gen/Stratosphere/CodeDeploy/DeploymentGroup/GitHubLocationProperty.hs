module Stratosphere.CodeDeploy.DeploymentGroup.GitHubLocationProperty (
        GitHubLocationProperty(..), mkGitHubLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GitHubLocationProperty
  = GitHubLocationProperty {commitId :: (Value Prelude.Text),
                            repository :: (Value Prelude.Text)}
mkGitHubLocationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> GitHubLocationProperty
mkGitHubLocationProperty commitId repository
  = GitHubLocationProperty
      {commitId = commitId, repository = repository}
instance ToResourceProperties GitHubLocationProperty where
  toResourceProperties GitHubLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.GitHubLocation",
         properties = ["CommitId" JSON..= commitId,
                       "Repository" JSON..= repository]}
instance JSON.ToJSON GitHubLocationProperty where
  toJSON GitHubLocationProperty {..}
    = JSON.object
        ["CommitId" JSON..= commitId, "Repository" JSON..= repository]
instance Property "CommitId" GitHubLocationProperty where
  type PropertyType "CommitId" GitHubLocationProperty = Value Prelude.Text
  set newValue GitHubLocationProperty {..}
    = GitHubLocationProperty {commitId = newValue, ..}
instance Property "Repository" GitHubLocationProperty where
  type PropertyType "Repository" GitHubLocationProperty = Value Prelude.Text
  set newValue GitHubLocationProperty {..}
    = GitHubLocationProperty {repository = newValue, ..}