module Stratosphere.SageMaker.ProcessingJob.S3OutputProperty (
        S3OutputProperty(..), mkS3OutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3OutputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-s3output.html>
    S3OutputProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-s3output.html#cfn-sagemaker-processingjob-s3output-localpath>
                      localPath :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-s3output.html#cfn-sagemaker-processingjob-s3output-s3uploadmode>
                      s3UploadMode :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-s3output.html#cfn-sagemaker-processingjob-s3output-s3uri>
                      s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3OutputProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3OutputProperty
mkS3OutputProperty s3UploadMode s3Uri
  = S3OutputProperty
      {haddock_workaround_ = (), s3UploadMode = s3UploadMode,
       s3Uri = s3Uri, localPath = Prelude.Nothing}
instance ToResourceProperties S3OutputProperty where
  toResourceProperties S3OutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.S3Output",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3UploadMode" JSON..= s3UploadMode, "S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes [(JSON..=) "LocalPath" Prelude.<$> localPath]))}
instance JSON.ToJSON S3OutputProperty where
  toJSON S3OutputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3UploadMode" JSON..= s3UploadMode, "S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes [(JSON..=) "LocalPath" Prelude.<$> localPath])))
instance Property "LocalPath" S3OutputProperty where
  type PropertyType "LocalPath" S3OutputProperty = Value Prelude.Text
  set newValue S3OutputProperty {..}
    = S3OutputProperty {localPath = Prelude.pure newValue, ..}
instance Property "S3UploadMode" S3OutputProperty where
  type PropertyType "S3UploadMode" S3OutputProperty = Value Prelude.Text
  set newValue S3OutputProperty {..}
    = S3OutputProperty {s3UploadMode = newValue, ..}
instance Property "S3Uri" S3OutputProperty where
  type PropertyType "S3Uri" S3OutputProperty = Value Prelude.Text
  set newValue S3OutputProperty {..}
    = S3OutputProperty {s3Uri = newValue, ..}