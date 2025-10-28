module Stratosphere.Athena.WorkGroup.EncryptionConfigurationProperty (
        EncryptionConfigurationProperty(..),
        mkEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-encryptionconfiguration.html>
    EncryptionConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-encryptionconfiguration.html#cfn-athena-workgroup-encryptionconfiguration-encryptionoption>
                                     encryptionOption :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-encryptionconfiguration.html#cfn-athena-workgroup-encryptionconfiguration-kmskey>
                                     kmsKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigurationProperty ::
  Value Prelude.Text -> EncryptionConfigurationProperty
mkEncryptionConfigurationProperty encryptionOption
  = EncryptionConfigurationProperty
      {haddock_workaround_ = (), encryptionOption = encryptionOption,
       kmsKey = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup.EncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EncryptionOption" JSON..= encryptionOption]
                           (Prelude.catMaybes [(JSON..=) "KmsKey" Prelude.<$> kmsKey]))}
instance JSON.ToJSON EncryptionConfigurationProperty where
  toJSON EncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EncryptionOption" JSON..= encryptionOption]
              (Prelude.catMaybes [(JSON..=) "KmsKey" Prelude.<$> kmsKey])))
instance Property "EncryptionOption" EncryptionConfigurationProperty where
  type PropertyType "EncryptionOption" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty {encryptionOption = newValue, ..}
instance Property "KmsKey" EncryptionConfigurationProperty where
  type PropertyType "KmsKey" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {kmsKey = Prelude.pure newValue, ..}