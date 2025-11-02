module Stratosphere.SageMaker.UserProfile.SharingSettingsProperty (
        SharingSettingsProperty(..), mkSharingSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SharingSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-sharingsettings.html>
    SharingSettingsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-sharingsettings.html#cfn-sagemaker-userprofile-sharingsettings-notebookoutputoption>
                             notebookOutputOption :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-sharingsettings.html#cfn-sagemaker-userprofile-sharingsettings-s3kmskeyid>
                             s3KmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-sharingsettings.html#cfn-sagemaker-userprofile-sharingsettings-s3outputpath>
                             s3OutputPath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSharingSettingsProperty :: SharingSettingsProperty
mkSharingSettingsProperty
  = SharingSettingsProperty
      {haddock_workaround_ = (), notebookOutputOption = Prelude.Nothing,
       s3KmsKeyId = Prelude.Nothing, s3OutputPath = Prelude.Nothing}
instance ToResourceProperties SharingSettingsProperty where
  toResourceProperties SharingSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.SharingSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NotebookOutputOption" Prelude.<$> notebookOutputOption,
                            (JSON..=) "S3KmsKeyId" Prelude.<$> s3KmsKeyId,
                            (JSON..=) "S3OutputPath" Prelude.<$> s3OutputPath])}
instance JSON.ToJSON SharingSettingsProperty where
  toJSON SharingSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NotebookOutputOption" Prelude.<$> notebookOutputOption,
               (JSON..=) "S3KmsKeyId" Prelude.<$> s3KmsKeyId,
               (JSON..=) "S3OutputPath" Prelude.<$> s3OutputPath]))
instance Property "NotebookOutputOption" SharingSettingsProperty where
  type PropertyType "NotebookOutputOption" SharingSettingsProperty = Value Prelude.Text
  set newValue SharingSettingsProperty {..}
    = SharingSettingsProperty
        {notebookOutputOption = Prelude.pure newValue, ..}
instance Property "S3KmsKeyId" SharingSettingsProperty where
  type PropertyType "S3KmsKeyId" SharingSettingsProperty = Value Prelude.Text
  set newValue SharingSettingsProperty {..}
    = SharingSettingsProperty {s3KmsKeyId = Prelude.pure newValue, ..}
instance Property "S3OutputPath" SharingSettingsProperty where
  type PropertyType "S3OutputPath" SharingSettingsProperty = Value Prelude.Text
  set newValue SharingSettingsProperty {..}
    = SharingSettingsProperty
        {s3OutputPath = Prelude.pure newValue, ..}