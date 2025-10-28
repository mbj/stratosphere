module Stratosphere.MediaTailor.Channel.HlsPlaylistSettingsProperty (
        HlsPlaylistSettingsProperty(..), mkHlsPlaylistSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsPlaylistSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-hlsplaylistsettings.html>
    HlsPlaylistSettingsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-hlsplaylistsettings.html#cfn-mediatailor-channel-hlsplaylistsettings-admarkuptype>
                                 adMarkupType :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-hlsplaylistsettings.html#cfn-mediatailor-channel-hlsplaylistsettings-manifestwindowseconds>
                                 manifestWindowSeconds :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsPlaylistSettingsProperty :: HlsPlaylistSettingsProperty
mkHlsPlaylistSettingsProperty
  = HlsPlaylistSettingsProperty
      {haddock_workaround_ = (), adMarkupType = Prelude.Nothing,
       manifestWindowSeconds = Prelude.Nothing}
instance ToResourceProperties HlsPlaylistSettingsProperty where
  toResourceProperties HlsPlaylistSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::Channel.HlsPlaylistSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdMarkupType" Prelude.<$> adMarkupType,
                            (JSON..=) "ManifestWindowSeconds"
                              Prelude.<$> manifestWindowSeconds])}
instance JSON.ToJSON HlsPlaylistSettingsProperty where
  toJSON HlsPlaylistSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdMarkupType" Prelude.<$> adMarkupType,
               (JSON..=) "ManifestWindowSeconds"
                 Prelude.<$> manifestWindowSeconds]))
instance Property "AdMarkupType" HlsPlaylistSettingsProperty where
  type PropertyType "AdMarkupType" HlsPlaylistSettingsProperty = ValueList Prelude.Text
  set newValue HlsPlaylistSettingsProperty {..}
    = HlsPlaylistSettingsProperty
        {adMarkupType = Prelude.pure newValue, ..}
instance Property "ManifestWindowSeconds" HlsPlaylistSettingsProperty where
  type PropertyType "ManifestWindowSeconds" HlsPlaylistSettingsProperty = Value Prelude.Double
  set newValue HlsPlaylistSettingsProperty {..}
    = HlsPlaylistSettingsProperty
        {manifestWindowSeconds = Prelude.pure newValue, ..}