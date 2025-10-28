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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-statickeysettings.html>
    StaticKeySettingsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-statickeysettings.html#cfn-medialive-channel-statickeysettings-keyproviderserver>
                               keyProviderServer :: (Prelude.Maybe InputLocationProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-statickeysettings.html#cfn-medialive-channel-statickeysettings-statickeyvalue>
                               staticKeyValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStaticKeySettingsProperty :: StaticKeySettingsProperty
mkStaticKeySettingsProperty
  = StaticKeySettingsProperty
      {haddock_workaround_ = (), keyProviderServer = Prelude.Nothing,
       staticKeyValue = Prelude.Nothing}
instance ToResourceProperties StaticKeySettingsProperty where
  toResourceProperties StaticKeySettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.StaticKeySettings",
         supportsTags = Prelude.False,
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