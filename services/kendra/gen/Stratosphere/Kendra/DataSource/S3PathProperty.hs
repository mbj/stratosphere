module Stratosphere.Kendra.DataSource.S3PathProperty (
        S3PathProperty(..), mkS3PathProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3PathProperty
  = S3PathProperty {bucket :: (Value Prelude.Text),
                    key :: (Value Prelude.Text)}
mkS3PathProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3PathProperty
mkS3PathProperty bucket key
  = S3PathProperty {bucket = bucket, key = key}
instance ToResourceProperties S3PathProperty where
  toResourceProperties S3PathProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.S3Path",
         properties = ["Bucket" JSON..= bucket, "Key" JSON..= key]}
instance JSON.ToJSON S3PathProperty where
  toJSON S3PathProperty {..}
    = JSON.object ["Bucket" JSON..= bucket, "Key" JSON..= key]
instance Property "Bucket" S3PathProperty where
  type PropertyType "Bucket" S3PathProperty = Value Prelude.Text
  set newValue S3PathProperty {..}
    = S3PathProperty {bucket = newValue, ..}
instance Property "Key" S3PathProperty where
  type PropertyType "Key" S3PathProperty = Value Prelude.Text
  set newValue S3PathProperty {..}
    = S3PathProperty {key = newValue, ..}