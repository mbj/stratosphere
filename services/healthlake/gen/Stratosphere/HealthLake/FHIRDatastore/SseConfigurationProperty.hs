module Stratosphere.HealthLake.FHIRDatastore.SseConfigurationProperty (
        module Exports, SseConfigurationProperty(..),
        mkSseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.HealthLake.FHIRDatastore.KmsEncryptionConfigProperty as Exports
import Stratosphere.ResourceProperties
data SseConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-sseconfiguration.html>
    SseConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-sseconfiguration.html#cfn-healthlake-fhirdatastore-sseconfiguration-kmsencryptionconfig>
                              kmsEncryptionConfig :: KmsEncryptionConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSseConfigurationProperty ::
  KmsEncryptionConfigProperty -> SseConfigurationProperty
mkSseConfigurationProperty kmsEncryptionConfig
  = SseConfigurationProperty
      {haddock_workaround_ = (),
       kmsEncryptionConfig = kmsEncryptionConfig}
instance ToResourceProperties SseConfigurationProperty where
  toResourceProperties SseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::HealthLake::FHIRDatastore.SseConfiguration",
         supportsTags = Prelude.False,
         properties = ["KmsEncryptionConfig" JSON..= kmsEncryptionConfig]}
instance JSON.ToJSON SseConfigurationProperty where
  toJSON SseConfigurationProperty {..}
    = JSON.object ["KmsEncryptionConfig" JSON..= kmsEncryptionConfig]
instance Property "KmsEncryptionConfig" SseConfigurationProperty where
  type PropertyType "KmsEncryptionConfig" SseConfigurationProperty = KmsEncryptionConfigProperty
  set newValue SseConfigurationProperty {..}
    = SseConfigurationProperty {kmsEncryptionConfig = newValue, ..}