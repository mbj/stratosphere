module Stratosphere.MediaLive.Channel.M3u8SettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data M3u8SettingsProperty :: Prelude.Type
instance ToResourceProperties M3u8SettingsProperty
instance JSON.ToJSON M3u8SettingsProperty