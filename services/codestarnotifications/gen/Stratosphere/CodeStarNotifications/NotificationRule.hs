module Stratosphere.CodeStarNotifications.NotificationRule (
        module Exports, NotificationRule(..), mkNotificationRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeStarNotifications.NotificationRule.TargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html>
    NotificationRule {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-createdby>
                      createdBy :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-detailtype>
                      detailType :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-eventtypeid>
                      eventTypeId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-eventtypeids>
                      eventTypeIds :: (ValueList Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-name>
                      name :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-resource>
                      resource :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-status>
                      status :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-tags>
                      tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-targetaddress>
                      targetAddress :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-targets>
                      targets :: [TargetProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationRule ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> [TargetProperty] -> NotificationRule
mkNotificationRule detailType eventTypeIds name resource targets
  = NotificationRule
      {haddock_workaround_ = (), detailType = detailType,
       eventTypeIds = eventTypeIds, name = name, resource = resource,
       targets = targets, createdBy = Prelude.Nothing,
       eventTypeId = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing, targetAddress = Prelude.Nothing}
instance ToResourceProperties NotificationRule where
  toResourceProperties NotificationRule {..}
    = ResourceProperties
        {awsType = "AWS::CodeStarNotifications::NotificationRule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DetailType" JSON..= detailType,
                            "EventTypeIds" JSON..= eventTypeIds, "Name" JSON..= name,
                            "Resource" JSON..= resource, "Targets" JSON..= targets]
                           (Prelude.catMaybes
                              [(JSON..=) "CreatedBy" Prelude.<$> createdBy,
                               (JSON..=) "EventTypeId" Prelude.<$> eventTypeId,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TargetAddress" Prelude.<$> targetAddress]))}
instance JSON.ToJSON NotificationRule where
  toJSON NotificationRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DetailType" JSON..= detailType,
               "EventTypeIds" JSON..= eventTypeIds, "Name" JSON..= name,
               "Resource" JSON..= resource, "Targets" JSON..= targets]
              (Prelude.catMaybes
                 [(JSON..=) "CreatedBy" Prelude.<$> createdBy,
                  (JSON..=) "EventTypeId" Prelude.<$> eventTypeId,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TargetAddress" Prelude.<$> targetAddress])))
instance Property "CreatedBy" NotificationRule where
  type PropertyType "CreatedBy" NotificationRule = Value Prelude.Text
  set newValue NotificationRule {..}
    = NotificationRule {createdBy = Prelude.pure newValue, ..}
instance Property "DetailType" NotificationRule where
  type PropertyType "DetailType" NotificationRule = Value Prelude.Text
  set newValue NotificationRule {..}
    = NotificationRule {detailType = newValue, ..}
instance Property "EventTypeId" NotificationRule where
  type PropertyType "EventTypeId" NotificationRule = Value Prelude.Text
  set newValue NotificationRule {..}
    = NotificationRule {eventTypeId = Prelude.pure newValue, ..}
instance Property "EventTypeIds" NotificationRule where
  type PropertyType "EventTypeIds" NotificationRule = ValueList Prelude.Text
  set newValue NotificationRule {..}
    = NotificationRule {eventTypeIds = newValue, ..}
instance Property "Name" NotificationRule where
  type PropertyType "Name" NotificationRule = Value Prelude.Text
  set newValue NotificationRule {..}
    = NotificationRule {name = newValue, ..}
instance Property "Resource" NotificationRule where
  type PropertyType "Resource" NotificationRule = Value Prelude.Text
  set newValue NotificationRule {..}
    = NotificationRule {resource = newValue, ..}
instance Property "Status" NotificationRule where
  type PropertyType "Status" NotificationRule = Value Prelude.Text
  set newValue NotificationRule {..}
    = NotificationRule {status = Prelude.pure newValue, ..}
instance Property "Tags" NotificationRule where
  type PropertyType "Tags" NotificationRule = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue NotificationRule {..}
    = NotificationRule {tags = Prelude.pure newValue, ..}
instance Property "TargetAddress" NotificationRule where
  type PropertyType "TargetAddress" NotificationRule = Value Prelude.Text
  set newValue NotificationRule {..}
    = NotificationRule {targetAddress = Prelude.pure newValue, ..}
instance Property "Targets" NotificationRule where
  type PropertyType "Targets" NotificationRule = [TargetProperty]
  set newValue NotificationRule {..}
    = NotificationRule {targets = newValue, ..}