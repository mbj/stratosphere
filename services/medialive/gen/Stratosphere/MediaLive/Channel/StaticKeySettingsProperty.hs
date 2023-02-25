module Stratosphere.MediaLive.Channel.StaticKeySettingsProperty (
        module Exports, StaticKeySettingsProperty(..),
        mkStaticKeySettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StaticKeySettingsProperty
  = StaticKeySettingsProperty {keyProviderServer :: (Prelude.Maybe InputLocationProperty),
                               staticKeyValue :: (Prelude.Maybe (Value Prelude.Text))}
mkStaticKeySettingsProperty :: StaticKeySettingsProperty
mkStaticKeySettingsProperty
  = StaticKeySettingsProperty
      {keyProviderServer = Prelude.Nothing,
       staticKeyValue = Prelude.Nothing}
instance ToResourceProperties StaticKeySettingsProperty where
  toResourceProperties StaticKeySettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.StaticKeySettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KeyProviderServer" Prelude.<$> keyProviderServer,
                            (JSON..=) "StaticKeyValue" Prelude.<$> staticKeyValue])}
instance JSON.ToJSON StaticKeySettingsProperty where
  toJSON StaticKeySettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KeyProviderServer" Prelude.<$> keyProviderServer,
               (JSON..=) "StaticKeyValue" Prelude.<$> staticKeyValue]))
instance Property "KeyProviderServer" StaticKeySettingsProperty where
  type PropertyType "KeyProviderServer" StaticKeySettingsProperty = InputLocationProperty
  set newValue StaticKeySettingsProperty {..}
    = StaticKeySettingsProperty
        {keyProviderServer = Prelude.pure newValue, ..}
instance Property "StaticKeyValue" StaticKeySettingsProperty where
  type PropertyType "StaticKeyValue" StaticKeySettingsProperty = Value Prelude.Text
  set newValue StaticKeySettingsProperty {..}
    = StaticKeySettingsProperty
        {staticKeyValue = Prelude.pure newValue, ..}