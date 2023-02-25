module Stratosphere.MediaLive.Channel.Hdr10SettingsProperty (
        Hdr10SettingsProperty(..), mkHdr10SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Hdr10SettingsProperty
  = Hdr10SettingsProperty {maxCll :: (Prelude.Maybe (Value Prelude.Integer)),
                           maxFall :: (Prelude.Maybe (Value Prelude.Integer))}
mkHdr10SettingsProperty :: Hdr10SettingsProperty
mkHdr10SettingsProperty
  = Hdr10SettingsProperty
      {maxCll = Prelude.Nothing, maxFall = Prelude.Nothing}
instance ToResourceProperties Hdr10SettingsProperty where
  toResourceProperties Hdr10SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Hdr10Settings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxCll" Prelude.<$> maxCll,
                            (JSON..=) "MaxFall" Prelude.<$> maxFall])}
instance JSON.ToJSON Hdr10SettingsProperty where
  toJSON Hdr10SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxCll" Prelude.<$> maxCll,
               (JSON..=) "MaxFall" Prelude.<$> maxFall]))
instance Property "MaxCll" Hdr10SettingsProperty where
  type PropertyType "MaxCll" Hdr10SettingsProperty = Value Prelude.Integer
  set newValue Hdr10SettingsProperty {..}
    = Hdr10SettingsProperty {maxCll = Prelude.pure newValue, ..}
instance Property "MaxFall" Hdr10SettingsProperty where
  type PropertyType "MaxFall" Hdr10SettingsProperty = Value Prelude.Integer
  set newValue Hdr10SettingsProperty {..}
    = Hdr10SettingsProperty {maxFall = Prelude.pure newValue, ..}