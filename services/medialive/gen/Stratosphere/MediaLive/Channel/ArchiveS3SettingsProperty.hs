module Stratosphere.MediaLive.Channel.ArchiveS3SettingsProperty (
        ArchiveS3SettingsProperty(..), mkArchiveS3SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArchiveS3SettingsProperty
  = ArchiveS3SettingsProperty {cannedAcl :: (Prelude.Maybe (Value Prelude.Text))}
mkArchiveS3SettingsProperty :: ArchiveS3SettingsProperty
mkArchiveS3SettingsProperty
  = ArchiveS3SettingsProperty {cannedAcl = Prelude.Nothing}
instance ToResourceProperties ArchiveS3SettingsProperty where
  toResourceProperties ArchiveS3SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ArchiveS3Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "CannedAcl" Prelude.<$> cannedAcl])}
instance JSON.ToJSON ArchiveS3SettingsProperty where
  toJSON ArchiveS3SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "CannedAcl" Prelude.<$> cannedAcl]))
instance Property "CannedAcl" ArchiveS3SettingsProperty where
  type PropertyType "CannedAcl" ArchiveS3SettingsProperty = Value Prelude.Text
  set newValue ArchiveS3SettingsProperty {}
    = ArchiveS3SettingsProperty {cannedAcl = Prelude.pure newValue, ..}