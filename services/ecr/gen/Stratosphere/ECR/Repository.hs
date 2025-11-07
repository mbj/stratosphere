module Stratosphere.ECR.Repository (
        module Exports, Repository(..), mkRepository
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECR.Repository.EncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECR.Repository.ImageScanningConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECR.Repository.ImageTagMutabilityExclusionFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.ECR.Repository.LifecyclePolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Repository
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html>
    Repository {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-emptyondelete>
                emptyOnDelete :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-encryptionconfiguration>
                encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-imagescanningconfiguration>
                imageScanningConfiguration :: (Prelude.Maybe ImageScanningConfigurationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-imagetagmutability>
                imageTagMutability :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-imagetagmutabilityexclusionfilters>
                imageTagMutabilityExclusionFilters :: (Prelude.Maybe [ImageTagMutabilityExclusionFilterProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-lifecyclepolicy>
                lifecyclePolicy :: (Prelude.Maybe LifecyclePolicyProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-repositoryname>
                repositoryName :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-repositorypolicytext>
                repositoryPolicyText :: (Prelude.Maybe JSON.Object),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepository :: Repository
mkRepository
  = Repository
      {haddock_workaround_ = (), emptyOnDelete = Prelude.Nothing,
       encryptionConfiguration = Prelude.Nothing,
       imageScanningConfiguration = Prelude.Nothing,
       imageTagMutability = Prelude.Nothing,
       imageTagMutabilityExclusionFilters = Prelude.Nothing,
       lifecyclePolicy = Prelude.Nothing,
       repositoryName = Prelude.Nothing,
       repositoryPolicyText = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Repository where
  toResourceProperties Repository {..}
    = ResourceProperties
        {awsType = "AWS::ECR::Repository", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EmptyOnDelete" Prelude.<$> emptyOnDelete,
                            (JSON..=) "EncryptionConfiguration"
                              Prelude.<$> encryptionConfiguration,
                            (JSON..=) "ImageScanningConfiguration"
                              Prelude.<$> imageScanningConfiguration,
                            (JSON..=) "ImageTagMutability" Prelude.<$> imageTagMutability,
                            (JSON..=) "ImageTagMutabilityExclusionFilters"
                              Prelude.<$> imageTagMutabilityExclusionFilters,
                            (JSON..=) "LifecyclePolicy" Prelude.<$> lifecyclePolicy,
                            (JSON..=) "RepositoryName" Prelude.<$> repositoryName,
                            (JSON..=) "RepositoryPolicyText" Prelude.<$> repositoryPolicyText,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Repository where
  toJSON Repository {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EmptyOnDelete" Prelude.<$> emptyOnDelete,
               (JSON..=) "EncryptionConfiguration"
                 Prelude.<$> encryptionConfiguration,
               (JSON..=) "ImageScanningConfiguration"
                 Prelude.<$> imageScanningConfiguration,
               (JSON..=) "ImageTagMutability" Prelude.<$> imageTagMutability,
               (JSON..=) "ImageTagMutabilityExclusionFilters"
                 Prelude.<$> imageTagMutabilityExclusionFilters,
               (JSON..=) "LifecyclePolicy" Prelude.<$> lifecyclePolicy,
               (JSON..=) "RepositoryName" Prelude.<$> repositoryName,
               (JSON..=) "RepositoryPolicyText" Prelude.<$> repositoryPolicyText,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "EmptyOnDelete" Repository where
  type PropertyType "EmptyOnDelete" Repository = Value Prelude.Bool
  set newValue Repository {..}
    = Repository {emptyOnDelete = Prelude.pure newValue, ..}
instance Property "EncryptionConfiguration" Repository where
  type PropertyType "EncryptionConfiguration" Repository = EncryptionConfigurationProperty
  set newValue Repository {..}
    = Repository {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "ImageScanningConfiguration" Repository where
  type PropertyType "ImageScanningConfiguration" Repository = ImageScanningConfigurationProperty
  set newValue Repository {..}
    = Repository
        {imageScanningConfiguration = Prelude.pure newValue, ..}
instance Property "ImageTagMutability" Repository where
  type PropertyType "ImageTagMutability" Repository = Value Prelude.Text
  set newValue Repository {..}
    = Repository {imageTagMutability = Prelude.pure newValue, ..}
instance Property "ImageTagMutabilityExclusionFilters" Repository where
  type PropertyType "ImageTagMutabilityExclusionFilters" Repository = [ImageTagMutabilityExclusionFilterProperty]
  set newValue Repository {..}
    = Repository
        {imageTagMutabilityExclusionFilters = Prelude.pure newValue, ..}
instance Property "LifecyclePolicy" Repository where
  type PropertyType "LifecyclePolicy" Repository = LifecyclePolicyProperty
  set newValue Repository {..}
    = Repository {lifecyclePolicy = Prelude.pure newValue, ..}
instance Property "RepositoryName" Repository where
  type PropertyType "RepositoryName" Repository = Value Prelude.Text
  set newValue Repository {..}
    = Repository {repositoryName = Prelude.pure newValue, ..}
instance Property "RepositoryPolicyText" Repository where
  type PropertyType "RepositoryPolicyText" Repository = JSON.Object
  set newValue Repository {..}
    = Repository {repositoryPolicyText = Prelude.pure newValue, ..}
instance Property "Tags" Repository where
  type PropertyType "Tags" Repository = [Tag]
  set newValue Repository {..}
    = Repository {tags = Prelude.pure newValue, ..}