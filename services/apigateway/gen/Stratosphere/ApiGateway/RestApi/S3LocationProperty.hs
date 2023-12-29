module Stratosphere.ApiGateway.RestApi.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = S3LocationProperty {bucket :: (Prelude.Maybe (Value Prelude.Text)),
                        eTag :: (Prelude.Maybe (Value Prelude.Text)),
                        key :: (Prelude.Maybe (Value Prelude.Text)),
                        version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LocationProperty :: S3LocationProperty
mkS3LocationProperty
  = S3LocationProperty
      {bucket = Prelude.Nothing, eTag = Prelude.Nothing,
       key = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::RestApi.S3Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bucket" Prelude.<$> bucket,
                            (JSON..=) "ETag" Prelude.<$> eTag, (JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bucket" Prelude.<$> bucket,
               (JSON..=) "ETag" Prelude.<$> eTag, (JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Bucket" S3LocationProperty where
  type PropertyType "Bucket" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {bucket = Prelude.pure newValue, ..}
instance Property "ETag" S3LocationProperty where
  type PropertyType "ETag" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {eTag = Prelude.pure newValue, ..}
instance Property "Key" S3LocationProperty where
  type PropertyType "Key" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {key = Prelude.pure newValue, ..}
instance Property "Version" S3LocationProperty where
  type PropertyType "Version" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {version = Prelude.pure newValue, ..}