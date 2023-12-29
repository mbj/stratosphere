module Stratosphere.AppRunner.Service.EncryptionConfigurationProperty (
        EncryptionConfigurationProperty(..),
        mkEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigurationProperty
  = EncryptionConfigurationProperty {kmsKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigurationProperty ::
  Value Prelude.Text -> EncryptionConfigurationProperty
mkEncryptionConfigurationProperty kmsKey
  = EncryptionConfigurationProperty {kmsKey = kmsKey}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.EncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = ["KmsKey" JSON..= kmsKey]}
instance JSON.ToJSON EncryptionConfigurationProperty where
  toJSON EncryptionConfigurationProperty {..}
    = JSON.object ["KmsKey" JSON..= kmsKey]
instance Property "KmsKey" EncryptionConfigurationProperty where
  type PropertyType "KmsKey" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {}
    = EncryptionConfigurationProperty {kmsKey = newValue, ..}