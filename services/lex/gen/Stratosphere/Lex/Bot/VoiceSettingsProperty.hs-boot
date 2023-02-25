module Stratosphere.Lex.Bot.VoiceSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VoiceSettingsProperty :: Prelude.Type
instance ToResourceProperties VoiceSettingsProperty
instance JSON.ToJSON VoiceSettingsProperty