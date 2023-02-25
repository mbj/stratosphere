module Stratosphere.Macie.AllowList.S3WordsListProperty (
        S3WordsListProperty(..), mkS3WordsListProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3WordsListProperty
  = S3WordsListProperty {bucketName :: (Value Prelude.Text),
                         objectKey :: (Value Prelude.Text)}
mkS3WordsListProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3WordsListProperty
mkS3WordsListProperty bucketName objectKey
  = S3WordsListProperty
      {bucketName = bucketName, objectKey = objectKey}
instance ToResourceProperties S3WordsListProperty where
  toResourceProperties S3WordsListProperty {..}
    = ResourceProperties
        {awsType = "AWS::Macie::AllowList.S3WordsList",
         properties = ["BucketName" JSON..= bucketName,
                       "ObjectKey" JSON..= objectKey]}
instance JSON.ToJSON S3WordsListProperty where
  toJSON S3WordsListProperty {..}
    = JSON.object
        ["BucketName" JSON..= bucketName, "ObjectKey" JSON..= objectKey]
instance Property "BucketName" S3WordsListProperty where
  type PropertyType "BucketName" S3WordsListProperty = Value Prelude.Text
  set newValue S3WordsListProperty {..}
    = S3WordsListProperty {bucketName = newValue, ..}
instance Property "ObjectKey" S3WordsListProperty where
  type PropertyType "ObjectKey" S3WordsListProperty = Value Prelude.Text
  set newValue S3WordsListProperty {..}
    = S3WordsListProperty {objectKey = newValue, ..}