module Stratosphere.B2BI.Capability.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = S3LocationProperty {bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                        key :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LocationProperty :: S3LocationProperty
mkS3LocationProperty
  = S3LocationProperty
      {bucketName = Prelude.Nothing, key = Prelude.Nothing}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Capability.S3Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "Key" Prelude.<$> key])}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "Key" Prelude.<$> key]))
instance Property "BucketName" S3LocationProperty where
  type PropertyType "BucketName" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {bucketName = Prelude.pure newValue, ..}
instance Property "Key" S3LocationProperty where
  type PropertyType "Key" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {key = Prelude.pure newValue, ..}