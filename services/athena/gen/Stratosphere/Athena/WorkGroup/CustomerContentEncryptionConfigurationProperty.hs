module Stratosphere.Athena.WorkGroup.CustomerContentEncryptionConfigurationProperty (
        CustomerContentEncryptionConfigurationProperty(..),
        mkCustomerContentEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomerContentEncryptionConfigurationProperty
  = CustomerContentEncryptionConfigurationProperty {kmsKey :: (Value Prelude.Text)}
mkCustomerContentEncryptionConfigurationProperty ::
  Value Prelude.Text
  -> CustomerContentEncryptionConfigurationProperty
mkCustomerContentEncryptionConfigurationProperty kmsKey
  = CustomerContentEncryptionConfigurationProperty {kmsKey = kmsKey}
instance ToResourceProperties CustomerContentEncryptionConfigurationProperty where
  toResourceProperties
    CustomerContentEncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup.CustomerContentEncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = ["KmsKey" JSON..= kmsKey]}
instance JSON.ToJSON CustomerContentEncryptionConfigurationProperty where
  toJSON CustomerContentEncryptionConfigurationProperty {..}
    = JSON.object ["KmsKey" JSON..= kmsKey]
instance Property "KmsKey" CustomerContentEncryptionConfigurationProperty where
  type PropertyType "KmsKey" CustomerContentEncryptionConfigurationProperty = Value Prelude.Text
  set newValue CustomerContentEncryptionConfigurationProperty {}
    = CustomerContentEncryptionConfigurationProperty
        {kmsKey = newValue, ..}