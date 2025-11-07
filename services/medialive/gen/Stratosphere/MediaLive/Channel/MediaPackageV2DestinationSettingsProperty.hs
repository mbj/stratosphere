module Stratosphere.MediaLive.Channel.MediaPackageV2DestinationSettingsProperty (
        MediaPackageV2DestinationSettingsProperty(..),
        mkMediaPackageV2DestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MediaPackageV2DestinationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2destinationsettings.html>
    MediaPackageV2DestinationSettingsProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2destinationsettings.html#cfn-medialive-channel-mediapackagev2destinationsettings-audiogroupid>
                                               audioGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2destinationsettings.html#cfn-medialive-channel-mediapackagev2destinationsettings-audiorenditionsets>
                                               audioRenditionSets :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2destinationsettings.html#cfn-medialive-channel-mediapackagev2destinationsettings-hlsautoselect>
                                               hlsAutoSelect :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagev2destinationsettings.html#cfn-medialive-channel-mediapackagev2destinationsettings-hlsdefault>
                                               hlsDefault :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaPackageV2DestinationSettingsProperty ::
  MediaPackageV2DestinationSettingsProperty
mkMediaPackageV2DestinationSettingsProperty
  = MediaPackageV2DestinationSettingsProperty
      {haddock_workaround_ = (), audioGroupId = Prelude.Nothing,
       audioRenditionSets = Prelude.Nothing,
       hlsAutoSelect = Prelude.Nothing, hlsDefault = Prelude.Nothing}
instance ToResourceProperties MediaPackageV2DestinationSettingsProperty where
  toResourceProperties MediaPackageV2DestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MediaPackageV2DestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioGroupId" Prelude.<$> audioGroupId,
                            (JSON..=) "AudioRenditionSets" Prelude.<$> audioRenditionSets,
                            (JSON..=) "HlsAutoSelect" Prelude.<$> hlsAutoSelect,
                            (JSON..=) "HlsDefault" Prelude.<$> hlsDefault])}
instance JSON.ToJSON MediaPackageV2DestinationSettingsProperty where
  toJSON MediaPackageV2DestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioGroupId" Prelude.<$> audioGroupId,
               (JSON..=) "AudioRenditionSets" Prelude.<$> audioRenditionSets,
               (JSON..=) "HlsAutoSelect" Prelude.<$> hlsAutoSelect,
               (JSON..=) "HlsDefault" Prelude.<$> hlsDefault]))
instance Property "AudioGroupId" MediaPackageV2DestinationSettingsProperty where
  type PropertyType "AudioGroupId" MediaPackageV2DestinationSettingsProperty = Value Prelude.Text
  set newValue MediaPackageV2DestinationSettingsProperty {..}
    = MediaPackageV2DestinationSettingsProperty
        {audioGroupId = Prelude.pure newValue, ..}
instance Property "AudioRenditionSets" MediaPackageV2DestinationSettingsProperty where
  type PropertyType "AudioRenditionSets" MediaPackageV2DestinationSettingsProperty = Value Prelude.Text
  set newValue MediaPackageV2DestinationSettingsProperty {..}
    = MediaPackageV2DestinationSettingsProperty
        {audioRenditionSets = Prelude.pure newValue, ..}
instance Property "HlsAutoSelect" MediaPackageV2DestinationSettingsProperty where
  type PropertyType "HlsAutoSelect" MediaPackageV2DestinationSettingsProperty = Value Prelude.Text
  set newValue MediaPackageV2DestinationSettingsProperty {..}
    = MediaPackageV2DestinationSettingsProperty
        {hlsAutoSelect = Prelude.pure newValue, ..}
instance Property "HlsDefault" MediaPackageV2DestinationSettingsProperty where
  type PropertyType "HlsDefault" MediaPackageV2DestinationSettingsProperty = Value Prelude.Text
  set newValue MediaPackageV2DestinationSettingsProperty {..}
    = MediaPackageV2DestinationSettingsProperty
        {hlsDefault = Prelude.pure newValue, ..}