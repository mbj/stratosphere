module Stratosphere.Notifications.EventRule.EventRuleStatusSummaryProperty (
        EventRuleStatusSummaryProperty(..),
        mkEventRuleStatusSummaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventRuleStatusSummaryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notifications-eventrule-eventrulestatussummary.html>
    EventRuleStatusSummaryProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notifications-eventrule-eventrulestatussummary.html#cfn-notifications-eventrule-eventrulestatussummary-reason>
                                    reason :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notifications-eventrule-eventrulestatussummary.html#cfn-notifications-eventrule-eventrulestatussummary-status>
                                    status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventRuleStatusSummaryProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EventRuleStatusSummaryProperty
mkEventRuleStatusSummaryProperty reason status
  = EventRuleStatusSummaryProperty
      {haddock_workaround_ = (), reason = reason, status = status}
instance ToResourceProperties EventRuleStatusSummaryProperty where
  toResourceProperties EventRuleStatusSummaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Notifications::EventRule.EventRuleStatusSummary",
         supportsTags = Prelude.False,
         properties = ["Reason" JSON..= reason, "Status" JSON..= status]}
instance JSON.ToJSON EventRuleStatusSummaryProperty where
  toJSON EventRuleStatusSummaryProperty {..}
    = JSON.object ["Reason" JSON..= reason, "Status" JSON..= status]
instance Property "Reason" EventRuleStatusSummaryProperty where
  type PropertyType "Reason" EventRuleStatusSummaryProperty = Value Prelude.Text
  set newValue EventRuleStatusSummaryProperty {..}
    = EventRuleStatusSummaryProperty {reason = newValue, ..}
instance Property "Status" EventRuleStatusSummaryProperty where
  type PropertyType "Status" EventRuleStatusSummaryProperty = Value Prelude.Text
  set newValue EventRuleStatusSummaryProperty {..}
    = EventRuleStatusSummaryProperty {status = newValue, ..}