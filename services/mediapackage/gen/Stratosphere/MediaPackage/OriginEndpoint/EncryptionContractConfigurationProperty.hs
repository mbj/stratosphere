module Stratosphere.MediaPackage.OriginEndpoint.EncryptionContractConfigurationProperty (
        EncryptionContractConfigurationProperty(..),
        mkEncryptionContractConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EncryptionContractConfigurationProperty
  = EncryptionContractConfigurationProperty {}
mkEncryptionContractConfigurationProperty ::
  EncryptionContractConfigurationProperty
mkEncryptionContractConfigurationProperty
  = EncryptionContractConfigurationProperty {}
instance ToResourceProperties EncryptionContractConfigurationProperty where
  toResourceProperties EncryptionContractConfigurationProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.EncryptionContractConfiguration",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON EncryptionContractConfigurationProperty where
  toJSON EncryptionContractConfigurationProperty {} = JSON.object []