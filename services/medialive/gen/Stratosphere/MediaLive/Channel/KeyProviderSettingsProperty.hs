module Stratosphere.MediaLive.Channel.KeyProviderSettingsProperty (
        module Exports, KeyProviderSettingsProperty(..),
        mkKeyProviderSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.StaticKeySettingsProperty as Exports
import Stratosphere.ResourceProperties
data KeyProviderSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-keyprovidersettings.html>
    KeyProviderSettingsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-keyprovidersettings.html#cfn-medialive-channel-keyprovidersettings-statickeysettings>
                                 staticKeySettings :: (Prelude.Maybe StaticKeySettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyProviderSettingsProperty :: KeyProviderSettingsProperty
mkKeyProviderSettingsProperty
  = KeyProviderSettingsProperty
      {haddock_workaround_ = (), staticKeySettings = Prelude.Nothing}
instance ToResourceProperties KeyProviderSettingsProperty where
  toResourceProperties KeyProviderSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.KeyProviderSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StaticKeySettings" Prelude.<$> staticKeySettings])}
instance JSON.ToJSON KeyProviderSettingsProperty where
  toJSON KeyProviderSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StaticKeySettings" Prelude.<$> staticKeySettings]))
instance Property "StaticKeySettings" KeyProviderSettingsProperty where
  type PropertyType "StaticKeySettings" KeyProviderSettingsProperty = StaticKeySettingsProperty
  set newValue KeyProviderSettingsProperty {..}
    = KeyProviderSettingsProperty
        {staticKeySettings = Prelude.pure newValue, ..}