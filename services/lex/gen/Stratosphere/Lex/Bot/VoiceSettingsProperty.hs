module Stratosphere.Lex.Bot.VoiceSettingsProperty (
        VoiceSettingsProperty(..), mkVoiceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VoiceSettingsProperty
  = VoiceSettingsProperty {engine :: (Prelude.Maybe (Value Prelude.Text)),
                           voiceId :: (Value Prelude.Text)}
mkVoiceSettingsProperty ::
  Value Prelude.Text -> VoiceSettingsProperty
mkVoiceSettingsProperty voiceId
  = VoiceSettingsProperty
      {voiceId = voiceId, engine = Prelude.Nothing}
instance ToResourceProperties VoiceSettingsProperty where
  toResourceProperties VoiceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.VoiceSettings",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VoiceId" JSON..= voiceId]
                           (Prelude.catMaybes [(JSON..=) "Engine" Prelude.<$> engine]))}
instance JSON.ToJSON VoiceSettingsProperty where
  toJSON VoiceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VoiceId" JSON..= voiceId]
              (Prelude.catMaybes [(JSON..=) "Engine" Prelude.<$> engine])))
instance Property "Engine" VoiceSettingsProperty where
  type PropertyType "Engine" VoiceSettingsProperty = Value Prelude.Text
  set newValue VoiceSettingsProperty {..}
    = VoiceSettingsProperty {engine = Prelude.pure newValue, ..}
instance Property "VoiceId" VoiceSettingsProperty where
  type PropertyType "VoiceId" VoiceSettingsProperty = Value Prelude.Text
  set newValue VoiceSettingsProperty {..}
    = VoiceSettingsProperty {voiceId = newValue, ..}