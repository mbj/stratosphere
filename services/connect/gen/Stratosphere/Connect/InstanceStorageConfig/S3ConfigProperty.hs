module Stratosphere.Connect.InstanceStorageConfig.S3ConfigProperty (
        module Exports, S3ConfigProperty(..), mkS3ConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.InstanceStorageConfig.EncryptionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instancestorageconfig-s3config.html>
    S3ConfigProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instancestorageconfig-s3config.html#cfn-connect-instancestorageconfig-s3config-bucketname>
                      bucketName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instancestorageconfig-s3config.html#cfn-connect-instancestorageconfig-s3config-bucketprefix>
                      bucketPrefix :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instancestorageconfig-s3config.html#cfn-connect-instancestorageconfig-s3config-encryptionconfig>
                      encryptionConfig :: (Prelude.Maybe EncryptionConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3ConfigProperty
mkS3ConfigProperty bucketName bucketPrefix
  = S3ConfigProperty
      {haddock_workaround_ = (), bucketName = bucketName,
       bucketPrefix = bucketPrefix, encryptionConfig = Prelude.Nothing}
instance ToResourceProperties S3ConfigProperty where
  toResourceProperties S3ConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::InstanceStorageConfig.S3Config",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName,
                            "BucketPrefix" JSON..= bucketPrefix]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig]))}
instance JSON.ToJSON S3ConfigProperty where
  toJSON S3ConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName,
               "BucketPrefix" JSON..= bucketPrefix]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig])))
instance Property "BucketName" S3ConfigProperty where
  type PropertyType "BucketName" S3ConfigProperty = Value Prelude.Text
  set newValue S3ConfigProperty {..}
    = S3ConfigProperty {bucketName = newValue, ..}
instance Property "BucketPrefix" S3ConfigProperty where
  type PropertyType "BucketPrefix" S3ConfigProperty = Value Prelude.Text
  set newValue S3ConfigProperty {..}
    = S3ConfigProperty {bucketPrefix = newValue, ..}
instance Property "EncryptionConfig" S3ConfigProperty where
  type PropertyType "EncryptionConfig" S3ConfigProperty = EncryptionConfigProperty
  set newValue S3ConfigProperty {..}
    = S3ConfigProperty {encryptionConfig = Prelude.pure newValue, ..}