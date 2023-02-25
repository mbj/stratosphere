module Stratosphere.Lambda.LayerVersion.ContentProperty (
        ContentProperty(..), mkContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContentProperty
  = ContentProperty {s3Bucket :: (Value Prelude.Text),
                     s3Key :: (Value Prelude.Text),
                     s3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text))}
mkContentProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ContentProperty
mkContentProperty s3Bucket s3Key
  = ContentProperty
      {s3Bucket = s3Bucket, s3Key = s3Key,
       s3ObjectVersion = Prelude.Nothing}
instance ToResourceProperties ContentProperty where
  toResourceProperties ContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::LayerVersion.Content",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3Bucket" JSON..= s3Bucket, "S3Key" JSON..= s3Key]
                           (Prelude.catMaybes
                              [(JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion]))}
instance JSON.ToJSON ContentProperty where
  toJSON ContentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3Bucket" JSON..= s3Bucket, "S3Key" JSON..= s3Key]
              (Prelude.catMaybes
                 [(JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion])))
instance Property "S3Bucket" ContentProperty where
  type PropertyType "S3Bucket" ContentProperty = Value Prelude.Text
  set newValue ContentProperty {..}
    = ContentProperty {s3Bucket = newValue, ..}
instance Property "S3Key" ContentProperty where
  type PropertyType "S3Key" ContentProperty = Value Prelude.Text
  set newValue ContentProperty {..}
    = ContentProperty {s3Key = newValue, ..}
instance Property "S3ObjectVersion" ContentProperty where
  type PropertyType "S3ObjectVersion" ContentProperty = Value Prelude.Text
  set newValue ContentProperty {..}
    = ContentProperty {s3ObjectVersion = Prelude.pure newValue, ..}