module Stratosphere.SageMaker.Space.S3FileSystemProperty (
        S3FileSystemProperty(..), mkS3FileSystemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3FileSystemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-s3filesystem.html>
    S3FileSystemProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-s3filesystem.html#cfn-sagemaker-space-s3filesystem-s3uri>
                          s3Uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3FileSystemProperty :: S3FileSystemProperty
mkS3FileSystemProperty
  = S3FileSystemProperty
      {haddock_workaround_ = (), s3Uri = Prelude.Nothing}
instance ToResourceProperties S3FileSystemProperty where
  toResourceProperties S3FileSystemProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.S3FileSystem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3Uri" Prelude.<$> s3Uri])}
instance JSON.ToJSON S3FileSystemProperty where
  toJSON S3FileSystemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3Uri" Prelude.<$> s3Uri]))
instance Property "S3Uri" S3FileSystemProperty where
  type PropertyType "S3Uri" S3FileSystemProperty = Value Prelude.Text
  set newValue S3FileSystemProperty {..}
    = S3FileSystemProperty {s3Uri = Prelude.pure newValue, ..}