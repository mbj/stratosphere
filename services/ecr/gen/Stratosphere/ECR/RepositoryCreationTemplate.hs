module Stratosphere.ECR.RepositoryCreationTemplate (
        module Exports, RepositoryCreationTemplate(..),
        mkRepositoryCreationTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECR.RepositoryCreationTemplate.EncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RepositoryCreationTemplate
  = RepositoryCreationTemplate {appliedFor :: (ValueList Prelude.Text),
                                customRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                description :: (Prelude.Maybe (Value Prelude.Text)),
                                encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
                                imageTagMutability :: (Prelude.Maybe (Value Prelude.Text)),
                                lifecyclePolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                prefix :: (Value Prelude.Text),
                                repositoryPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                resourceTags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepositoryCreationTemplate ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> RepositoryCreationTemplate
mkRepositoryCreationTemplate appliedFor prefix
  = RepositoryCreationTemplate
      {appliedFor = appliedFor, prefix = prefix,
       customRoleArn = Prelude.Nothing, description = Prelude.Nothing,
       encryptionConfiguration = Prelude.Nothing,
       imageTagMutability = Prelude.Nothing,
       lifecyclePolicy = Prelude.Nothing,
       repositoryPolicy = Prelude.Nothing, resourceTags = Prelude.Nothing}
instance ToResourceProperties RepositoryCreationTemplate where
  toResourceProperties RepositoryCreationTemplate {..}
    = ResourceProperties
        {awsType = "AWS::ECR::RepositoryCreationTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppliedFor" JSON..= appliedFor, "Prefix" JSON..= prefix]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomRoleArn" Prelude.<$> customRoleArn,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EncryptionConfiguration"
                                 Prelude.<$> encryptionConfiguration,
                               (JSON..=) "ImageTagMutability" Prelude.<$> imageTagMutability,
                               (JSON..=) "LifecyclePolicy" Prelude.<$> lifecyclePolicy,
                               (JSON..=) "RepositoryPolicy" Prelude.<$> repositoryPolicy,
                               (JSON..=) "ResourceTags" Prelude.<$> resourceTags]))}
instance JSON.ToJSON RepositoryCreationTemplate where
  toJSON RepositoryCreationTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppliedFor" JSON..= appliedFor, "Prefix" JSON..= prefix]
              (Prelude.catMaybes
                 [(JSON..=) "CustomRoleArn" Prelude.<$> customRoleArn,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EncryptionConfiguration"
                    Prelude.<$> encryptionConfiguration,
                  (JSON..=) "ImageTagMutability" Prelude.<$> imageTagMutability,
                  (JSON..=) "LifecyclePolicy" Prelude.<$> lifecyclePolicy,
                  (JSON..=) "RepositoryPolicy" Prelude.<$> repositoryPolicy,
                  (JSON..=) "ResourceTags" Prelude.<$> resourceTags])))
instance Property "AppliedFor" RepositoryCreationTemplate where
  type PropertyType "AppliedFor" RepositoryCreationTemplate = ValueList Prelude.Text
  set newValue RepositoryCreationTemplate {..}
    = RepositoryCreationTemplate {appliedFor = newValue, ..}
instance Property "CustomRoleArn" RepositoryCreationTemplate where
  type PropertyType "CustomRoleArn" RepositoryCreationTemplate = Value Prelude.Text
  set newValue RepositoryCreationTemplate {..}
    = RepositoryCreationTemplate
        {customRoleArn = Prelude.pure newValue, ..}
instance Property "Description" RepositoryCreationTemplate where
  type PropertyType "Description" RepositoryCreationTemplate = Value Prelude.Text
  set newValue RepositoryCreationTemplate {..}
    = RepositoryCreationTemplate
        {description = Prelude.pure newValue, ..}
instance Property "EncryptionConfiguration" RepositoryCreationTemplate where
  type PropertyType "EncryptionConfiguration" RepositoryCreationTemplate = EncryptionConfigurationProperty
  set newValue RepositoryCreationTemplate {..}
    = RepositoryCreationTemplate
        {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "ImageTagMutability" RepositoryCreationTemplate where
  type PropertyType "ImageTagMutability" RepositoryCreationTemplate = Value Prelude.Text
  set newValue RepositoryCreationTemplate {..}
    = RepositoryCreationTemplate
        {imageTagMutability = Prelude.pure newValue, ..}
instance Property "LifecyclePolicy" RepositoryCreationTemplate where
  type PropertyType "LifecyclePolicy" RepositoryCreationTemplate = Value Prelude.Text
  set newValue RepositoryCreationTemplate {..}
    = RepositoryCreationTemplate
        {lifecyclePolicy = Prelude.pure newValue, ..}
instance Property "Prefix" RepositoryCreationTemplate where
  type PropertyType "Prefix" RepositoryCreationTemplate = Value Prelude.Text
  set newValue RepositoryCreationTemplate {..}
    = RepositoryCreationTemplate {prefix = newValue, ..}
instance Property "RepositoryPolicy" RepositoryCreationTemplate where
  type PropertyType "RepositoryPolicy" RepositoryCreationTemplate = Value Prelude.Text
  set newValue RepositoryCreationTemplate {..}
    = RepositoryCreationTemplate
        {repositoryPolicy = Prelude.pure newValue, ..}
instance Property "ResourceTags" RepositoryCreationTemplate where
  type PropertyType "ResourceTags" RepositoryCreationTemplate = [Tag]
  set newValue RepositoryCreationTemplate {..}
    = RepositoryCreationTemplate
        {resourceTags = Prelude.pure newValue, ..}