module Stratosphere.GroundStation.Config.S3RecordingConfigProperty (
        S3RecordingConfigProperty(..), mkS3RecordingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3RecordingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-s3recordingconfig.html>
    S3RecordingConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-s3recordingconfig.html#cfn-groundstation-config-s3recordingconfig-bucketarn>
                               bucketArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-s3recordingconfig.html#cfn-groundstation-config-s3recordingconfig-prefix>
                               prefix :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-s3recordingconfig.html#cfn-groundstation-config-s3recordingconfig-rolearn>
                               roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3RecordingConfigProperty :: S3RecordingConfigProperty
mkS3RecordingConfigProperty
  = S3RecordingConfigProperty
      {haddock_workaround_ = (), bucketArn = Prelude.Nothing,
       prefix = Prelude.Nothing, roleArn = Prelude.Nothing}
instance ToResourceProperties S3RecordingConfigProperty where
  toResourceProperties S3RecordingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.S3RecordingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketArn" Prelude.<$> bucketArn,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn])}
instance JSON.ToJSON S3RecordingConfigProperty where
  toJSON S3RecordingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketArn" Prelude.<$> bucketArn,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "RoleArn" Prelude.<$> roleArn]))
instance Property "BucketArn" S3RecordingConfigProperty where
  type PropertyType "BucketArn" S3RecordingConfigProperty = Value Prelude.Text
  set newValue S3RecordingConfigProperty {..}
    = S3RecordingConfigProperty {bucketArn = Prelude.pure newValue, ..}
instance Property "Prefix" S3RecordingConfigProperty where
  type PropertyType "Prefix" S3RecordingConfigProperty = Value Prelude.Text
  set newValue S3RecordingConfigProperty {..}
    = S3RecordingConfigProperty {prefix = Prelude.pure newValue, ..}
instance Property "RoleArn" S3RecordingConfigProperty where
  type PropertyType "RoleArn" S3RecordingConfigProperty = Value Prelude.Text
  set newValue S3RecordingConfigProperty {..}
    = S3RecordingConfigProperty {roleArn = Prelude.pure newValue, ..}