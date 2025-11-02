module Stratosphere.MSK.Cluster.EncryptionAtRestProperty (
        EncryptionAtRestProperty(..), mkEncryptionAtRestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionAtRestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionatrest.html>
    EncryptionAtRestProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionatrest.html#cfn-msk-cluster-encryptionatrest-datavolumekmskeyid>
                              dataVolumeKMSKeyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionAtRestProperty ::
  Value Prelude.Text -> EncryptionAtRestProperty
mkEncryptionAtRestProperty dataVolumeKMSKeyId
  = EncryptionAtRestProperty
      {haddock_workaround_ = (), dataVolumeKMSKeyId = dataVolumeKMSKeyId}
instance ToResourceProperties EncryptionAtRestProperty where
  toResourceProperties EncryptionAtRestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.EncryptionAtRest",
         supportsTags = Prelude.False,
         properties = ["DataVolumeKMSKeyId" JSON..= dataVolumeKMSKeyId]}
instance JSON.ToJSON EncryptionAtRestProperty where
  toJSON EncryptionAtRestProperty {..}
    = JSON.object ["DataVolumeKMSKeyId" JSON..= dataVolumeKMSKeyId]
instance Property "DataVolumeKMSKeyId" EncryptionAtRestProperty where
  type PropertyType "DataVolumeKMSKeyId" EncryptionAtRestProperty = Value Prelude.Text
  set newValue EncryptionAtRestProperty {..}
    = EncryptionAtRestProperty {dataVolumeKMSKeyId = newValue, ..}