module Stratosphere.S3.Bucket.EncryptionConfigurationProperty (
        EncryptionConfigurationProperty(..),
        mkEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigurationProperty
  = EncryptionConfigurationProperty {replicaKmsKeyID :: (Value Prelude.Text)}
mkEncryptionConfigurationProperty ::
  Value Prelude.Text -> EncryptionConfigurationProperty
mkEncryptionConfigurationProperty replicaKmsKeyID
  = EncryptionConfigurationProperty
      {replicaKmsKeyID = replicaKmsKeyID}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.EncryptionConfiguration",
         properties = ["ReplicaKmsKeyID" JSON..= replicaKmsKeyID]}
instance JSON.ToJSON EncryptionConfigurationProperty where
  toJSON EncryptionConfigurationProperty {..}
    = JSON.object ["ReplicaKmsKeyID" JSON..= replicaKmsKeyID]
instance Property "ReplicaKmsKeyID" EncryptionConfigurationProperty where
  type PropertyType "ReplicaKmsKeyID" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {}
    = EncryptionConfigurationProperty {replicaKmsKeyID = newValue, ..}