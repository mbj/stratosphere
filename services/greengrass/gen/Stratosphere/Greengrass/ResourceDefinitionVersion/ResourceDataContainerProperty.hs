module Stratosphere.Greengrass.ResourceDefinitionVersion.ResourceDataContainerProperty (
        module Exports, ResourceDataContainerProperty(..),
        mkResourceDataContainerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinitionVersion.LocalDeviceResourceDataProperty as Exports
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinitionVersion.LocalVolumeResourceDataProperty as Exports
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinitionVersion.S3MachineLearningModelResourceDataProperty as Exports
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinitionVersion.SageMakerMachineLearningModelResourceDataProperty as Exports
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinitionVersion.SecretsManagerSecretResourceDataProperty as Exports
import Stratosphere.ResourceProperties
data ResourceDataContainerProperty
  = ResourceDataContainerProperty {localDeviceResourceData :: (Prelude.Maybe LocalDeviceResourceDataProperty),
                                   localVolumeResourceData :: (Prelude.Maybe LocalVolumeResourceDataProperty),
                                   s3MachineLearningModelResourceData :: (Prelude.Maybe S3MachineLearningModelResourceDataProperty),
                                   sageMakerMachineLearningModelResourceData :: (Prelude.Maybe SageMakerMachineLearningModelResourceDataProperty),
                                   secretsManagerSecretResourceData :: (Prelude.Maybe SecretsManagerSecretResourceDataProperty)}
mkResourceDataContainerProperty :: ResourceDataContainerProperty
mkResourceDataContainerProperty
  = ResourceDataContainerProperty
      {localDeviceResourceData = Prelude.Nothing,
       localVolumeResourceData = Prelude.Nothing,
       s3MachineLearningModelResourceData = Prelude.Nothing,
       sageMakerMachineLearningModelResourceData = Prelude.Nothing,
       secretsManagerSecretResourceData = Prelude.Nothing}
instance ToResourceProperties ResourceDataContainerProperty where
  toResourceProperties ResourceDataContainerProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinitionVersion.ResourceDataContainer",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LocalDeviceResourceData"
                              Prelude.<$> localDeviceResourceData,
                            (JSON..=) "LocalVolumeResourceData"
                              Prelude.<$> localVolumeResourceData,
                            (JSON..=) "S3MachineLearningModelResourceData"
                              Prelude.<$> s3MachineLearningModelResourceData,
                            (JSON..=) "SageMakerMachineLearningModelResourceData"
                              Prelude.<$> sageMakerMachineLearningModelResourceData,
                            (JSON..=) "SecretsManagerSecretResourceData"
                              Prelude.<$> secretsManagerSecretResourceData])}
instance JSON.ToJSON ResourceDataContainerProperty where
  toJSON ResourceDataContainerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LocalDeviceResourceData"
                 Prelude.<$> localDeviceResourceData,
               (JSON..=) "LocalVolumeResourceData"
                 Prelude.<$> localVolumeResourceData,
               (JSON..=) "S3MachineLearningModelResourceData"
                 Prelude.<$> s3MachineLearningModelResourceData,
               (JSON..=) "SageMakerMachineLearningModelResourceData"
                 Prelude.<$> sageMakerMachineLearningModelResourceData,
               (JSON..=) "SecretsManagerSecretResourceData"
                 Prelude.<$> secretsManagerSecretResourceData]))
instance Property "LocalDeviceResourceData" ResourceDataContainerProperty where
  type PropertyType "LocalDeviceResourceData" ResourceDataContainerProperty = LocalDeviceResourceDataProperty
  set newValue ResourceDataContainerProperty {..}
    = ResourceDataContainerProperty
        {localDeviceResourceData = Prelude.pure newValue, ..}
instance Property "LocalVolumeResourceData" ResourceDataContainerProperty where
  type PropertyType "LocalVolumeResourceData" ResourceDataContainerProperty = LocalVolumeResourceDataProperty
  set newValue ResourceDataContainerProperty {..}
    = ResourceDataContainerProperty
        {localVolumeResourceData = Prelude.pure newValue, ..}
instance Property "S3MachineLearningModelResourceData" ResourceDataContainerProperty where
  type PropertyType "S3MachineLearningModelResourceData" ResourceDataContainerProperty = S3MachineLearningModelResourceDataProperty
  set newValue ResourceDataContainerProperty {..}
    = ResourceDataContainerProperty
        {s3MachineLearningModelResourceData = Prelude.pure newValue, ..}
instance Property "SageMakerMachineLearningModelResourceData" ResourceDataContainerProperty where
  type PropertyType "SageMakerMachineLearningModelResourceData" ResourceDataContainerProperty = SageMakerMachineLearningModelResourceDataProperty
  set newValue ResourceDataContainerProperty {..}
    = ResourceDataContainerProperty
        {sageMakerMachineLearningModelResourceData = Prelude.pure newValue,
         ..}
instance Property "SecretsManagerSecretResourceData" ResourceDataContainerProperty where
  type PropertyType "SecretsManagerSecretResourceData" ResourceDataContainerProperty = SecretsManagerSecretResourceDataProperty
  set newValue ResourceDataContainerProperty {..}
    = ResourceDataContainerProperty
        {secretsManagerSecretResourceData = Prelude.pure newValue, ..}