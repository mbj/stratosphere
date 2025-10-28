module Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.S3ReferenceDataSourceProperty (
        S3ReferenceDataSourceProperty(..), mkS3ReferenceDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ReferenceDataSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource.html>
    S3ReferenceDataSourceProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource-bucketarn>
                                   bucketARN :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource-filekey>
                                   fileKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ReferenceDataSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> S3ReferenceDataSourceProperty
mkS3ReferenceDataSourceProperty bucketARN fileKey
  = S3ReferenceDataSourceProperty
      {haddock_workaround_ = (), bucketARN = bucketARN,
       fileKey = fileKey}
instance ToResourceProperties S3ReferenceDataSourceProperty where
  toResourceProperties S3ReferenceDataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.S3ReferenceDataSource",
         supportsTags = Prelude.False,
         properties = ["BucketARN" JSON..= bucketARN,
                       "FileKey" JSON..= fileKey]}
instance JSON.ToJSON S3ReferenceDataSourceProperty where
  toJSON S3ReferenceDataSourceProperty {..}
    = JSON.object
        ["BucketARN" JSON..= bucketARN, "FileKey" JSON..= fileKey]
instance Property "BucketARN" S3ReferenceDataSourceProperty where
  type PropertyType "BucketARN" S3ReferenceDataSourceProperty = Value Prelude.Text
  set newValue S3ReferenceDataSourceProperty {..}
    = S3ReferenceDataSourceProperty {bucketARN = newValue, ..}
instance Property "FileKey" S3ReferenceDataSourceProperty where
  type PropertyType "FileKey" S3ReferenceDataSourceProperty = Value Prelude.Text
  set newValue S3ReferenceDataSourceProperty {..}
    = S3ReferenceDataSourceProperty {fileKey = newValue, ..}