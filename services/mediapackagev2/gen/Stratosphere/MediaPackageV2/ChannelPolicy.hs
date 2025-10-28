module Stratosphere.MediaPackageV2.ChannelPolicy (
        ChannelPolicy(..), mkChannelPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChannelPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-channelpolicy.html>
    ChannelPolicy {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-channelpolicy.html#cfn-mediapackagev2-channelpolicy-channelgroupname>
                   channelGroupName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-channelpolicy.html#cfn-mediapackagev2-channelpolicy-channelname>
                   channelName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-channelpolicy.html#cfn-mediapackagev2-channelpolicy-policy>
                   policy :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelPolicy ::
  Value Prelude.Text
  -> Value Prelude.Text -> JSON.Object -> ChannelPolicy
mkChannelPolicy channelGroupName channelName policy
  = ChannelPolicy
      {haddock_workaround_ = (), channelGroupName = channelGroupName,
       channelName = channelName, policy = policy}
instance ToResourceProperties ChannelPolicy where
  toResourceProperties ChannelPolicy {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::ChannelPolicy",
         supportsTags = Prelude.False,
         properties = ["ChannelGroupName" JSON..= channelGroupName,
                       "ChannelName" JSON..= channelName, "Policy" JSON..= policy]}
instance JSON.ToJSON ChannelPolicy where
  toJSON ChannelPolicy {..}
    = JSON.object
        ["ChannelGroupName" JSON..= channelGroupName,
         "ChannelName" JSON..= channelName, "Policy" JSON..= policy]
instance Property "ChannelGroupName" ChannelPolicy where
  type PropertyType "ChannelGroupName" ChannelPolicy = Value Prelude.Text
  set newValue ChannelPolicy {..}
    = ChannelPolicy {channelGroupName = newValue, ..}
instance Property "ChannelName" ChannelPolicy where
  type PropertyType "ChannelName" ChannelPolicy = Value Prelude.Text
  set newValue ChannelPolicy {..}
    = ChannelPolicy {channelName = newValue, ..}
instance Property "Policy" ChannelPolicy where
  type PropertyType "Policy" ChannelPolicy = JSON.Object
  set newValue ChannelPolicy {..}
    = ChannelPolicy {policy = newValue, ..}