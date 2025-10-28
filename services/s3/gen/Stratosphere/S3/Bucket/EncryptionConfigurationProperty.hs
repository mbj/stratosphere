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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-encryptionconfiguration.html>
    EncryptionConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-encryptionconfiguration.html#cfn-s3-bucket-encryptionconfiguration-replicakmskeyid>
                                     replicaKmsKeyID :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigurationProperty ::
  Value Prelude.Text -> EncryptionConfigurationProperty
mkEncryptionConfigurationProperty replicaKmsKeyID
  = EncryptionConfigurationProperty
      {haddock_workaround_ = (), replicaKmsKeyID = replicaKmsKeyID}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.EncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = ["ReplicaKmsKeyID" JSON..= replicaKmsKeyID]}
instance JSON.ToJSON EncryptionConfigurationProperty where
  toJSON EncryptionConfigurationProperty {..}
    = JSON.object ["ReplicaKmsKeyID" JSON..= replicaKmsKeyID]
instance Property "ReplicaKmsKeyID" EncryptionConfigurationProperty where
  type PropertyType "ReplicaKmsKeyID" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty {replicaKmsKeyID = newValue, ..}