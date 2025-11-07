module Stratosphere.Notifications.ChannelAssociation (
        ChannelAssociation(..), mkChannelAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChannelAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-channelassociation.html>
    ChannelAssociation {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-channelassociation.html#cfn-notifications-channelassociation-arn>
                        arn :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-channelassociation.html#cfn-notifications-channelassociation-notificationconfigurationarn>
                        notificationConfigurationArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> ChannelAssociation
mkChannelAssociation arn notificationConfigurationArn
  = ChannelAssociation
      {haddock_workaround_ = (), arn = arn,
       notificationConfigurationArn = notificationConfigurationArn}
instance ToResourceProperties ChannelAssociation where
  toResourceProperties ChannelAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Notifications::ChannelAssociation",
         supportsTags = Prelude.False,
         properties = ["Arn" JSON..= arn,
                       "NotificationConfigurationArn"
                         JSON..= notificationConfigurationArn]}
instance JSON.ToJSON ChannelAssociation where
  toJSON ChannelAssociation {..}
    = JSON.object
        ["Arn" JSON..= arn,
         "NotificationConfigurationArn"
           JSON..= notificationConfigurationArn]
instance Property "Arn" ChannelAssociation where
  type PropertyType "Arn" ChannelAssociation = Value Prelude.Text
  set newValue ChannelAssociation {..}
    = ChannelAssociation {arn = newValue, ..}
instance Property "NotificationConfigurationArn" ChannelAssociation where
  type PropertyType "NotificationConfigurationArn" ChannelAssociation = Value Prelude.Text
  set newValue ChannelAssociation {..}
    = ChannelAssociation {notificationConfigurationArn = newValue, ..}