module Stratosphere.CodeDeploy.DeploymentGroup.GitHubLocationProperty (
        GitHubLocationProperty(..), mkGitHubLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GitHubLocationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-githublocation.html>
    GitHubLocationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-githublocation.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-githublocation-commitid>
                            commitId :: (Value Prelude.Text),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-githublocation.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-githublocation-repository>
                            repository :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitHubLocationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> GitHubLocationProperty
mkGitHubLocationProperty commitId repository
  = GitHubLocationProperty
      {commitId = commitId, repository = repository}
instance ToResourceProperties GitHubLocationProperty where
  toResourceProperties GitHubLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.GitHubLocation",
         supportsTags = Prelude.False,
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