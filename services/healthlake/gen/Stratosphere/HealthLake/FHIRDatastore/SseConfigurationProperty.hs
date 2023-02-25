module Stratosphere.HealthLake.FHIRDatastore.SseConfigurationProperty (
        module Exports, SseConfigurationProperty(..),
        mkSseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.HealthLake.FHIRDatastore.KmsEncryptionConfigProperty as Exports
import Stratosphere.ResourceProperties
data SseConfigurationProperty
  = SseConfigurationProperty {kmsEncryptionConfig :: KmsEncryptionConfigProperty}
mkSseConfigurationProperty ::
  KmsEncryptionConfigProperty -> SseConfigurationProperty
mkSseConfigurationProperty kmsEncryptionConfig
  = SseConfigurationProperty
      {kmsEncryptionConfig = kmsEncryptionConfig}
instance ToResourceProperties SseConfigurationProperty where
  toResourceProperties SseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::HealthLake::FHIRDatastore.SseConfiguration",
         properties = ["KmsEncryptionConfig" JSON..= kmsEncryptionConfig]}
instance JSON.ToJSON SseConfigurationProperty where
  toJSON SseConfigurationProperty {..}
    = JSON.object ["KmsEncryptionConfig" JSON..= kmsEncryptionConfig]
instance Property "KmsEncryptionConfig" SseConfigurationProperty where
  type PropertyType "KmsEncryptionConfig" SseConfigurationProperty = KmsEncryptionConfigProperty
  set newValue SseConfigurationProperty {}
    = SseConfigurationProperty {kmsEncryptionConfig = newValue, ..}