module Stratosphere.Pinpoint.VoiceChannel (
        VoiceChannel(..), mkVoiceChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VoiceChannel
  = VoiceChannel {applicationId :: (Value Prelude.Text),
                  enabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkVoiceChannel :: Value Prelude.Text -> VoiceChannel
mkVoiceChannel applicationId
  = VoiceChannel
      {applicationId = applicationId, enabled = Prelude.Nothing}
instance ToResourceProperties VoiceChannel where
  toResourceProperties VoiceChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::VoiceChannel",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId]
                           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))}
instance JSON.ToJSON VoiceChannel where
  toJSON VoiceChannel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId]
              (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])))
instance Property "ApplicationId" VoiceChannel where
  type PropertyType "ApplicationId" VoiceChannel = Value Prelude.Text
  set newValue VoiceChannel {..}
    = VoiceChannel {applicationId = newValue, ..}
instance Property "Enabled" VoiceChannel where
  type PropertyType "Enabled" VoiceChannel = Value Prelude.Bool
  set newValue VoiceChannel {..}
    = VoiceChannel {enabled = Prelude.pure newValue, ..}