module Stratosphere.MediaLive.Channel.SrtOutputSettingsProperty (
        module Exports, SrtOutputSettingsProperty(..),
        mkSrtOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.UdpContainerSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SrtOutputSettingsProperty
  = SrtOutputSettingsProperty {bufferMsec :: (Prelude.Maybe (Value Prelude.Integer)),
                               containerSettings :: (Prelude.Maybe UdpContainerSettingsProperty),
                               destination :: (Prelude.Maybe OutputLocationRefProperty),
                               encryptionType :: (Prelude.Maybe (Value Prelude.Text)),
                               latency :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSrtOutputSettingsProperty :: SrtOutputSettingsProperty
mkSrtOutputSettingsProperty
  = SrtOutputSettingsProperty
      {bufferMsec = Prelude.Nothing, containerSettings = Prelude.Nothing,
       destination = Prelude.Nothing, encryptionType = Prelude.Nothing,
       latency = Prelude.Nothing}
instance ToResourceProperties SrtOutputSettingsProperty where
  toResourceProperties SrtOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.SrtOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BufferMsec" Prelude.<$> bufferMsec,
                            (JSON..=) "ContainerSettings" Prelude.<$> containerSettings,
                            (JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "EncryptionType" Prelude.<$> encryptionType,
                            (JSON..=) "Latency" Prelude.<$> latency])}
instance JSON.ToJSON SrtOutputSettingsProperty where
  toJSON SrtOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BufferMsec" Prelude.<$> bufferMsec,
               (JSON..=) "ContainerSettings" Prelude.<$> containerSettings,
               (JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "EncryptionType" Prelude.<$> encryptionType,
               (JSON..=) "Latency" Prelude.<$> latency]))
instance Property "BufferMsec" SrtOutputSettingsProperty where
  type PropertyType "BufferMsec" SrtOutputSettingsProperty = Value Prelude.Integer
  set newValue SrtOutputSettingsProperty {..}
    = SrtOutputSettingsProperty
        {bufferMsec = Prelude.pure newValue, ..}
instance Property "ContainerSettings" SrtOutputSettingsProperty where
  type PropertyType "ContainerSettings" SrtOutputSettingsProperty = UdpContainerSettingsProperty
  set newValue SrtOutputSettingsProperty {..}
    = SrtOutputSettingsProperty
        {containerSettings = Prelude.pure newValue, ..}
instance Property "Destination" SrtOutputSettingsProperty where
  type PropertyType "Destination" SrtOutputSettingsProperty = OutputLocationRefProperty
  set newValue SrtOutputSettingsProperty {..}
    = SrtOutputSettingsProperty
        {destination = Prelude.pure newValue, ..}
instance Property "EncryptionType" SrtOutputSettingsProperty where
  type PropertyType "EncryptionType" SrtOutputSettingsProperty = Value Prelude.Text
  set newValue SrtOutputSettingsProperty {..}
    = SrtOutputSettingsProperty
        {encryptionType = Prelude.pure newValue, ..}
instance Property "Latency" SrtOutputSettingsProperty where
  type PropertyType "Latency" SrtOutputSettingsProperty = Value Prelude.Integer
  set newValue SrtOutputSettingsProperty {..}
    = SrtOutputSettingsProperty {latency = Prelude.pure newValue, ..}