module Stratosphere.Timestream.Table.S3ConfigurationProperty (
        S3ConfigurationProperty(..), mkS3ConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-s3configuration.html>
    S3ConfigurationProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-s3configuration.html#cfn-timestream-table-s3configuration-bucketname>
                             bucketName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-s3configuration.html#cfn-timestream-table-s3configuration-encryptionoption>
                             encryptionOption :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-s3configuration.html#cfn-timestream-table-s3configuration-kmskeyid>
                             kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-s3configuration.html#cfn-timestream-table-s3configuration-objectkeyprefix>
                             objectKeyPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ConfigurationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3ConfigurationProperty
mkS3ConfigurationProperty bucketName encryptionOption
  = S3ConfigurationProperty
      {haddock_workaround_ = (), bucketName = bucketName,
       encryptionOption = encryptionOption, kmsKeyId = Prelude.Nothing,
       objectKeyPrefix = Prelude.Nothing}
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