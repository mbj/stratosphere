module Stratosphere.MediaLive.Channel.EncoderSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EncoderSettingsProperty :: Prelude.Type
instance ToResourceProperties EncoderSettingsProperty
instance JSON.ToJSON EncoderSettingsProperty