module Stratosphere.Lambda.EventSourceMapping.AmazonManagedKafkaEventSourceConfigProperty (
        AmazonManagedKafkaEventSourceConfigProperty(..),
        mkAmazonManagedKafkaEventSourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmazonManagedKafkaEventSourceConfigProperty
  = AmazonManagedKafkaEventSourceConfigProperty {consumerGroupId :: (Prelude.Maybe (Value Prelude.Text))}
mkAmazonManagedKafkaEventSourceConfigProperty ::
  AmazonManagedKafkaEventSourceConfigProperty
mkAmazonManagedKafkaEventSourceConfigProperty
  = AmazonManagedKafkaEventSourceConfigProperty
      {consumerGroupId = Prelude.Nothing}
instance ToResourceProperties AmazonManagedKafkaEventSourceConfigProperty where
  toResourceProperties
    AmazonManagedKafkaEventSourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.AmazonManagedKafkaEventSourceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConsumerGroupId" Prelude.<$> consumerGroupId])}
instance JSON.ToJSON AmazonManagedKafkaEventSourceConfigProperty where
  toJSON AmazonManagedKafkaEventSourceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConsumerGroupId" Prelude.<$> consumerGroupId]))
instance Property "ConsumerGroupId" AmazonManagedKafkaEventSourceConfigProperty where
  type PropertyType "ConsumerGroupId" AmazonManagedKafkaEventSourceConfigProperty = Value Prelude.Text
  set newValue AmazonManagedKafkaEventSourceConfigProperty {}
    = AmazonManagedKafkaEventSourceConfigProperty
        {consumerGroupId = Prelude.pure newValue, ..}