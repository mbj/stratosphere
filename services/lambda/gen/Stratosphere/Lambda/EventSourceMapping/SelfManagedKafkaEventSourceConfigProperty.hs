module Stratosphere.Lambda.EventSourceMapping.SelfManagedKafkaEventSourceConfigProperty (
        module Exports, SelfManagedKafkaEventSourceConfigProperty(..),
        mkSelfManagedKafkaEventSourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.SchemaRegistryConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelfManagedKafkaEventSourceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-selfmanagedkafkaeventsourceconfig.html>
    SelfManagedKafkaEventSourceConfigProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-selfmanagedkafkaeventsourceconfig.html#cfn-lambda-eventsourcemapping-selfmanagedkafkaeventsourceconfig-consumergroupid>
                                               consumerGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-selfmanagedkafkaeventsourceconfig.html#cfn-lambda-eventsourcemapping-selfmanagedkafkaeventsourceconfig-schemaregistryconfig>
                                               schemaRegistryConfig :: (Prelude.Maybe SchemaRegistryConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSelfManagedKafkaEventSourceConfigProperty ::
  SelfManagedKafkaEventSourceConfigProperty
mkSelfManagedKafkaEventSourceConfigProperty
  = SelfManagedKafkaEventSourceConfigProperty
      {haddock_workaround_ = (), consumerGroupId = Prelude.Nothing,
       schemaRegistryConfig = Prelude.Nothing}
instance ToResourceProperties SelfManagedKafkaEventSourceConfigProperty where
  toResourceProperties SelfManagedKafkaEventSourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.SelfManagedKafkaEventSourceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConsumerGroupId" Prelude.<$> consumerGroupId,
                            (JSON..=) "SchemaRegistryConfig"
                              Prelude.<$> schemaRegistryConfig])}
instance JSON.ToJSON SelfManagedKafkaEventSourceConfigProperty where
  toJSON SelfManagedKafkaEventSourceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConsumerGroupId" Prelude.<$> consumerGroupId,
               (JSON..=) "SchemaRegistryConfig"
                 Prelude.<$> schemaRegistryConfig]))
instance Property "ConsumerGroupId" SelfManagedKafkaEventSourceConfigProperty where
  type PropertyType "ConsumerGroupId" SelfManagedKafkaEventSourceConfigProperty = Value Prelude.Text
  set newValue SelfManagedKafkaEventSourceConfigProperty {..}
    = SelfManagedKafkaEventSourceConfigProperty
        {consumerGroupId = Prelude.pure newValue, ..}
instance Property "SchemaRegistryConfig" SelfManagedKafkaEventSourceConfigProperty where
  type PropertyType "SchemaRegistryConfig" SelfManagedKafkaEventSourceConfigProperty = SchemaRegistryConfigProperty
  set newValue SelfManagedKafkaEventSourceConfigProperty {..}
    = SelfManagedKafkaEventSourceConfigProperty
        {schemaRegistryConfig = Prelude.pure newValue, ..}