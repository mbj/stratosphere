module Stratosphere.MediaLive.Channel.HlsS3SettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HlsS3SettingsProperty :: Prelude.Type
instance ToResourceProperties HlsS3SettingsProperty
instance JSON.ToJSON HlsS3SettingsProperty