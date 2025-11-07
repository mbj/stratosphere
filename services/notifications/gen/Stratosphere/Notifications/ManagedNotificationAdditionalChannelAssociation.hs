module Stratosphere.Notifications.ManagedNotificationAdditionalChannelAssociation (
        ManagedNotificationAdditionalChannelAssociation(..),
        mkManagedNotificationAdditionalChannelAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedNotificationAdditionalChannelAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-managednotificationadditionalchannelassociation.html>
    ManagedNotificationAdditionalChannelAssociation {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-managednotificationadditionalchannelassociation.html#cfn-notifications-managednotificationadditionalchannelassociation-channelarn>
                                                     channelArn :: (Value Prelude.Text),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-managednotificationadditionalchannelassociation.html#cfn-notifications-managednotificationadditionalchannelassociation-managednotificationconfigurationarn>
                                                     managedNotificationConfigurationArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedNotificationAdditionalChannelAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ManagedNotificationAdditionalChannelAssociation
mkManagedNotificationAdditionalChannelAssociation
  channelArn
  managedNotificationConfigurationArn
  = ManagedNotificationAdditionalChannelAssociation
      {haddock_workaround_ = (), channelArn = channelArn,
       managedNotificationConfigurationArn = managedNotificationConfigurationArn}
instance ToResourceProperties ManagedNotificationAdditionalChannelAssociation where
  toResourceProperties
    ManagedNotificationAdditionalChannelAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Notifications::ManagedNotificationAdditionalChannelAssociation",
         supportsTags = Prelude.False,
         properties = ["ChannelArn" JSON..= channelArn,
                       "ManagedNotificationConfigurationArn"
                         JSON..= managedNotificationConfigurationArn]}
instance JSON.ToJSON ManagedNotificationAdditionalChannelAssociation where
  toJSON ManagedNotificationAdditionalChannelAssociation {..}
    = JSON.object
        ["ChannelArn" JSON..= channelArn,
         "ManagedNotificationConfigurationArn"
           JSON..= managedNotificationConfigurationArn]
instance Property "ChannelArn" ManagedNotificationAdditionalChannelAssociation where
  type PropertyType "ChannelArn" ManagedNotificationAdditionalChannelAssociation = Value Prelude.Text
  set newValue ManagedNotificationAdditionalChannelAssociation {..}
    = ManagedNotificationAdditionalChannelAssociation
        {channelArn = newValue, ..}
instance Property "ManagedNotificationConfigurationArn" ManagedNotificationAdditionalChannelAssociation where
  type PropertyType "ManagedNotificationConfigurationArn" ManagedNotificationAdditionalChannelAssociation = Value Prelude.Text
  set newValue ManagedNotificationAdditionalChannelAssociation {..}
    = ManagedNotificationAdditionalChannelAssociation
        {managedNotificationConfigurationArn = newValue, ..}