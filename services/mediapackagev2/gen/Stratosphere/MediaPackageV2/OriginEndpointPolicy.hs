module Stratosphere.MediaPackageV2.OriginEndpointPolicy (
        OriginEndpointPolicy(..), mkOriginEndpointPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginEndpointPolicy
  = OriginEndpointPolicy {channelGroupName :: (Value Prelude.Text),
                          channelName :: (Value Prelude.Text),
                          originEndpointName :: (Value Prelude.Text),
                          policy :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginEndpointPolicy ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> JSON.Object -> OriginEndpointPolicy
mkOriginEndpointPolicy
  channelGroupName
  channelName
  originEndpointName
  policy
  = OriginEndpointPolicy
      {channelGroupName = channelGroupName, channelName = channelName,
       originEndpointName = originEndpointName, policy = policy}
instance ToResourceProperties OriginEndpointPolicy where
  toResourceProperties OriginEndpointPolicy {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpointPolicy",
         supportsTags = Prelude.False,
         properties = ["ChannelGroupName" JSON..= channelGroupName,
                       "ChannelName" JSON..= channelName,
                       "OriginEndpointName" JSON..= originEndpointName,
                       "Policy" JSON..= policy]}
instance JSON.ToJSON OriginEndpointPolicy where
  toJSON OriginEndpointPolicy {..}
    = JSON.object
        ["ChannelGroupName" JSON..= channelGroupName,
         "ChannelName" JSON..= channelName,
         "OriginEndpointName" JSON..= originEndpointName,
         "Policy" JSON..= policy]
instance Property "ChannelGroupName" OriginEndpointPolicy where
  type PropertyType "ChannelGroupName" OriginEndpointPolicy = Value Prelude.Text
  set newValue OriginEndpointPolicy {..}
    = OriginEndpointPolicy {channelGroupName = newValue, ..}
instance Property "ChannelName" OriginEndpointPolicy where
  type PropertyType "ChannelName" OriginEndpointPolicy = Value Prelude.Text
  set newValue OriginEndpointPolicy {..}
    = OriginEndpointPolicy {channelName = newValue, ..}
instance Property "OriginEndpointName" OriginEndpointPolicy where
  type PropertyType "OriginEndpointName" OriginEndpointPolicy = Value Prelude.Text
  set newValue OriginEndpointPolicy {..}
    = OriginEndpointPolicy {originEndpointName = newValue, ..}
instance Property "Policy" OriginEndpointPolicy where
  type PropertyType "Policy" OriginEndpointPolicy = JSON.Object
  set newValue OriginEndpointPolicy {..}
    = OriginEndpointPolicy {policy = newValue, ..}