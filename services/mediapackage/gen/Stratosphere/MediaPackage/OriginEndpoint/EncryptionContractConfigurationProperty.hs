module Stratosphere.MediaPackage.OriginEndpoint.EncryptionContractConfigurationProperty (
        EncryptionContractConfigurationProperty(..),
        mkEncryptionContractConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EncryptionContractConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-encryptioncontractconfiguration.html>
    EncryptionContractConfigurationProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionContractConfigurationProperty ::
  EncryptionContractConfigurationProperty
mkEncryptionContractConfigurationProperty
  = EncryptionContractConfigurationProperty
      {haddock_workaround_ = ()}
instance ToResourceProperties EncryptionContractConfigurationProperty where
  toResourceProperties EncryptionContractConfigurationProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.EncryptionContractConfiguration",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON EncryptionContractConfigurationProperty where
  toJSON EncryptionContractConfigurationProperty {} = JSON.object []