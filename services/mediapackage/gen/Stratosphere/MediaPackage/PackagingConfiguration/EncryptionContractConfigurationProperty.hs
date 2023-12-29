module Stratosphere.MediaPackage.PackagingConfiguration.EncryptionContractConfigurationProperty (
        EncryptionContractConfigurationProperty(..),
        mkEncryptionContractConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EncryptionContractConfigurationProperty
  = EncryptionContractConfigurationProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionContractConfigurationProperty ::
  EncryptionContractConfigurationProperty
mkEncryptionContractConfigurationProperty
  = EncryptionContractConfigurationProperty {}
instance ToResourceProperties EncryptionContractConfigurationProperty where
  toResourceProperties EncryptionContractConfigurationProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.EncryptionContractConfiguration",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON EncryptionContractConfigurationProperty where
  toJSON EncryptionContractConfigurationProperty {} = JSON.object []