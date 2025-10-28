module Stratosphere.Kendra.Faq.S3PathProperty (
        S3PathProperty(..), mkS3PathProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3PathProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-faq-s3path.html>
    S3PathProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-faq-s3path.html#cfn-kendra-faq-s3path-bucket>
                    bucket :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-faq-s3path.html#cfn-kendra-faq-s3path-key>
                    key :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3PathProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3PathProperty
mkS3PathProperty bucket key
  = S3PathProperty
      {haddock_workaround_ = (), bucket = bucket, key = key}
instance ToResourceProperties S3PathProperty where
  toResourceProperties S3PathProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Faq.S3Path", supportsTags = Prelude.False,
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