module Stratosphere.SageMaker.UserProfile.S3FileSystemConfigProperty (
        S3FileSystemConfigProperty(..), mkS3FileSystemConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3FileSystemConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-s3filesystemconfig.html>
    S3FileSystemConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-s3filesystemconfig.html#cfn-sagemaker-userprofile-s3filesystemconfig-mountpath>
                                mountPath :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-s3filesystemconfig.html#cfn-sagemaker-userprofile-s3filesystemconfig-s3uri>
                                s3Uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3FileSystemConfigProperty :: S3FileSystemConfigProperty
mkS3FileSystemConfigProperty
  = S3FileSystemConfigProperty
      {haddock_workaround_ = (), mountPath = Prelude.Nothing,
       s3Uri = Prelude.Nothing}
instance ToResourceProperties S3FileSystemConfigProperty where
  toResourceProperties S3FileSystemConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.S3FileSystemConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MountPath" Prelude.<$> mountPath,
                            (JSON..=) "S3Uri" Prelude.<$> s3Uri])}
instance JSON.ToJSON S3FileSystemConfigProperty where
  toJSON S3FileSystemConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MountPath" Prelude.<$> mountPath,
               (JSON..=) "S3Uri" Prelude.<$> s3Uri]))
instance Property "MountPath" S3FileSystemConfigProperty where
  type PropertyType "MountPath" S3FileSystemConfigProperty = Value Prelude.Text
  set newValue S3FileSystemConfigProperty {..}
    = S3FileSystemConfigProperty
        {mountPath = Prelude.pure newValue, ..}
instance Property "S3Uri" S3FileSystemConfigProperty where
  type PropertyType "S3Uri" S3FileSystemConfigProperty = Value Prelude.Text
  set newValue S3FileSystemConfigProperty {..}
    = S3FileSystemConfigProperty {s3Uri = Prelude.pure newValue, ..}