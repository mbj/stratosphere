module Stratosphere.S3.Bucket.AbortIncompleteMultipartUploadProperty (
        AbortIncompleteMultipartUploadProperty(..),
        mkAbortIncompleteMultipartUploadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AbortIncompleteMultipartUploadProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-abortincompletemultipartupload.html>
    AbortIncompleteMultipartUploadProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-abortincompletemultipartupload.html#cfn-s3-bucket-abortincompletemultipartupload-daysafterinitiation>
                                            daysAfterInitiation :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAbortIncompleteMultipartUploadProperty ::
  Value Prelude.Integer -> AbortIncompleteMultipartUploadProperty
mkAbortIncompleteMultipartUploadProperty daysAfterInitiation
  = AbortIncompleteMultipartUploadProperty
      {daysAfterInitiation = daysAfterInitiation}
instance ToResourceProperties AbortIncompleteMultipartUploadProperty where
  toResourceProperties AbortIncompleteMultipartUploadProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.AbortIncompleteMultipartUpload",
         supportsTags = Prelude.False,
         properties = ["DaysAfterInitiation" JSON..= daysAfterInitiation]}
instance JSON.ToJSON AbortIncompleteMultipartUploadProperty where
  toJSON AbortIncompleteMultipartUploadProperty {..}
    = JSON.object ["DaysAfterInitiation" JSON..= daysAfterInitiation]
instance Property "DaysAfterInitiation" AbortIncompleteMultipartUploadProperty where
  type PropertyType "DaysAfterInitiation" AbortIncompleteMultipartUploadProperty = Value Prelude.Integer
  set newValue AbortIncompleteMultipartUploadProperty {}
    = AbortIncompleteMultipartUploadProperty
        {daysAfterInitiation = newValue, ..}