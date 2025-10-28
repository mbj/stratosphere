module Stratosphere.Lex.Bot.VoiceSettingsProperty (
        VoiceSettingsProperty(..), mkVoiceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VoiceSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-voicesettings.html>
    VoiceSettingsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-voicesettings.html#cfn-lex-bot-voicesettings-engine>
                           engine :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-voicesettings.html#cfn-lex-bot-voicesettings-voiceid>
                           voiceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVoiceSettingsProperty ::
  Value Prelude.Text -> VoiceSettingsProperty
mkVoiceSettingsProperty voiceId
  = VoiceSettingsProperty
      {haddock_workaround_ = (), voiceId = voiceId,
       engine = Prelude.Nothing}
instance ToResourceProperties VoiceSettingsProperty where
  toResourceProperties VoiceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.VoiceSettings",
         supportsTags = Prelude.False,
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