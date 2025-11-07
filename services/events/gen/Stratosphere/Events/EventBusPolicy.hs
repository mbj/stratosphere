module Stratosphere.Events.EventBusPolicy (
        EventBusPolicy(..), mkEventBusPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBusPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html>
    EventBusPolicy {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-eventbusname>
                    eventBusName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-statement>
                    statement :: (Prelude.Maybe JSON.Object),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-statementid>
                    statementId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBusPolicy :: Value Prelude.Text -> EventBusPolicy
mkEventBusPolicy statementId
  = EventBusPolicy
      {haddock_workaround_ = (), statementId = statementId,
       eventBusName = Prelude.Nothing, statement = Prelude.Nothing}
instance ToResourceProperties EventBusPolicy where
  toResourceProperties EventBusPolicy {..}
    = ResourceProperties
        {awsType = "AWS::Events::EventBusPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StatementId" JSON..= statementId]
                           (Prelude.catMaybes
                              [(JSON..=) "EventBusName" Prelude.<$> eventBusName,
                               (JSON..=) "Statement" Prelude.<$> statement]))}
instance JSON.ToJSON EventBusPolicy where
  toJSON EventBusPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StatementId" JSON..= statementId]
              (Prelude.catMaybes
                 [(JSON..=) "EventBusName" Prelude.<$> eventBusName,
                  (JSON..=) "Statement" Prelude.<$> statement])))
instance Property "EventBusName" EventBusPolicy where
  type PropertyType "EventBusName" EventBusPolicy = Value Prelude.Text
  set newValue EventBusPolicy {..}
    = EventBusPolicy {eventBusName = Prelude.pure newValue, ..}
instance Property "Statement" EventBusPolicy where
  type PropertyType "Statement" EventBusPolicy = JSON.Object
  set newValue EventBusPolicy {..}
    = EventBusPolicy {statement = Prelude.pure newValue, ..}
instance Property "StatementId" EventBusPolicy where
  type PropertyType "StatementId" EventBusPolicy = Value Prelude.Text
  set newValue EventBusPolicy {..}
    = EventBusPolicy {statementId = newValue, ..}