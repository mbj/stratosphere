module Stratosphere.MediaLive.Channel.UdpContainerSettingsProperty (
        module Exports, UdpContainerSettingsProperty(..),
        mkUdpContainerSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.M2tsSettingsProperty as Exports
import Stratosphere.ResourceProperties
data UdpContainerSettingsProperty
  = UdpContainerSettingsProperty {m2tsSettings :: (Prelude.Maybe M2tsSettingsProperty)}
mkUdpContainerSettingsProperty :: UdpContainerSettingsProperty
mkUdpContainerSettingsProperty
  = UdpContainerSettingsProperty {m2tsSettings = Prelude.Nothing}
instance ToResourceProperties UdpContainerSettingsProperty where
  toResourceProperties UdpContainerSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.UdpContainerSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "M2tsSettings" Prelude.<$> m2tsSettings])}
instance JSON.ToJSON UdpContainerSettingsProperty where
  toJSON UdpContainerSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "M2tsSettings" Prelude.<$> m2tsSettings]))
instance Property "M2tsSettings" UdpContainerSettingsProperty where
  type PropertyType "M2tsSettings" UdpContainerSettingsProperty = M2tsSettingsProperty
  set newValue UdpContainerSettingsProperty {}
    = UdpContainerSettingsProperty
        {m2tsSettings = Prelude.pure newValue, ..}