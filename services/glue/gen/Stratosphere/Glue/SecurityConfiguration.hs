module Stratosphere.Glue.SecurityConfiguration (
        module Exports, SecurityConfiguration(..), mkSecurityConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.SecurityConfiguration.EncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityConfiguration
  = SecurityConfiguration {encryptionConfiguration :: EncryptionConfigurationProperty,
                           name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityConfiguration ::
  EncryptionConfigurationProperty
  -> Value Prelude.Text -> SecurityConfiguration
mkSecurityConfiguration encryptionConfiguration name
  = SecurityConfiguration
      {encryptionConfiguration = encryptionConfiguration, name = name}
instance ToResourceProperties SecurityConfiguration where
  toResourceProperties SecurityConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::Glue::SecurityConfiguration",
         supportsTags = Prelude.False,
         properties = ["EncryptionConfiguration"
                         JSON..= encryptionConfiguration,
                       "Name" JSON..= name]}
instance JSON.ToJSON SecurityConfiguration where
  toJSON SecurityConfiguration {..}
    = JSON.object
        ["EncryptionConfiguration" JSON..= encryptionConfiguration,
         "Name" JSON..= name]
instance Property "EncryptionConfiguration" SecurityConfiguration where
  type PropertyType "EncryptionConfiguration" SecurityConfiguration = EncryptionConfigurationProperty
  set newValue SecurityConfiguration {..}
    = SecurityConfiguration {encryptionConfiguration = newValue, ..}
instance Property "Name" SecurityConfiguration where
  type PropertyType "Name" SecurityConfiguration = Value Prelude.Text
  set newValue SecurityConfiguration {..}
    = SecurityConfiguration {name = newValue, ..}