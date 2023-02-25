module Stratosphere.Lex.Bot.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = S3LocationProperty {s3Bucket :: (Value Prelude.Text),
                        s3ObjectKey :: (Value Prelude.Text),
                        s3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text))}
mkS3LocationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3LocationProperty
mkS3LocationProperty s3Bucket s3ObjectKey
  = S3LocationProperty
      {s3Bucket = s3Bucket, s3ObjectKey = s3ObjectKey,
       s3ObjectVersion = Prelude.Nothing}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.S3Location",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3Bucket" JSON..= s3Bucket, "S3ObjectKey" JSON..= s3ObjectKey]
                           (Prelude.catMaybes
                              [(JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion]))}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3Bucket" JSON..= s3Bucket, "S3ObjectKey" JSON..= s3ObjectKey]
              (Prelude.catMaybes
                 [(JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion])))
instance Property "S3Bucket" S3LocationProperty where
  type PropertyType "S3Bucket" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {s3Bucket = newValue, ..}
instance Property "S3ObjectKey" S3LocationProperty where
  type PropertyType "S3ObjectKey" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {s3ObjectKey = newValue, ..}
instance Property "S3ObjectVersion" S3LocationProperty where
  type PropertyType "S3ObjectVersion" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {s3ObjectVersion = Prelude.pure newValue, ..}