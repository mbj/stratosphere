module Stratosphere.CodeCommit.Repository (
        module Exports, Repository(..), mkRepository
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeCommit.Repository.CodeProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeCommit.Repository.RepositoryTriggerProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Repository
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html>
    Repository {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-code>
                code :: (Prelude.Maybe CodeProperty),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-kmskeyid>
                kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-repositorydescription>
                repositoryDescription :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-repositoryname>
                repositoryName :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-triggers>
                triggers :: (Prelude.Maybe [RepositoryTriggerProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepository :: Value Prelude.Text -> Repository
mkRepository repositoryName
  = Repository
      {repositoryName = repositoryName, code = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing,
       repositoryDescription = Prelude.Nothing, tags = Prelude.Nothing,
       triggers = Prelude.Nothing}
instance ToResourceProperties Repository where
  toResourceProperties Repository {..}
    = ResourceProperties
        {awsType = "AWS::CodeCommit::Repository",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RepositoryName" JSON..= repositoryName]
                           (Prelude.catMaybes
                              [(JSON..=) "Code" Prelude.<$> code,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "RepositoryDescription"
                                 Prelude.<$> repositoryDescription,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Triggers" Prelude.<$> triggers]))}
instance JSON.ToJSON Repository where
  toJSON Repository {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RepositoryName" JSON..= repositoryName]
              (Prelude.catMaybes
                 [(JSON..=) "Code" Prelude.<$> code,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "RepositoryDescription"
                    Prelude.<$> repositoryDescription,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Triggers" Prelude.<$> triggers])))
instance Property "Code" Repository where
  type PropertyType "Code" Repository = CodeProperty
  set newValue Repository {..}
    = Repository {code = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Repository where
  type PropertyType "KmsKeyId" Repository = Value Prelude.Text
  set newValue Repository {..}
    = Repository {kmsKeyId = Prelude.pure newValue, ..}
instance Property "RepositoryDescription" Repository where
  type PropertyType "RepositoryDescription" Repository = Value Prelude.Text
  set newValue Repository {..}
    = Repository {repositoryDescription = Prelude.pure newValue, ..}
instance Property "RepositoryName" Repository where
  type PropertyType "RepositoryName" Repository = Value Prelude.Text
  set newValue Repository {..}
    = Repository {repositoryName = newValue, ..}
instance Property "Tags" Repository where
  type PropertyType "Tags" Repository = [Tag]
  set newValue Repository {..}
    = Repository {tags = Prelude.pure newValue, ..}
instance Property "Triggers" Repository where
  type PropertyType "Triggers" Repository = [RepositoryTriggerProperty]
  set newValue Repository {..}
    = Repository {triggers = Prelude.pure newValue, ..}