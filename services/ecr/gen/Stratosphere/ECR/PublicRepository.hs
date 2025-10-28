module Stratosphere.ECR.PublicRepository (
        module Exports, PublicRepository(..), mkPublicRepository
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECR.PublicRepository.RepositoryCatalogDataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PublicRepository
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-publicrepository.html>
    PublicRepository {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-publicrepository.html#cfn-ecr-publicrepository-repositorycatalogdata>
                      repositoryCatalogData :: (Prelude.Maybe RepositoryCatalogDataProperty),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-publicrepository.html#cfn-ecr-publicrepository-repositoryname>
                      repositoryName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-publicrepository.html#cfn-ecr-publicrepository-repositorypolicytext>
                      repositoryPolicyText :: (Prelude.Maybe JSON.Object),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-publicrepository.html#cfn-ecr-publicrepository-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublicRepository :: PublicRepository
mkPublicRepository
  = PublicRepository
      {repositoryCatalogData = Prelude.Nothing,
       repositoryName = Prelude.Nothing,
       repositoryPolicyText = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties PublicRepository where
  toResourceProperties PublicRepository {..}
    = ResourceProperties
        {awsType = "AWS::ECR::PublicRepository",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RepositoryCatalogData"
                              Prelude.<$> repositoryCatalogData,
                            (JSON..=) "RepositoryName" Prelude.<$> repositoryName,
                            (JSON..=) "RepositoryPolicyText" Prelude.<$> repositoryPolicyText,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON PublicRepository where
  toJSON PublicRepository {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RepositoryCatalogData"
                 Prelude.<$> repositoryCatalogData,
               (JSON..=) "RepositoryName" Prelude.<$> repositoryName,
               (JSON..=) "RepositoryPolicyText" Prelude.<$> repositoryPolicyText,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "RepositoryCatalogData" PublicRepository where
  type PropertyType "RepositoryCatalogData" PublicRepository = RepositoryCatalogDataProperty
  set newValue PublicRepository {..}
    = PublicRepository
        {repositoryCatalogData = Prelude.pure newValue, ..}
instance Property "RepositoryName" PublicRepository where
  type PropertyType "RepositoryName" PublicRepository = Value Prelude.Text
  set newValue PublicRepository {..}
    = PublicRepository {repositoryName = Prelude.pure newValue, ..}
instance Property "RepositoryPolicyText" PublicRepository where
  type PropertyType "RepositoryPolicyText" PublicRepository = JSON.Object
  set newValue PublicRepository {..}
    = PublicRepository
        {repositoryPolicyText = Prelude.pure newValue, ..}
instance Property "Tags" PublicRepository where
  type PropertyType "Tags" PublicRepository = [Tag]
  set newValue PublicRepository {..}
    = PublicRepository {tags = Prelude.pure newValue, ..}