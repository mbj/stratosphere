module Stratosphere.Glue.SecurityConfiguration.S3EncryptionProperty (
        S3EncryptionProperty(..), mkS3EncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3EncryptionProperty
  = S3EncryptionProperty {kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                          s3EncryptionMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3EncryptionProperty :: S3EncryptionProperty
mkS3EncryptionProperty
  = S3EncryptionProperty
      {kmsKeyArn = Prelude.Nothing, s3EncryptionMode = Prelude.Nothing}
instance ToResourceProperties S3EncryptionProperty where
  toResourceProperties S3EncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::SecurityConfiguration.S3Encryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                            (JSON..=) "S3EncryptionMode" Prelude.<$> s3EncryptionMode])}
instance JSON.ToJSON S3EncryptionProperty where
  toJSON S3EncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
               (JSON..=) "S3EncryptionMode" Prelude.<$> s3EncryptionMode]))
instance Property "KmsKeyArn" S3EncryptionProperty where
  type PropertyType "KmsKeyArn" S3EncryptionProperty = Value Prelude.Text
  set newValue S3EncryptionProperty {..}
    = S3EncryptionProperty {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "S3EncryptionMode" S3EncryptionProperty where
  type PropertyType "S3EncryptionMode" S3EncryptionProperty = Value Prelude.Text
  set newValue S3EncryptionProperty {..}
    = S3EncryptionProperty
        {s3EncryptionMode = Prelude.pure newValue, ..}