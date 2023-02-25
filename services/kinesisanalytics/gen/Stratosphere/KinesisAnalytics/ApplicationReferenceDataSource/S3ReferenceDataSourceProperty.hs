module Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource.S3ReferenceDataSourceProperty (
        S3ReferenceDataSourceProperty(..), mkS3ReferenceDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ReferenceDataSourceProperty
  = S3ReferenceDataSourceProperty {bucketARN :: (Value Prelude.Text),
                                   fileKey :: (Value Prelude.Text),
                                   referenceRoleARN :: (Value Prelude.Text)}
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