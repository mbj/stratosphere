module Stratosphere.Athena.WorkGroup.ManagedStorageEncryptionConfigurationProperty (
        ManagedStorageEncryptionConfigurationProperty(..),
        mkManagedStorageEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedStorageEncryptionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-managedstorageencryptionconfiguration.html>
    ManagedStorageEncryptionConfigurationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-managedstorageencryptionconfiguration.html#cfn-athena-workgroup-managedstorageencryptionconfiguration-kmskey>
                                                   kmsKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedStorageEncryptionConfigurationProperty ::
  ManagedStorageEncryptionConfigurationProperty
mkManagedStorageEncryptionConfigurationProperty
  = ManagedStorageEncryptionConfigurationProperty
      {haddock_workaround_ = (), kmsKey = Prelude.Nothing}
instance ToResourceProperties ManagedStorageEncryptionConfigurationProperty where
  toResourceProperties
    ManagedStorageEncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup.ManagedStorageEncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "KmsKey" Prelude.<$> kmsKey])}
instance JSON.ToJSON ManagedStorageEncryptionConfigurationProperty where
  toJSON ManagedStorageEncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "KmsKey" Prelude.<$> kmsKey]))
instance Property "KmsKey" ManagedStorageEncryptionConfigurationProperty where
  type PropertyType "KmsKey" ManagedStorageEncryptionConfigurationProperty = Value Prelude.Text
  set newValue ManagedStorageEncryptionConfigurationProperty {..}
    = ManagedStorageEncryptionConfigurationProperty
        {kmsKey = Prelude.pure newValue, ..}