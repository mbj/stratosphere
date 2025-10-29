module Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource.S3ReferenceDataSourceProperty (
        S3ReferenceDataSourceProperty(..), mkS3ReferenceDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ReferenceDataSourceProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html>
    S3ReferenceDataSourceProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-s3referencedatasource-bucketarn>
                                   bucketARN :: (Value Prelude.Text),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-s3referencedatasource-filekey>
                                   fileKey :: (Value Prelude.Text),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-s3referencedatasource-referencerolearn>
                                   referenceRoleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ReferenceDataSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> S3ReferenceDataSourceProperty
mkS3ReferenceDataSourceProperty bucketARN fileKey referenceRoleARN
  = S3ReferenceDataSourceProperty
      {bucketARN = bucketARN, fileKey = fileKey,
       referenceRoleARN = referenceRoleARN}
instance ToResourceProperties S3ReferenceDataSourceProperty where
  toResourceProperties S3ReferenceDataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::ApplicationReferenceDataSource.S3ReferenceDataSource",
         supportsTags = Prelude.False,
         properties = ["BucketARN" JSON..= bucketARN,
                       "FileKey" JSON..= fileKey,
                       "ReferenceRoleARN" JSON..= referenceRoleARN]}
instance JSON.ToJSON S3ReferenceDataSourceProperty where
  toJSON S3ReferenceDataSourceProperty {..}
    = JSON.object
        ["BucketARN" JSON..= bucketARN, "FileKey" JSON..= fileKey,
         "ReferenceRoleARN" JSON..= referenceRoleARN]
instance Property "BucketARN" S3ReferenceDataSourceProperty where
  type PropertyType "BucketARN" S3ReferenceDataSourceProperty = Value Prelude.Text
  set newValue S3ReferenceDataSourceProperty {..}
    = S3ReferenceDataSourceProperty {bucketARN = newValue, ..}
instance Property "FileKey" S3ReferenceDataSourceProperty where
  type PropertyType "FileKey" S3ReferenceDataSourceProperty = Value Prelude.Text
  set newValue S3ReferenceDataSourceProperty {..}
    = S3ReferenceDataSourceProperty {fileKey = newValue, ..}
instance Property "ReferenceRoleARN" S3ReferenceDataSourceProperty where
  type PropertyType "ReferenceRoleARN" S3ReferenceDataSourceProperty = Value Prelude.Text
  set newValue S3ReferenceDataSourceProperty {..}
    = S3ReferenceDataSourceProperty {referenceRoleARN = newValue, ..}