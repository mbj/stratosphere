module Stratosphere.SageMaker.ModelBiasJobDefinition.S3OutputProperty (
        S3OutputProperty(..), mkS3OutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3OutputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-s3output.html>
    S3OutputProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-s3output.html#cfn-sagemaker-modelbiasjobdefinition-s3output-localpath>
                      localPath :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-s3output.html#cfn-sagemaker-modelbiasjobdefinition-s3output-s3uploadmode>
                      s3UploadMode :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-s3output.html#cfn-sagemaker-modelbiasjobdefinition-s3output-s3uri>
                      s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3OutputProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3OutputProperty
mkS3OutputProperty localPath s3Uri
  = S3OutputProperty
      {haddock_workaround_ = (), localPath = localPath, s3Uri = s3Uri,
       s3UploadMode = Prelude.Nothing}
instance ToResourceProperties S3OutputProperty where
  toResourceProperties S3OutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelBiasJobDefinition.S3Output",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LocalPath" JSON..= localPath, "S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes
                              [(JSON..=) "S3UploadMode" Prelude.<$> s3UploadMode]))}
instance JSON.ToJSON S3OutputProperty where
  toJSON S3OutputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LocalPath" JSON..= localPath, "S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes
                 [(JSON..=) "S3UploadMode" Prelude.<$> s3UploadMode])))
instance Property "LocalPath" S3OutputProperty where
  type PropertyType "LocalPath" S3OutputProperty = Value Prelude.Text
  set newValue S3OutputProperty {..}
    = S3OutputProperty {localPath = newValue, ..}
instance Property "S3UploadMode" S3OutputProperty where
  type PropertyType "S3UploadMode" S3OutputProperty = Value Prelude.Text
  set newValue S3OutputProperty {..}
    = S3OutputProperty {s3UploadMode = Prelude.pure newValue, ..}
instance Property "S3Uri" S3OutputProperty where
  type PropertyType "S3Uri" S3OutputProperty = Value Prelude.Text
  set newValue S3OutputProperty {..}
    = S3OutputProperty {s3Uri = newValue, ..}