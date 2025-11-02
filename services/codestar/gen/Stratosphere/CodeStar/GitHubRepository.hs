module Stratosphere.CodeStar.GitHubRepository (
        module Exports, GitHubRepository(..), mkGitHubRepository
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeStar.GitHubRepository.CodeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GitHubRepository
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html>
    GitHubRepository {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-code>
                      code :: (Prelude.Maybe CodeProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-connectionarn>
                      connectionArn :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-enableissues>
                      enableIssues :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-isprivate>
                      isPrivate :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositoryaccesstoken>
                      repositoryAccessToken :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositorydescription>
                      repositoryDescription :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositoryname>
                      repositoryName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositoryowner>
                      repositoryOwner :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitHubRepository ::
  Value Prelude.Text -> Value Prelude.Text -> GitHubRepository
mkGitHubRepository repositoryName repositoryOwner
  = GitHubRepository
      {haddock_workaround_ = (), repositoryName = repositoryName,
       repositoryOwner = repositoryOwner, code = Prelude.Nothing,
       connectionArn = Prelude.Nothing, enableIssues = Prelude.Nothing,
       isPrivate = Prelude.Nothing,
       repositoryAccessToken = Prelude.Nothing,
       repositoryDescription = Prelude.Nothing}
instance ToResourceProperties GitHubRepository where
  toResourceProperties GitHubRepository {..}
    = ResourceProperties
        {awsType = "AWS::CodeStar::GitHubRepository",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RepositoryName" JSON..= repositoryName,
                            "RepositoryOwner" JSON..= repositoryOwner]
                           (Prelude.catMaybes
                              [(JSON..=) "Code" Prelude.<$> code,
                               (JSON..=) "ConnectionArn" Prelude.<$> connectionArn,
                               (JSON..=) "EnableIssues" Prelude.<$> enableIssues,
                               (JSON..=) "IsPrivate" Prelude.<$> isPrivate,
                               (JSON..=) "RepositoryAccessToken"
                                 Prelude.<$> repositoryAccessToken,
                               (JSON..=) "RepositoryDescription"
                                 Prelude.<$> repositoryDescription]))}
instance JSON.ToJSON GitHubRepository where
  toJSON GitHubRepository {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RepositoryName" JSON..= repositoryName,
               "RepositoryOwner" JSON..= repositoryOwner]
              (Prelude.catMaybes
                 [(JSON..=) "Code" Prelude.<$> code,
                  (JSON..=) "ConnectionArn" Prelude.<$> connectionArn,
                  (JSON..=) "EnableIssues" Prelude.<$> enableIssues,
                  (JSON..=) "IsPrivate" Prelude.<$> isPrivate,
                  (JSON..=) "RepositoryAccessToken"
                    Prelude.<$> repositoryAccessToken,
                  (JSON..=) "RepositoryDescription"
                    Prelude.<$> repositoryDescription])))
instance Property "Code" GitHubRepository where
  type PropertyType "Code" GitHubRepository = CodeProperty
  set newValue GitHubRepository {..}
    = GitHubRepository {code = Prelude.pure newValue, ..}
instance Property "ConnectionArn" GitHubRepository where
  type PropertyType "ConnectionArn" GitHubRepository = Value Prelude.Text
  set newValue GitHubRepository {..}
    = GitHubRepository {connectionArn = Prelude.pure newValue, ..}
instance Property "EnableIssues" GitHubRepository where
  type PropertyType "EnableIssues" GitHubRepository = Value Prelude.Bool
  set newValue GitHubRepository {..}
    = GitHubRepository {enableIssues = Prelude.pure newValue, ..}
instance Property "IsPrivate" GitHubRepository where
  type PropertyType "IsPrivate" GitHubRepository = Value Prelude.Bool
  set newValue GitHubRepository {..}
    = GitHubRepository {isPrivate = Prelude.pure newValue, ..}
instance Property "RepositoryAccessToken" GitHubRepository where
  type PropertyType "RepositoryAccessToken" GitHubRepository = Value Prelude.Text
  set newValue GitHubRepository {..}
    = GitHubRepository
        {repositoryAccessToken = Prelude.pure newValue, ..}
instance Property "RepositoryDescription" GitHubRepository where
  type PropertyType "RepositoryDescription" GitHubRepository = Value Prelude.Text
  set newValue GitHubRepository {..}
    = GitHubRepository
        {repositoryDescription = Prelude.pure newValue, ..}
instance Property "RepositoryName" GitHubRepository where
  type PropertyType "RepositoryName" GitHubRepository = Value Prelude.Text
  set newValue GitHubRepository {..}
    = GitHubRepository {repositoryName = newValue, ..}
instance Property "RepositoryOwner" GitHubRepository where
  type PropertyType "RepositoryOwner" GitHubRepository = Value Prelude.Text
  set newValue GitHubRepository {..}
    = GitHubRepository {repositoryOwner = newValue, ..}