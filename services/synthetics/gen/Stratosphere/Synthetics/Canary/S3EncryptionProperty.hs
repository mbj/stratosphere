module Stratosphere.Synthetics.Canary.S3EncryptionProperty (
        S3EncryptionProperty(..), mkS3EncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3EncryptionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-s3encryption.html>
    S3EncryptionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-s3encryption.html#cfn-synthetics-canary-s3encryption-encryptionmode>
                          encryptionMode :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-s3encryption.html#cfn-synthetics-canary-s3encryption-kmskeyarn>
                          kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3EncryptionProperty :: S3EncryptionProperty
mkS3EncryptionProperty
  = S3EncryptionProperty
      {encryptionMode = Prelude.Nothing, kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties S3EncryptionProperty where
  toResourceProperties S3EncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.S3Encryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EncryptionMode" Prelude.<$> encryptionMode,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])}
instance JSON.ToJSON S3EncryptionProperty where
  toJSON S3EncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EncryptionMode" Prelude.<$> encryptionMode,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))
instance Property "EncryptionMode" S3EncryptionProperty where
  type PropertyType "EncryptionMode" S3EncryptionProperty = Value Prelude.Text
  set newValue S3EncryptionProperty {..}
    = S3EncryptionProperty {encryptionMode = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" S3EncryptionProperty where
  type PropertyType "KmsKeyArn" S3EncryptionProperty = Value Prelude.Text
  set newValue S3EncryptionProperty {..}
    = S3EncryptionProperty {kmsKeyArn = Prelude.pure newValue, ..}