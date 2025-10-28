module Stratosphere.MediaLive.Channel.HlsS3SettingsProperty (
        HlsS3SettingsProperty(..), mkHlsS3SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsS3SettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlss3settings.html>
    HlsS3SettingsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlss3settings.html#cfn-medialive-channel-hlss3settings-cannedacl>
                           cannedAcl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsS3SettingsProperty :: HlsS3SettingsProperty
mkHlsS3SettingsProperty
  = HlsS3SettingsProperty
      {haddock_workaround_ = (), cannedAcl = Prelude.Nothing}
instance ToResourceProperties HlsS3SettingsProperty where
  toResourceProperties HlsS3SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HlsS3Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "CannedAcl" Prelude.<$> cannedAcl])}
instance JSON.ToJSON HlsS3SettingsProperty where
  toJSON HlsS3SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "CannedAcl" Prelude.<$> cannedAcl]))
instance Property "CannedAcl" HlsS3SettingsProperty where
  type PropertyType "CannedAcl" HlsS3SettingsProperty = Value Prelude.Text
  set newValue HlsS3SettingsProperty {..}
    = HlsS3SettingsProperty {cannedAcl = Prelude.pure newValue, ..}