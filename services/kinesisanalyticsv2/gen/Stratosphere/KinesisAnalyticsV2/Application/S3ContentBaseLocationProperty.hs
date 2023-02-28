module Stratosphere.KinesisAnalyticsV2.Application.S3ContentBaseLocationProperty (
        S3ContentBaseLocationProperty(..), mkS3ContentBaseLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ContentBaseLocationProperty
  = S3ContentBaseLocationProperty {basePath :: (Prelude.Maybe (Value Prelude.Text)),
                                   bucketARN :: (Value Prelude.Text)}
mkS3ContentBaseLocationProperty ::
  Value Prelude.Text -> S3ContentBaseLocationProperty
mkS3ContentBaseLocationProperty bucketARN
  = S3ContentBaseLocationProperty
      {bucketARN = bucketARN, basePath = Prelude.Nothing}
instance ToResourceProperties S3ContentBaseLocationProperty where
  toResourceProperties S3ContentBaseLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.S3ContentBaseLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketARN" JSON..= bucketARN]
                           (Prelude.catMaybes [(JSON..=) "BasePath" Prelude.<$> basePath]))}
instance JSON.ToJSON S3ContentBaseLocationProperty where
  toJSON S3ContentBaseLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketARN" JSON..= bucketARN]
              (Prelude.catMaybes [(JSON..=) "BasePath" Prelude.<$> basePath])))
instance Property "BasePath" S3ContentBaseLocationProperty where
  type PropertyType "BasePath" S3ContentBaseLocationProperty = Value Prelude.Text
  set newValue S3ContentBaseLocationProperty {..}
    = S3ContentBaseLocationProperty
        {basePath = Prelude.pure newValue, ..}
instance Property "BucketARN" S3ContentBaseLocationProperty where
  type PropertyType "BucketARN" S3ContentBaseLocationProperty = Value Prelude.Text
  set newValue S3ContentBaseLocationProperty {..}
    = S3ContentBaseLocationProperty {bucketARN = newValue, ..}