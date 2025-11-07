module Stratosphere.Notifications.EventRule (
        EventRule(..), mkEventRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-eventrule.html>
    EventRule {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-eventrule.html#cfn-notifications-eventrule-eventpattern>
               eventPattern :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-eventrule.html#cfn-notifications-eventrule-eventtype>
               eventType :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-eventrule.html#cfn-notifications-eventrule-notificationconfigurationarn>
               notificationConfigurationArn :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-eventrule.html#cfn-notifications-eventrule-regions>
               regions :: (ValueList Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-eventrule.html#cfn-notifications-eventrule-source>
               source :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventRule ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> Value Prelude.Text -> EventRule
mkEventRule eventType notificationConfigurationArn regions source
  = EventRule
      {haddock_workaround_ = (), eventType = eventType,
       notificationConfigurationArn = notificationConfigurationArn,
       regions = regions, source = source, eventPattern = Prelude.Nothing}
instance ToResourceProperties EventRule where
  toResourceProperties EventRule {..}
    = ResourceProperties
        {awsType = "AWS::Notifications::EventRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventType" JSON..= eventType,
                            "NotificationConfigurationArn"
                              JSON..= notificationConfigurationArn,
                            "Regions" JSON..= regions, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "EventPattern" Prelude.<$> eventPattern]))}
instance JSON.ToJSON EventRule where
  toJSON EventRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventType" JSON..= eventType,
               "NotificationConfigurationArn"
                 JSON..= notificationConfigurationArn,
               "Regions" JSON..= regions, "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "EventPattern" Prelude.<$> eventPattern])))
instance Property "EventPattern" EventRule where
  type PropertyType "EventPattern" EventRule = Value Prelude.Text
  set newValue EventRule {..}
    = EventRule {eventPattern = Prelude.pure newValue, ..}
instance Property "EventType" EventRule where
  type PropertyType "EventType" EventRule = Value Prelude.Text
  set newValue EventRule {..} = EventRule {eventType = newValue, ..}
instance Property "NotificationConfigurationArn" EventRule where
  type PropertyType "NotificationConfigurationArn" EventRule = Value Prelude.Text
  set newValue EventRule {..}
    = EventRule {notificationConfigurationArn = newValue, ..}
instance Property "Regions" EventRule where
  type PropertyType "Regions" EventRule = ValueList Prelude.Text
  set newValue EventRule {..} = EventRule {regions = newValue, ..}
instance Property "Source" EventRule where
  type PropertyType "Source" EventRule = Value Prelude.Text
  set newValue EventRule {..} = EventRule {source = newValue, ..}