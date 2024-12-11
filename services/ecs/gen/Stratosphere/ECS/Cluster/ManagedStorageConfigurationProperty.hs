module Stratosphere.ECS.Cluster.ManagedStorageConfigurationProperty (
        ManagedStorageConfigurationProperty(..),
        mkManagedStorageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedStorageConfigurationProperty
  = ManagedStorageConfigurationProperty {fargateEphemeralStorageKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                         kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedStorageConfigurationProperty ::
  ManagedStorageConfigurationProperty
mkManagedStorageConfigurationProperty
  = ManagedStorageConfigurationProperty
      {fargateEphemeralStorageKmsKeyId = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties ManagedStorageConfigurationProperty where
  toResourceProperties ManagedStorageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Cluster.ManagedStorageConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FargateEphemeralStorageKmsKeyId"
                              Prelude.<$> fargateEphemeralStorageKmsKeyId,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])}
instance JSON.ToJSON ManagedStorageConfigurationProperty where
  toJSON ManagedStorageConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FargateEphemeralStorageKmsKeyId"
                 Prelude.<$> fargateEphemeralStorageKmsKeyId,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))
instance Property "FargateEphemeralStorageKmsKeyId" ManagedStorageConfigurationProperty where
  type PropertyType "FargateEphemeralStorageKmsKeyId" ManagedStorageConfigurationProperty = Value Prelude.Text
  set newValue ManagedStorageConfigurationProperty {..}
    = ManagedStorageConfigurationProperty
        {fargateEphemeralStorageKmsKeyId = Prelude.pure newValue, ..}
instance Property "KmsKeyId" ManagedStorageConfigurationProperty where
  type PropertyType "KmsKeyId" ManagedStorageConfigurationProperty = Value Prelude.Text
  set newValue ManagedStorageConfigurationProperty {..}
    = ManagedStorageConfigurationProperty
        {kmsKeyId = Prelude.pure newValue, ..}