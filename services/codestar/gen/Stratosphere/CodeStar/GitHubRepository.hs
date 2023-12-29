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
  = GitHubRepository {code :: (Prelude.Maybe CodeProperty),
                      connectionArn :: (Prelude.Maybe (Value Prelude.Text)),
                      enableIssues :: (Prelude.Maybe (Value Prelude.Bool)),
                      isPrivate :: (Prelude.Maybe (Value Prelude.Bool)),
                      repositoryAccessToken :: (Prelude.Maybe (Value Prelude.Text)),
                      repositoryDescription :: (Prelude.Maybe (Value Prelude.Text)),
                      repositoryName :: (Value Prelude.Text),
                      repositoryOwner :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGitHubRepository ::
  Value Prelude.Text -> Value Prelude.Text -> GitHubRepository
mkGitHubRepository repositoryName repositoryOwner
  = GitHubRepository
      {repositoryName = repositoryName,
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