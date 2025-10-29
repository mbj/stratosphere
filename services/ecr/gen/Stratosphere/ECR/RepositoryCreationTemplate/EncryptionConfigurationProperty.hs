module Stratosphere.ECR.RepositoryCreationTemplate.EncryptionConfigurationProperty (
        EncryptionConfigurationProperty(..),
        mkEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repositorycreationtemplate-encryptionconfiguration.html>
    EncryptionConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repositorycreationtemplate-encryptionconfiguration.html#cfn-ecr-repositorycreationtemplate-encryptionconfiguration-encryptiontype>
                                     encryptionType :: (Value Prelude.Text),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repositorycreationtemplate-encryptionconfiguration.html#cfn-ecr-repositorycreationtemplate-encryptionconfiguration-kmskey>
                                     kmsKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigurationProperty ::
  Value Prelude.Text -> EncryptionConfigurationProperty
mkEncryptionConfigurationProperty encryptionType
  = EncryptionConfigurationProperty
      {encryptionType = encryptionType, kmsKey = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::RepositoryCreationTemplate.EncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EncryptionType" JSON..= encryptionType]
                           (Prelude.catMaybes [(JSON..=) "KmsKey" Prelude.<$> kmsKey]))}
instance JSON.ToJSON EncryptionConfigurationProperty where
  toJSON EncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EncryptionType" JSON..= encryptionType]
              (Prelude.catMaybes [(JSON..=) "KmsKey" Prelude.<$> kmsKey])))
instance Property "EncryptionType" EncryptionConfigurationProperty where
  type PropertyType "EncryptionType" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty {encryptionType = newValue, ..}
instance Property "KmsKey" EncryptionConfigurationProperty where
  type PropertyType "KmsKey" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {kmsKey = Prelude.pure newValue, ..}