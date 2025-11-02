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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-amazonmanagedkafkaeventsourceconfig.html>
    AmazonManagedKafkaEventSourceConfigProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-amazonmanagedkafkaeventsourceconfig.html#cfn-lambda-eventsourcemapping-amazonmanagedkafkaeventsourceconfig-consumergroupid>
                                                 consumerGroupId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmazonManagedKafkaEventSourceConfigProperty ::
  AmazonManagedKafkaEventSourceConfigProperty
mkAmazonManagedKafkaEventSourceConfigProperty
  = AmazonManagedKafkaEventSourceConfigProperty
      {haddock_workaround_ = (), consumerGroupId = Prelude.Nothing}
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
  set newValue AmazonManagedKafkaEventSourceConfigProperty {..}
    = AmazonManagedKafkaEventSourceConfigProperty
        {consumerGroupId = Prelude.pure newValue, ..}