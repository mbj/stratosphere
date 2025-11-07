module Stratosphere.MediaLive.Input.Smpte2110ReceiverGroupSdpSettingsProperty (
        module Exports, Smpte2110ReceiverGroupSdpSettingsProperty(..),
        mkSmpte2110ReceiverGroupSdpSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Input.InputSdpLocationProperty as Exports
import Stratosphere.ResourceProperties
data Smpte2110ReceiverGroupSdpSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsdpsettings.html>
    Smpte2110ReceiverGroupSdpSettingsProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsdpsettings.html#cfn-medialive-input-smpte2110receivergroupsdpsettings-ancillarysdps>
                                               ancillarySdps :: (Prelude.Maybe [InputSdpLocationProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsdpsettings.html#cfn-medialive-input-smpte2110receivergroupsdpsettings-audiosdps>
                                               audioSdps :: (Prelude.Maybe [InputSdpLocationProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsdpsettings.html#cfn-medialive-input-smpte2110receivergroupsdpsettings-videosdp>
                                               videoSdp :: (Prelude.Maybe InputSdpLocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmpte2110ReceiverGroupSdpSettingsProperty ::
  Smpte2110ReceiverGroupSdpSettingsProperty
mkSmpte2110ReceiverGroupSdpSettingsProperty
  = Smpte2110ReceiverGroupSdpSettingsProperty
      {haddock_workaround_ = (), ancillarySdps = Prelude.Nothing,
       audioSdps = Prelude.Nothing, videoSdp = Prelude.Nothing}
instance ToResourceProperties Smpte2110ReceiverGroupSdpSettingsProperty where
  toResourceProperties Smpte2110ReceiverGroupSdpSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.Smpte2110ReceiverGroupSdpSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AncillarySdps" Prelude.<$> ancillarySdps,
                            (JSON..=) "AudioSdps" Prelude.<$> audioSdps,
                            (JSON..=) "VideoSdp" Prelude.<$> videoSdp])}
instance JSON.ToJSON Smpte2110ReceiverGroupSdpSettingsProperty where
  toJSON Smpte2110ReceiverGroupSdpSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AncillarySdps" Prelude.<$> ancillarySdps,
               (JSON..=) "AudioSdps" Prelude.<$> audioSdps,
               (JSON..=) "VideoSdp" Prelude.<$> videoSdp]))
instance Property "AncillarySdps" Smpte2110ReceiverGroupSdpSettingsProperty where
  type PropertyType "AncillarySdps" Smpte2110ReceiverGroupSdpSettingsProperty = [InputSdpLocationProperty]
  set newValue Smpte2110ReceiverGroupSdpSettingsProperty {..}
    = Smpte2110ReceiverGroupSdpSettingsProperty
        {ancillarySdps = Prelude.pure newValue, ..}
instance Property "AudioSdps" Smpte2110ReceiverGroupSdpSettingsProperty where
  type PropertyType "AudioSdps" Smpte2110ReceiverGroupSdpSettingsProperty = [InputSdpLocationProperty]
  set newValue Smpte2110ReceiverGroupSdpSettingsProperty {..}
    = Smpte2110ReceiverGroupSdpSettingsProperty
        {audioSdps = Prelude.pure newValue, ..}
instance Property "VideoSdp" Smpte2110ReceiverGroupSdpSettingsProperty where
  type PropertyType "VideoSdp" Smpte2110ReceiverGroupSdpSettingsProperty = InputSdpLocationProperty
  set newValue Smpte2110ReceiverGroupSdpSettingsProperty {..}
    = Smpte2110ReceiverGroupSdpSettingsProperty
        {videoSdp = Prelude.pure newValue, ..}