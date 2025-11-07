module Stratosphere.DSQL.Cluster.EncryptionDetailsProperty (
        EncryptionDetailsProperty(..), mkEncryptionDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dsql-cluster-encryptiondetails.html>
    EncryptionDetailsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dsql-cluster-encryptiondetails.html#cfn-dsql-cluster-encryptiondetails-encryptionstatus>
                               encryptionStatus :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dsql-cluster-encryptiondetails.html#cfn-dsql-cluster-encryptiondetails-encryptiontype>
                               encryptionType :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dsql-cluster-encryptiondetails.html#cfn-dsql-cluster-encryptiondetails-kmskeyarn>
                               kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionDetailsProperty :: EncryptionDetailsProperty
mkEncryptionDetailsProperty
  = EncryptionDetailsProperty
      {haddock_workaround_ = (), encryptionStatus = Prelude.Nothing,
       encryptionType = Prelude.Nothing, kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties EncryptionDetailsProperty where
  toResourceProperties EncryptionDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DSQL::Cluster.EncryptionDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EncryptionStatus" Prelude.<$> encryptionStatus,
                            (JSON..=) "EncryptionType" Prelude.<$> encryptionType,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])}
instance JSON.ToJSON EncryptionDetailsProperty where
  toJSON EncryptionDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EncryptionStatus" Prelude.<$> encryptionStatus,
               (JSON..=) "EncryptionType" Prelude.<$> encryptionType,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))
instance Property "EncryptionStatus" EncryptionDetailsProperty where
  type PropertyType "EncryptionStatus" EncryptionDetailsProperty = Value Prelude.Text
  set newValue EncryptionDetailsProperty {..}
    = EncryptionDetailsProperty
        {encryptionStatus = Prelude.pure newValue, ..}
instance Property "EncryptionType" EncryptionDetailsProperty where
  type PropertyType "EncryptionType" EncryptionDetailsProperty = Value Prelude.Text
  set newValue EncryptionDetailsProperty {..}
    = EncryptionDetailsProperty
        {encryptionType = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" EncryptionDetailsProperty where
  type PropertyType "KmsKeyArn" EncryptionDetailsProperty = Value Prelude.Text
  set newValue EncryptionDetailsProperty {..}
    = EncryptionDetailsProperty {kmsKeyArn = Prelude.pure newValue, ..}