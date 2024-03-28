module Stratosphere.MediaTailor.ChannelPolicy (
        ChannelPolicy(..), mkChannelPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChannelPolicy
  = ChannelPolicy {channelName :: (Value Prelude.Text),
                   policy :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelPolicy ::
  Value Prelude.Text -> JSON.Object -> ChannelPolicy
mkChannelPolicy channelName policy
  = ChannelPolicy {channelName = channelName, policy = policy}
instance ToResourceProperties ChannelPolicy where
  toResourceProperties ChannelPolicy {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::ChannelPolicy",
         supportsTags = Prelude.False,
         properties = ["ChannelName" JSON..= channelName,
                       "Policy" JSON..= policy]}
instance JSON.ToJSON ChannelPolicy where
  toJSON ChannelPolicy {..}
    = JSON.object
        ["ChannelName" JSON..= channelName, "Policy" JSON..= policy]
instance Property "ChannelName" ChannelPolicy where
  type PropertyType "ChannelName" ChannelPolicy = Value Prelude.Text
  set newValue ChannelPolicy {..}
    = ChannelPolicy {channelName = newValue, ..}
instance Property "Policy" ChannelPolicy where
  type PropertyType "Policy" ChannelPolicy = JSON.Object
  set newValue ChannelPolicy {..}
    = ChannelPolicy {policy = newValue, ..}