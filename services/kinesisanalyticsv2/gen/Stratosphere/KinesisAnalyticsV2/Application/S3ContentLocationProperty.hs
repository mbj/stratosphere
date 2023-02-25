module Stratosphere.KinesisAnalyticsV2.Application.S3ContentLocationProperty (
        S3ContentLocationProperty(..), mkS3ContentLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ContentLocationProperty
  = S3ContentLocationProperty {bucketARN :: (Value Prelude.Text),
                               fileKey :: (Value Prelude.Text),
                               objectVersion :: (Prelude.Maybe (Value Prelude.Text))}
mkS3ContentLocationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> S3ContentLocationProperty
mkS3ContentLocationProperty bucketARN fileKey
  = S3ContentLocationProperty
      {bucketARN = bucketARN, fileKey = fileKey,
       objectVersion = Prelude.Nothing}
instance ToResourceProperties S3ContentLocationProperty where
  toResourceProperties S3ContentLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.S3ContentLocation",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketARN" JSON..= bucketARN, "FileKey" JSON..= fileKey]
                           (Prelude.catMaybes
                              [(JSON..=) "ObjectVersion" Prelude.<$> objectVersion]))}
instance JSON.ToJSON S3ContentLocationProperty where
  toJSON S3ContentLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketARN" JSON..= bucketARN, "FileKey" JSON..= fileKey]
              (Prelude.catMaybes
                 [(JSON..=) "ObjectVersion" Prelude.<$> objectVersion])))
instance Property "BucketARN" S3ContentLocationProperty where
  type PropertyType "BucketARN" S3ContentLocationProperty = Value Prelude.Text
  set newValue S3ContentLocationProperty {..}
    = S3ContentLocationProperty {bucketARN = newValue, ..}
instance Property "FileKey" S3ContentLocationProperty where
  type PropertyType "FileKey" S3ContentLocationProperty = Value Prelude.Text
  set newValue S3ContentLocationProperty {..}
    = S3ContentLocationProperty {fileKey = newValue, ..}
instance Property "ObjectVersion" S3ContentLocationProperty where
  type PropertyType "ObjectVersion" S3ContentLocationProperty = Value Prelude.Text
  set newValue S3ContentLocationProperty {..}
    = S3ContentLocationProperty
        {objectVersion = Prelude.pure newValue, ..}