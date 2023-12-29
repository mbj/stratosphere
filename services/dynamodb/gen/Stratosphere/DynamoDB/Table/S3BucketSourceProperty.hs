module Stratosphere.DynamoDB.Table.S3BucketSourceProperty (
        S3BucketSourceProperty(..), mkS3BucketSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3BucketSourceProperty
  = S3BucketSourceProperty {s3Bucket :: (Value Prelude.Text),
                            s3BucketOwner :: (Prelude.Maybe (Value Prelude.Text)),
                            s3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3BucketSourceProperty ::
  Value Prelude.Text -> S3BucketSourceProperty
mkS3BucketSourceProperty s3Bucket
  = S3BucketSourceProperty
      {s3Bucket = s3Bucket, s3BucketOwner = Prelude.Nothing,
       s3KeyPrefix = Prelude.Nothing}
instance ToResourceProperties S3BucketSourceProperty where
  toResourceProperties S3BucketSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.S3BucketSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3Bucket" JSON..= s3Bucket]
                           (Prelude.catMaybes
                              [(JSON..=) "S3BucketOwner" Prelude.<$> s3BucketOwner,
                               (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix]))}
instance JSON.ToJSON S3BucketSourceProperty where
  toJSON S3BucketSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3Bucket" JSON..= s3Bucket]
              (Prelude.catMaybes
                 [(JSON..=) "S3BucketOwner" Prelude.<$> s3BucketOwner,
                  (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix])))
instance Property "S3Bucket" S3BucketSourceProperty where
  type PropertyType "S3Bucket" S3BucketSourceProperty = Value Prelude.Text
  set newValue S3BucketSourceProperty {..}
    = S3BucketSourceProperty {s3Bucket = newValue, ..}
instance Property "S3BucketOwner" S3BucketSourceProperty where
  type PropertyType "S3BucketOwner" S3BucketSourceProperty = Value Prelude.Text
  set newValue S3BucketSourceProperty {..}
    = S3BucketSourceProperty
        {s3BucketOwner = Prelude.pure newValue, ..}
instance Property "S3KeyPrefix" S3BucketSourceProperty where
  type PropertyType "S3KeyPrefix" S3BucketSourceProperty = Value Prelude.Text
  set newValue S3BucketSourceProperty {..}
    = S3BucketSourceProperty {s3KeyPrefix = Prelude.pure newValue, ..}