module Stratosphere.Events.EventBusPolicy (
        module Exports, EventBusPolicy(..), mkEventBusPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.EventBusPolicy.ConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBusPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html>
    EventBusPolicy {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-action>
                    action :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-condition>
                    condition :: (Prelude.Maybe ConditionProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-eventbusname>
                    eventBusName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-principal>
                    principal :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-statement>
                    statement :: (Prelude.Maybe JSON.Object),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-statementid>
                    statementId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBusPolicy :: Value Prelude.Text -> EventBusPolicy
mkEventBusPolicy statementId
  = EventBusPolicy
      {haddock_workaround_ = (), statementId = statementId,
       action = Prelude.Nothing, condition = Prelude.Nothing,
       eventBusName = Prelude.Nothing, principal = Prelude.Nothing,
       statement = Prelude.Nothing}
instance ToResourceProperties EventBusPolicy where
  toResourceProperties EventBusPolicy {..}
    = ResourceProperties
        {awsType = "AWS::Events::EventBusPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StatementId" JSON..= statementId]
                           (Prelude.catMaybes
                              [(JSON..=) "Action" Prelude.<$> action,
                               (JSON..=) "Condition" Prelude.<$> condition,
                               (JSON..=) "EventBusName" Prelude.<$> eventBusName,
                               (JSON..=) "Principal" Prelude.<$> principal,
                               (JSON..=) "Statement" Prelude.<$> statement]))}
instance JSON.ToJSON EventBusPolicy where
  toJSON EventBusPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StatementId" JSON..= statementId]
              (Prelude.catMaybes
                 [(JSON..=) "Action" Prelude.<$> action,
                  (JSON..=) "Condition" Prelude.<$> condition,
                  (JSON..=) "EventBusName" Prelude.<$> eventBusName,
                  (JSON..=) "Principal" Prelude.<$> principal,
                  (JSON..=) "Statement" Prelude.<$> statement])))
instance Property "Action" EventBusPolicy where
  type PropertyType "Action" EventBusPolicy = Value Prelude.Text
  set newValue EventBusPolicy {..}
    = EventBusPolicy {action = Prelude.pure newValue, ..}
instance Property "Condition" EventBusPolicy where
  type PropertyType "Condition" EventBusPolicy = ConditionProperty
  set newValue EventBusPolicy {..}
    = EventBusPolicy {condition = Prelude.pure newValue, ..}
instance Property "EventBusName" EventBusPolicy where
  type PropertyType "EventBusName" EventBusPolicy = Value Prelude.Text
  set newValue EventBusPolicy {..}
    = EventBusPolicy {eventBusName = Prelude.pure newValue, ..}
instance Property "Principal" EventBusPolicy where
  type PropertyType "Principal" EventBusPolicy = Value Prelude.Text
  set newValue EventBusPolicy {..}
    = EventBusPolicy {principal = Prelude.pure newValue, ..}
instance Property "Statement" EventBusPolicy where
  type PropertyType "Statement" EventBusPolicy = JSON.Object
  set newValue EventBusPolicy {..}
    = EventBusPolicy {statement = Prelude.pure newValue, ..}
instance Property "StatementId" EventBusPolicy where
  type PropertyType "StatementId" EventBusPolicy = Value Prelude.Text
  set newValue EventBusPolicy {..}
    = EventBusPolicy {statementId = newValue, ..}