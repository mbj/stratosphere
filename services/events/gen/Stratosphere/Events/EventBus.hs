module Stratosphere.Events.EventBus (
        module Exports, EventBus(..), mkEventBus
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.EventBus.DeadLetterConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventBus
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html>
    EventBus {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-deadletterconfig>
              deadLetterConfig :: (Prelude.Maybe DeadLetterConfigProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-eventsourcename>
              eventSourceName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-kmskeyidentifier>
              kmsKeyIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-name>
              name :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-policy>
              policy :: (Prelude.Maybe JSON.Object),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBus :: Value Prelude.Text -> EventBus
mkEventBus name
  = EventBus
      {haddock_workaround_ = (), name = name,
       deadLetterConfig = Prelude.Nothing, description = Prelude.Nothing,
       eventSourceName = Prelude.Nothing,
       kmsKeyIdentifier = Prelude.Nothing, policy = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EventBus where
  toResourceProperties EventBus {..}
    = ResourceProperties
        {awsType = "AWS::Events::EventBus", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EventSourceName" Prelude.<$> eventSourceName,
                               (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
                               (JSON..=) "Policy" Prelude.<$> policy,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EventBus where
  toJSON EventBus {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EventSourceName" Prelude.<$> eventSourceName,
                  (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
                  (JSON..=) "Policy" Prelude.<$> policy,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeadLetterConfig" EventBus where
  type PropertyType "DeadLetterConfig" EventBus = DeadLetterConfigProperty
  set newValue EventBus {..}
    = EventBus {deadLetterConfig = Prelude.pure newValue, ..}
instance Property "Description" EventBus where
  type PropertyType "Description" EventBus = Value Prelude.Text
  set newValue EventBus {..}
    = EventBus {description = Prelude.pure newValue, ..}
instance Property "EventSourceName" EventBus where
  type PropertyType "EventSourceName" EventBus = Value Prelude.Text
  set newValue EventBus {..}
    = EventBus {eventSourceName = Prelude.pure newValue, ..}
instance Property "KmsKeyIdentifier" EventBus where
  type PropertyType "KmsKeyIdentifier" EventBus = Value Prelude.Text
  set newValue EventBus {..}
    = EventBus {kmsKeyIdentifier = Prelude.pure newValue, ..}
instance Property "Name" EventBus where
  type PropertyType "Name" EventBus = Value Prelude.Text
  set newValue EventBus {..} = EventBus {name = newValue, ..}
instance Property "Policy" EventBus where
  type PropertyType "Policy" EventBus = JSON.Object
  set newValue EventBus {..}
    = EventBus {policy = Prelude.pure newValue, ..}
instance Property "Tags" EventBus where
  type PropertyType "Tags" EventBus = [Tag]
  set newValue EventBus {..}
    = EventBus {tags = Prelude.pure newValue, ..}