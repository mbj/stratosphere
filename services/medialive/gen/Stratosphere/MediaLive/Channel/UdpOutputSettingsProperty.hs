module Stratosphere.MediaLive.Channel.UdpOutputSettingsProperty (
        module Exports, UdpOutputSettingsProperty(..),
        mkUdpOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.FecOutputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.UdpContainerSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UdpOutputSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpoutputsettings.html>
    UdpOutputSettingsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpoutputsettings.html#cfn-medialive-channel-udpoutputsettings-buffermsec>
                               bufferMsec :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpoutputsettings.html#cfn-medialive-channel-udpoutputsettings-containersettings>
                               containerSettings :: (Prelude.Maybe UdpContainerSettingsProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpoutputsettings.html#cfn-medialive-channel-udpoutputsettings-destination>
                               destination :: (Prelude.Maybe OutputLocationRefProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-udpoutputsettings.html#cfn-medialive-channel-udpoutputsettings-fecoutputsettings>
                               fecOutputSettings :: (Prelude.Maybe FecOutputSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUdpOutputSettingsProperty :: UdpOutputSettingsProperty
mkUdpOutputSettingsProperty
  = UdpOutputSettingsProperty
      {haddock_workaround_ = (), bufferMsec = Prelude.Nothing,
       containerSettings = Prelude.Nothing, destination = Prelude.Nothing,
       fecOutputSettings = Prelude.Nothing}
instance ToResourceProperties UdpOutputSettingsProperty where
  toResourceProperties UdpOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.UdpOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BufferMsec" Prelude.<$> bufferMsec,
                            (JSON..=) "ContainerSettings" Prelude.<$> containerSettings,
                            (JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "FecOutputSettings" Prelude.<$> fecOutputSettings])}
instance JSON.ToJSON UdpOutputSettingsProperty where
  toJSON UdpOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BufferMsec" Prelude.<$> bufferMsec,
               (JSON..=) "ContainerSettings" Prelude.<$> containerSettings,
               (JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "FecOutputSettings" Prelude.<$> fecOutputSettings]))
instance Property "BufferMsec" UdpOutputSettingsProperty where
  type PropertyType "BufferMsec" UdpOutputSettingsProperty = Value Prelude.Integer
  set newValue UdpOutputSettingsProperty {..}
    = UdpOutputSettingsProperty
        {bufferMsec = Prelude.pure newValue, ..}
instance Property "ContainerSettings" UdpOutputSettingsProperty where
  type PropertyType "ContainerSettings" UdpOutputSettingsProperty = UdpContainerSettingsProperty
  set newValue UdpOutputSettingsProperty {..}
    = UdpOutputSettingsProperty
        {containerSettings = Prelude.pure newValue, ..}
instance Property "Destination" UdpOutputSettingsProperty where
  type PropertyType "Destination" UdpOutputSettingsProperty = OutputLocationRefProperty
  set newValue UdpOutputSettingsProperty {..}
    = UdpOutputSettingsProperty
        {destination = Prelude.pure newValue, ..}
instance Property "FecOutputSettings" UdpOutputSettingsProperty where
  type PropertyType "FecOutputSettings" UdpOutputSettingsProperty = FecOutputSettingsProperty
  set newValue UdpOutputSettingsProperty {..}
    = UdpOutputSettingsProperty
        {fecOutputSettings = Prelude.pure newValue, ..}