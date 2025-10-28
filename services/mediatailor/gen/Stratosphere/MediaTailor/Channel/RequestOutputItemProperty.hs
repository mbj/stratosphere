module Stratosphere.MediaTailor.Channel.RequestOutputItemProperty (
        module Exports, RequestOutputItemProperty(..),
        mkRequestOutputItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaTailor.Channel.DashPlaylistSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.Channel.HlsPlaylistSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RequestOutputItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-requestoutputitem.html>
    RequestOutputItemProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-requestoutputitem.html#cfn-mediatailor-channel-requestoutputitem-dashplaylistsettings>
                               dashPlaylistSettings :: (Prelude.Maybe DashPlaylistSettingsProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-requestoutputitem.html#cfn-mediatailor-channel-requestoutputitem-hlsplaylistsettings>
                               hlsPlaylistSettings :: (Prelude.Maybe HlsPlaylistSettingsProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-requestoutputitem.html#cfn-mediatailor-channel-requestoutputitem-manifestname>
                               manifestName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-requestoutputitem.html#cfn-mediatailor-channel-requestoutputitem-sourcegroup>
                               sourceGroup :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRequestOutputItemProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RequestOutputItemProperty
mkRequestOutputItemProperty manifestName sourceGroup
  = RequestOutputItemProperty
      {haddock_workaround_ = (), manifestName = manifestName,
       sourceGroup = sourceGroup, dashPlaylistSettings = Prelude.Nothing,
       hlsPlaylistSettings = Prelude.Nothing}
instance ToResourceProperties RequestOutputItemProperty where
  toResourceProperties RequestOutputItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::Channel.RequestOutputItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ManifestName" JSON..= manifestName,
                            "SourceGroup" JSON..= sourceGroup]
                           (Prelude.catMaybes
                              [(JSON..=) "DashPlaylistSettings" Prelude.<$> dashPlaylistSettings,
                               (JSON..=) "HlsPlaylistSettings" Prelude.<$> hlsPlaylistSettings]))}
instance JSON.ToJSON RequestOutputItemProperty where
  toJSON RequestOutputItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ManifestName" JSON..= manifestName,
               "SourceGroup" JSON..= sourceGroup]
              (Prelude.catMaybes
                 [(JSON..=) "DashPlaylistSettings" Prelude.<$> dashPlaylistSettings,
                  (JSON..=) "HlsPlaylistSettings" Prelude.<$> hlsPlaylistSettings])))
instance Property "DashPlaylistSettings" RequestOutputItemProperty where
  type PropertyType "DashPlaylistSettings" RequestOutputItemProperty = DashPlaylistSettingsProperty
  set newValue RequestOutputItemProperty {..}
    = RequestOutputItemProperty
        {dashPlaylistSettings = Prelude.pure newValue, ..}
instance Property "HlsPlaylistSettings" RequestOutputItemProperty where
  type PropertyType "HlsPlaylistSettings" RequestOutputItemProperty = HlsPlaylistSettingsProperty
  set newValue RequestOutputItemProperty {..}
    = RequestOutputItemProperty
        {hlsPlaylistSettings = Prelude.pure newValue, ..}
instance Property "ManifestName" RequestOutputItemProperty where
  type PropertyType "ManifestName" RequestOutputItemProperty = Value Prelude.Text
  set newValue RequestOutputItemProperty {..}
    = RequestOutputItemProperty {manifestName = newValue, ..}
instance Property "SourceGroup" RequestOutputItemProperty where
  type PropertyType "SourceGroup" RequestOutputItemProperty = Value Prelude.Text
  set newValue RequestOutputItemProperty {..}
    = RequestOutputItemProperty {sourceGroup = newValue, ..}