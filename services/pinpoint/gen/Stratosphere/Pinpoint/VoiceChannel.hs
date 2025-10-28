module Stratosphere.Pinpoint.VoiceChannel (
        VoiceChannel(..), mkVoiceChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VoiceChannel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html>
    VoiceChannel {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html#cfn-pinpoint-voicechannel-applicationid>
                  applicationId :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html#cfn-pinpoint-voicechannel-enabled>
                  enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVoiceChannel :: Value Prelude.Text -> VoiceChannel
mkVoiceChannel applicationId
  = VoiceChannel
      {haddock_workaround_ = (), applicationId = applicationId,
       enabled = Prelude.Nothing}
instance ToResourceProperties VoiceChannel where
  toResourceProperties VoiceChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::VoiceChannel",
         supportsTags = Prelude.False,
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