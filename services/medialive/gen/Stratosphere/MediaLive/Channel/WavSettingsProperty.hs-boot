module Stratosphere.MediaLive.Channel.WavSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WavSettingsProperty :: Prelude.Type
instance ToResourceProperties WavSettingsProperty
instance JSON.ToJSON WavSettingsProperty