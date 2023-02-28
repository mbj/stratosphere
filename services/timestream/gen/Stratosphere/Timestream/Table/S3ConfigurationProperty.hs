module Stratosphere.Timestream.Table.S3ConfigurationProperty (
        S3ConfigurationProperty(..), mkS3ConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ConfigurationProperty
  = S3ConfigurationProperty {bucketName :: (Value Prelude.Text),
                             encryptionOption :: (Value Prelude.Text),
                             kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                             objectKeyPrefix :: (Prelude.Maybe (Value Prelude.Text))}
mkS3ConfigurationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3ConfigurationProperty
mkS3ConfigurationProperty bucketName encryptionOption
  = S3ConfigurationProperty
      {bucketName = bucketName, encryptionOption = encryptionOption,
       kmsKeyId = Prelude.Nothing, objectKeyPrefix = Prelude.Nothing}
instance ToResourceProperties S3ConfigurationProperty where
  toResourceProperties S3ConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::Table.S3Configuration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName,
                            "EncryptionOption" JSON..= encryptionOption]
                           (Prelude.catMaybes
                              [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "ObjectKeyPrefix" Prelude.<$> objectKeyPrefix]))}
instance JSON.ToJSON S3ConfigurationProperty where
  toJSON S3ConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName,
               "EncryptionOption" JSON..= encryptionOption]
              (Prelude.catMaybes
                 [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "ObjectKeyPrefix" Prelude.<$> objectKeyPrefix])))
instance Property "BucketName" S3ConfigurationProperty where
  type PropertyType "BucketName" S3ConfigurationProperty = Value Prelude.Text
  set newValue S3ConfigurationProperty {..}
    = S3ConfigurationProperty {bucketName = newValue, ..}
instance Property "EncryptionOption" S3ConfigurationProperty where
  type PropertyType "EncryptionOption" S3ConfigurationProperty = Value Prelude.Text
  set newValue S3ConfigurationProperty {..}
    = S3ConfigurationProperty {encryptionOption = newValue, ..}
instance Property "KmsKeyId" S3ConfigurationProperty where
  type PropertyType "KmsKeyId" S3ConfigurationProperty = Value Prelude.Text
  set newValue S3ConfigurationProperty {..}
    = S3ConfigurationProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "ObjectKeyPrefix" S3ConfigurationProperty where
  type PropertyType "ObjectKeyPrefix" S3ConfigurationProperty = Value Prelude.Text
  set newValue S3ConfigurationProperty {..}
    = S3ConfigurationProperty
        {objectKeyPrefix = Prelude.pure newValue, ..}