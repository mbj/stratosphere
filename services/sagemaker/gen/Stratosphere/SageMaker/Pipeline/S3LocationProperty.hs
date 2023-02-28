module Stratosphere.SageMaker.Pipeline.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = S3LocationProperty {bucket :: (Value Prelude.Text),
                        eTag :: (Prelude.Maybe (Value Prelude.Text)),
                        key :: (Value Prelude.Text),
                        version :: (Prelude.Maybe (Value Prelude.Text))}
mkS3LocationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3LocationProperty
mkS3LocationProperty bucket key
  = S3LocationProperty
      {bucket = bucket, key = key, eTag = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Pipeline.S3Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket, "Key" JSON..= key]
                           (Prelude.catMaybes
                              [(JSON..=) "ETag" Prelude.<$> eTag,
                               (JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket, "Key" JSON..= key]
              (Prelude.catMaybes
                 [(JSON..=) "ETag" Prelude.<$> eTag,
                  (JSON..=) "Version" Prelude.<$> version])))
instance Property "Bucket" S3LocationProperty where
  type PropertyType "Bucket" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {bucket = newValue, ..}
instance Property "ETag" S3LocationProperty where
  type PropertyType "ETag" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {eTag = Prelude.pure newValue, ..}
instance Property "Key" S3LocationProperty where
  type PropertyType "Key" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {key = newValue, ..}
instance Property "Version" S3LocationProperty where
  type PropertyType "Version" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {version = Prelude.pure newValue, ..}