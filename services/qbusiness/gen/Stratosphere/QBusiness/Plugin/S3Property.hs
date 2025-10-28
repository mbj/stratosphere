module Stratosphere.QBusiness.Plugin.S3Property (
        S3Property(..), mkS3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3Property
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-plugin-s3.html>
    S3Property {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-plugin-s3.html#cfn-qbusiness-plugin-s3-bucket>
                bucket :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-plugin-s3.html#cfn-qbusiness-plugin-s3-key>
                key :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3Property ::
  Value Prelude.Text -> Value Prelude.Text -> S3Property
mkS3Property bucket key = S3Property {bucket = bucket, key = key}
instance ToResourceProperties S3Property where
  toResourceProperties S3Property {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Plugin.S3",
         supportsTags = Prelude.False,
         properties = ["Bucket" JSON..= bucket, "Key" JSON..= key]}
instance JSON.ToJSON S3Property where
  toJSON S3Property {..}
    = JSON.object ["Bucket" JSON..= bucket, "Key" JSON..= key]
instance Property "Bucket" S3Property where
  type PropertyType "Bucket" S3Property = Value Prelude.Text
  set newValue S3Property {..} = S3Property {bucket = newValue, ..}
instance Property "Key" S3Property where
  type PropertyType "Key" S3Property = Value Prelude.Text
  set newValue S3Property {..} = S3Property {key = newValue, ..}