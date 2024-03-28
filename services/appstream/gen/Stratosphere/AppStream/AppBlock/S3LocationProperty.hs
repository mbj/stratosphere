module Stratosphere.AppStream.AppBlock.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = S3LocationProperty {s3Bucket :: (Value Prelude.Text),
                        s3Key :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LocationProperty :: Value Prelude.Text -> S3LocationProperty
mkS3LocationProperty s3Bucket
  = S3LocationProperty {s3Bucket = s3Bucket, s3Key = Prelude.Nothing}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::AppBlock.S3Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3Bucket" JSON..= s3Bucket]
                           (Prelude.catMaybes [(JSON..=) "S3Key" Prelude.<$> s3Key]))}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3Bucket" JSON..= s3Bucket]
              (Prelude.catMaybes [(JSON..=) "S3Key" Prelude.<$> s3Key])))
instance Property "S3Bucket" S3LocationProperty where
  type PropertyType "S3Bucket" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {s3Bucket = newValue, ..}
instance Property "S3Key" S3LocationProperty where
  type PropertyType "S3Key" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {s3Key = Prelude.pure newValue, ..}