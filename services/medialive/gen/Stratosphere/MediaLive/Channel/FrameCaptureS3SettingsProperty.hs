module Stratosphere.MediaLive.Channel.FrameCaptureS3SettingsProperty (
        FrameCaptureS3SettingsProperty(..),
        mkFrameCaptureS3SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrameCaptureS3SettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecaptures3settings.html>
    FrameCaptureS3SettingsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecaptures3settings.html#cfn-medialive-channel-framecaptures3settings-cannedacl>
                                    cannedAcl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFrameCaptureS3SettingsProperty :: FrameCaptureS3SettingsProperty
mkFrameCaptureS3SettingsProperty
  = FrameCaptureS3SettingsProperty
      {haddock_workaround_ = (), cannedAcl = Prelude.Nothing}
instance ToResourceProperties FrameCaptureS3SettingsProperty where
  toResourceProperties FrameCaptureS3SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FrameCaptureS3Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "CannedAcl" Prelude.<$> cannedAcl])}
instance JSON.ToJSON FrameCaptureS3SettingsProperty where
  toJSON FrameCaptureS3SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "CannedAcl" Prelude.<$> cannedAcl]))
instance Property "CannedAcl" FrameCaptureS3SettingsProperty where
  type PropertyType "CannedAcl" FrameCaptureS3SettingsProperty = Value Prelude.Text
  set newValue FrameCaptureS3SettingsProperty {..}
    = FrameCaptureS3SettingsProperty
        {cannedAcl = Prelude.pure newValue, ..}