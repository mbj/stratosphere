module Stratosphere.DataSync.LocationS3.S3ConfigProperty (
        S3ConfigProperty(..), mkS3ConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ConfigProperty
  = S3ConfigProperty {bucketAccessRoleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ConfigProperty :: Value Prelude.Text -> S3ConfigProperty
mkS3ConfigProperty bucketAccessRoleArn
  = S3ConfigProperty {bucketAccessRoleArn = bucketAccessRoleArn}
instance ToResourceProperties S3ConfigProperty where
  toResourceProperties S3ConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationS3.S3Config",
         supportsTags = Prelude.False,
         properties = ["BucketAccessRoleArn" JSON..= bucketAccessRoleArn]}
instance JSON.ToJSON S3ConfigProperty where
  toJSON S3ConfigProperty {..}
    = JSON.object ["BucketAccessRoleArn" JSON..= bucketAccessRoleArn]
instance Property "BucketAccessRoleArn" S3ConfigProperty where
  type PropertyType "BucketAccessRoleArn" S3ConfigProperty = Value Prelude.Text
  set newValue S3ConfigProperty {}
    = S3ConfigProperty {bucketAccessRoleArn = newValue, ..}