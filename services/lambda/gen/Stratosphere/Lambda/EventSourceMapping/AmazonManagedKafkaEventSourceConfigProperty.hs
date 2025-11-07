module Stratosphere.Lambda.EventSourceMapping.AmazonManagedKafkaEventSourceConfigProperty (
        module Exports, AmazonManagedKafkaEventSourceConfigProperty(..),
        mkAmazonManagedKafkaEventSourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.SchemaRegistryConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmazonManagedKafkaEventSourceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-amazonmanagedkafkaeventsourceconfig.html>
    AmazonManagedKafkaEventSourceConfigProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-amazonmanagedkafkaeventsourceconfig.html#cfn-lambda-eventsourcemapping-amazonmanagedkafkaeventsourceconfig-consumergroupid>
                                                 consumerGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-amazonmanagedkafkaeventsourceconfig.html#cfn-lambda-eventsourcemapping-amazonmanagedkafkaeventsourceconfig-schemaregistryconfig>
                                                 schemaRegistryConfig :: (Prelude.Maybe SchemaRegistryConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmazonManagedKafkaEventSourceConfigProperty ::
  AmazonManagedKafkaEventSourceConfigProperty
mkAmazonManagedKafkaEventSourceConfigProperty
  = AmazonManagedKafkaEventSourceConfigProperty
      {haddock_workaround_ = (), consumerGroupId = Prelude.Nothing,
       schemaRegistryConfig = Prelude.Nothing}
instance ToResourceProperties AmazonManagedKafkaEventSourceConfigProperty where
  toResourceProperties
    AmazonManagedKafkaEventSourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.AmazonManagedKafkaEventSourceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConsumerGroupId" Prelude.<$> consumerGroupId,
                            (JSON..=) "SchemaRegistryConfig"
                              Prelude.<$> schemaRegistryConfig])}
instance JSON.ToJSON AmazonManagedKafkaEventSourceConfigProperty where
  toJSON AmazonManagedKafkaEventSourceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConsumerGroupId" Prelude.<$> consumerGroupId,
               (JSON..=) "SchemaRegistryConfig"
                 Prelude.<$> schemaRegistryConfig]))
instance Property "ConsumerGroupId" AmazonManagedKafkaEventSourceConfigProperty where
  type PropertyType "ConsumerGroupId" AmazonManagedKafkaEventSourceConfigProperty = Value Prelude.Text
  set newValue AmazonManagedKafkaEventSourceConfigProperty {..}
    = AmazonManagedKafkaEventSourceConfigProperty
        {consumerGroupId = Prelude.pure newValue, ..}
instance Property "SchemaRegistryConfig" AmazonManagedKafkaEventSourceConfigProperty where
  type PropertyType "SchemaRegistryConfig" AmazonManagedKafkaEventSourceConfigProperty = SchemaRegistryConfigProperty
  set newValue AmazonManagedKafkaEventSourceConfigProperty {..}
    = AmazonManagedKafkaEventSourceConfigProperty
        {schemaRegistryConfig = Prelude.pure newValue, ..}