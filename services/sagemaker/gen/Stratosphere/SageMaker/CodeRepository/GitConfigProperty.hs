module Stratosphere.SageMaker.CodeRepository.GitConfigProperty (
        GitConfigProperty(..), mkGitConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GitConfigProperty
  = GitConfigProperty {branch :: (Prelude.Maybe (Value Prelude.Text)),
                       repositoryUrl :: (Value Prelude.Text),
                       secretArn :: (Prelude.Maybe (Value Prelude.Text))}
mkGitConfigProperty :: Value Prelude.Text -> GitConfigProperty
mkGitConfigProperty repositoryUrl
  = GitConfigProperty
      {repositoryUrl = repositoryUrl, branch = Prelude.Nothing,
       secretArn = Prelude.Nothing}
instance ToResourceProperties GitConfigProperty where
  toResourceProperties GitConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::CodeRepository.GitConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RepositoryUrl" JSON..= repositoryUrl]
                           (Prelude.catMaybes
                              [(JSON..=) "Branch" Prelude.<$> branch,
                               (JSON..=) "SecretArn" Prelude.<$> secretArn]))}
instance JSON.ToJSON GitConfigProperty where
  toJSON GitConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RepositoryUrl" JSON..= repositoryUrl]
              (Prelude.catMaybes
                 [(JSON..=) "Branch" Prelude.<$> branch,
                  (JSON..=) "SecretArn" Prelude.<$> secretArn])))
instance Property "Branch" GitConfigProperty where
  type PropertyType "Branch" GitConfigProperty = Value Prelude.Text
  set newValue GitConfigProperty {..}
    = GitConfigProperty {branch = Prelude.pure newValue, ..}
instance Property "RepositoryUrl" GitConfigProperty where
  type PropertyType "RepositoryUrl" GitConfigProperty = Value Prelude.Text
  set newValue GitConfigProperty {..}
    = GitConfigProperty {repositoryUrl = newValue, ..}
instance Property "SecretArn" GitConfigProperty where
  type PropertyType "SecretArn" GitConfigProperty = Value Prelude.Text
  set newValue GitConfigProperty {..}
    = GitConfigProperty {secretArn = Prelude.pure newValue, ..}