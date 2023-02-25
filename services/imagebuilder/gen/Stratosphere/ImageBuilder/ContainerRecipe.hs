module Stratosphere.ImageBuilder.ContainerRecipe (
        module Exports, ContainerRecipe(..), mkContainerRecipe
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.ContainerRecipe.ComponentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.ContainerRecipe.InstanceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.ContainerRecipe.TargetContainerRepositoryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerRecipe
  = ContainerRecipe {components :: [ComponentConfigurationProperty],
                     containerType :: (Value Prelude.Text),
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     dockerfileTemplateData :: (Prelude.Maybe (Value Prelude.Text)),
                     dockerfileTemplateUri :: (Prelude.Maybe (Value Prelude.Text)),
                     imageOsVersionOverride :: (Prelude.Maybe (Value Prelude.Text)),
                     instanceConfiguration :: (Prelude.Maybe InstanceConfigurationProperty),
                     kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                     name :: (Value Prelude.Text),
                     parentImage :: (Value Prelude.Text),
                     platformOverride :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                     targetRepository :: TargetContainerRepositoryProperty,
                     version :: (Value Prelude.Text),
                     workingDirectory :: (Prelude.Maybe (Value Prelude.Text))}
mkContainerRecipe ::
  [ComponentConfigurationProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> TargetContainerRepositoryProperty
              -> Value Prelude.Text -> ContainerRecipe
mkContainerRecipe
  components
  containerType
  name
  parentImage
  targetRepository
  version
  = ContainerRecipe
      {components = components, containerType = containerType,
       name = name, parentImage = parentImage,
       targetRepository = targetRepository, version = version,
       description = Prelude.Nothing,
       dockerfileTemplateData = Prelude.Nothing,
       dockerfileTemplateUri = Prelude.Nothing,
       imageOsVersionOverride = Prelude.Nothing,
       instanceConfiguration = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, platformOverride = Prelude.Nothing,
       tags = Prelude.Nothing, workingDirectory = Prelude.Nothing}
instance ToResourceProperties ContainerRecipe where
  toResourceProperties ContainerRecipe {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ContainerRecipe",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Components" JSON..= components,
                            "ContainerType" JSON..= containerType, "Name" JSON..= name,
                            "ParentImage" JSON..= parentImage,
                            "TargetRepository" JSON..= targetRepository,
                            "Version" JSON..= version]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DockerfileTemplateData"
                                 Prelude.<$> dockerfileTemplateData,
                               (JSON..=) "DockerfileTemplateUri"
                                 Prelude.<$> dockerfileTemplateUri,
                               (JSON..=) "ImageOsVersionOverride"
                                 Prelude.<$> imageOsVersionOverride,
                               (JSON..=) "InstanceConfiguration"
                                 Prelude.<$> instanceConfiguration,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "PlatformOverride" Prelude.<$> platformOverride,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "WorkingDirectory" Prelude.<$> workingDirectory]))}
instance JSON.ToJSON ContainerRecipe where
  toJSON ContainerRecipe {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Components" JSON..= components,
               "ContainerType" JSON..= containerType, "Name" JSON..= name,
               "ParentImage" JSON..= parentImage,
               "TargetRepository" JSON..= targetRepository,
               "Version" JSON..= version]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DockerfileTemplateData"
                    Prelude.<$> dockerfileTemplateData,
                  (JSON..=) "DockerfileTemplateUri"
                    Prelude.<$> dockerfileTemplateUri,
                  (JSON..=) "ImageOsVersionOverride"
                    Prelude.<$> imageOsVersionOverride,
                  (JSON..=) "InstanceConfiguration"
                    Prelude.<$> instanceConfiguration,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "PlatformOverride" Prelude.<$> platformOverride,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "WorkingDirectory" Prelude.<$> workingDirectory])))
instance Property "Components" ContainerRecipe where
  type PropertyType "Components" ContainerRecipe = [ComponentConfigurationProperty]
  set newValue ContainerRecipe {..}
    = ContainerRecipe {components = newValue, ..}
instance Property "ContainerType" ContainerRecipe where
  type PropertyType "ContainerType" ContainerRecipe = Value Prelude.Text
  set newValue ContainerRecipe {..}
    = ContainerRecipe {containerType = newValue, ..}
instance Property "Description" ContainerRecipe where
  type PropertyType "Description" ContainerRecipe = Value Prelude.Text
  set newValue ContainerRecipe {..}
    = ContainerRecipe {description = Prelude.pure newValue, ..}
instance Property "DockerfileTemplateData" ContainerRecipe where
  type PropertyType "DockerfileTemplateData" ContainerRecipe = Value Prelude.Text
  set newValue ContainerRecipe {..}
    = ContainerRecipe
        {dockerfileTemplateData = Prelude.pure newValue, ..}
instance Property "DockerfileTemplateUri" ContainerRecipe where
  type PropertyType "DockerfileTemplateUri" ContainerRecipe = Value Prelude.Text
  set newValue ContainerRecipe {..}
    = ContainerRecipe
        {dockerfileTemplateUri = Prelude.pure newValue, ..}
instance Property "ImageOsVersionOverride" ContainerRecipe where
  type PropertyType "ImageOsVersionOverride" ContainerRecipe = Value Prelude.Text
  set newValue ContainerRecipe {..}
    = ContainerRecipe
        {imageOsVersionOverride = Prelude.pure newValue, ..}
instance Property "InstanceConfiguration" ContainerRecipe where
  type PropertyType "InstanceConfiguration" ContainerRecipe = InstanceConfigurationProperty
  set newValue ContainerRecipe {..}
    = ContainerRecipe
        {instanceConfiguration = Prelude.pure newValue, ..}
instance Property "KmsKeyId" ContainerRecipe where
  type PropertyType "KmsKeyId" ContainerRecipe = Value Prelude.Text
  set newValue ContainerRecipe {..}
    = ContainerRecipe {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Name" ContainerRecipe where
  type PropertyType "Name" ContainerRecipe = Value Prelude.Text
  set newValue ContainerRecipe {..}
    = ContainerRecipe {name = newValue, ..}
instance Property "ParentImage" ContainerRecipe where
  type PropertyType "ParentImage" ContainerRecipe = Value Prelude.Text
  set newValue ContainerRecipe {..}
    = ContainerRecipe {parentImage = newValue, ..}
instance Property "PlatformOverride" ContainerRecipe where
  type PropertyType "PlatformOverride" ContainerRecipe = Value Prelude.Text
  set newValue ContainerRecipe {..}
    = ContainerRecipe {platformOverride = Prelude.pure newValue, ..}
instance Property "Tags" ContainerRecipe where
  type PropertyType "Tags" ContainerRecipe = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ContainerRecipe {..}
    = ContainerRecipe {tags = Prelude.pure newValue, ..}
instance Property "TargetRepository" ContainerRecipe where
  type PropertyType "TargetRepository" ContainerRecipe = TargetContainerRepositoryProperty
  set newValue ContainerRecipe {..}
    = ContainerRecipe {targetRepository = newValue, ..}
instance Property "Version" ContainerRecipe where
  type PropertyType "Version" ContainerRecipe = Value Prelude.Text
  set newValue ContainerRecipe {..}
    = ContainerRecipe {version = newValue, ..}
instance Property "WorkingDirectory" ContainerRecipe where
  type PropertyType "WorkingDirectory" ContainerRecipe = Value Prelude.Text
  set newValue ContainerRecipe {..}
    = ContainerRecipe {workingDirectory = Prelude.pure newValue, ..}