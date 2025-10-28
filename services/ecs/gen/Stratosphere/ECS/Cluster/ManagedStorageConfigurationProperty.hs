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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-managedstorageconfiguration.html>
    ManagedStorageConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-managedstorageconfiguration.html#cfn-ecs-cluster-managedstorageconfiguration-fargateephemeralstoragekmskeyid>
                                         fargateEphemeralStorageKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-managedstorageconfiguration.html#cfn-ecs-cluster-managedstorageconfiguration-kmskeyid>
                                         kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedStorageConfigurationProperty ::
  ManagedStorageConfigurationProperty
mkManagedStorageConfigurationProperty
  = ManagedStorageConfigurationProperty
      {haddock_workaround_ = (),
       fargateEphemeralStorageKmsKeyId = Prelude.Nothing,
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