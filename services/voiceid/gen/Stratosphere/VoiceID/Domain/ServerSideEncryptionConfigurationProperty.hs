module Stratosphere.VoiceID.Domain.ServerSideEncryptionConfigurationProperty (
        ServerSideEncryptionConfigurationProperty(..),
        mkServerSideEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerSideEncryptionConfigurationProperty
  = ServerSideEncryptionConfigurationProperty {kmsKeyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerSideEncryptionConfigurationProperty ::
  Value Prelude.Text -> ServerSideEncryptionConfigurationProperty
mkServerSideEncryptionConfigurationProperty kmsKeyId
  = ServerSideEncryptionConfigurationProperty {kmsKeyId = kmsKeyId}
instance ToResourceProperties ServerSideEncryptionConfigurationProperty where
  toResourceProperties ServerSideEncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::VoiceID::Domain.ServerSideEncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = ["KmsKeyId" JSON..= kmsKeyId]}
instance JSON.ToJSON ServerSideEncryptionConfigurationProperty where
  toJSON ServerSideEncryptionConfigurationProperty {..}
    = JSON.object ["KmsKeyId" JSON..= kmsKeyId]
instance Property "KmsKeyId" ServerSideEncryptionConfigurationProperty where
  type PropertyType "KmsKeyId" ServerSideEncryptionConfigurationProperty = Value Prelude.Text
  set newValue ServerSideEncryptionConfigurationProperty {}
    = ServerSideEncryptionConfigurationProperty
        {kmsKeyId = newValue, ..}