module Stratosphere.Greengrass.ResourceDefinition.ResourceDataContainerProperty (
        module Exports, ResourceDataContainerProperty(..),
        mkResourceDataContainerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.LocalDeviceResourceDataProperty as Exports
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.LocalVolumeResourceDataProperty as Exports
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.S3MachineLearningModelResourceDataProperty as Exports
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.SageMakerMachineLearningModelResourceDataProperty as Exports
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.SecretsManagerSecretResourceDataProperty as Exports
import Stratosphere.ResourceProperties
data ResourceDataContainerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html>
    ResourceDataContainerProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-localdeviceresourcedata>
                                   localDeviceResourceData :: (Prelude.Maybe LocalDeviceResourceDataProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-localvolumeresourcedata>
                                   localVolumeResourceData :: (Prelude.Maybe LocalVolumeResourceDataProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-s3machinelearningmodelresourcedata>
                                   s3MachineLearningModelResourceData :: (Prelude.Maybe S3MachineLearningModelResourceDataProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-sagemakermachinelearningmodelresourcedata>
                                   sageMakerMachineLearningModelResourceData :: (Prelude.Maybe SageMakerMachineLearningModelResourceDataProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-secretsmanagersecretresourcedata>
                                   secretsManagerSecretResourceData :: (Prelude.Maybe SecretsManagerSecretResourceDataProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceDataContainerProperty :: ResourceDataContainerProperty
mkResourceDataContainerProperty
  = ResourceDataContainerProperty
      {haddock_workaround_ = (),
       localDeviceResourceData = Prelude.Nothing,
       localVolumeResourceData = Prelude.Nothing,
       s3MachineLearningModelResourceData = Prelude.Nothing,
       sageMakerMachineLearningModelResourceData = Prelude.Nothing,
       secretsManagerSecretResourceData = Prelude.Nothing}
instance ToResourceProperties ResourceDataContainerProperty where
  toResourceProperties ResourceDataContainerProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinition.ResourceDataContainer",
         supportsTags = Prelude.False,
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