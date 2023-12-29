module Stratosphere.Lambda.EventSourceMapping.SelfManagedKafkaEventSourceConfigProperty (
        SelfManagedKafkaEventSourceConfigProperty(..),
        mkSelfManagedKafkaEventSourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelfManagedKafkaEventSourceConfigProperty
  = SelfManagedKafkaEventSourceConfigProperty {consumerGroupId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSelfManagedKafkaEventSourceConfigProperty ::
  SelfManagedKafkaEventSourceConfigProperty
mkSelfManagedKafkaEventSourceConfigProperty
  = SelfManagedKafkaEventSourceConfigProperty
      {consumerGroupId = Prelude.Nothing}
instance ToResourceProperties SelfManagedKafkaEventSourceConfigProperty where
  toResourceProperties SelfManagedKafkaEventSourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.SelfManagedKafkaEventSourceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConsumerGroupId" Prelude.<$> consumerGroupId])}
instance JSON.ToJSON SelfManagedKafkaEventSourceConfigProperty where
  toJSON SelfManagedKafkaEventSourceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConsumerGroupId" Prelude.<$> consumerGroupId]))
instance Property "ConsumerGroupId" SelfManagedKafkaEventSourceConfigProperty where
  type PropertyType "ConsumerGroupId" SelfManagedKafkaEventSourceConfigProperty = Value Prelude.Text
  set newValue SelfManagedKafkaEventSourceConfigProperty {}
    = SelfManagedKafkaEventSourceConfigProperty
        {consumerGroupId = Prelude.pure newValue, ..}