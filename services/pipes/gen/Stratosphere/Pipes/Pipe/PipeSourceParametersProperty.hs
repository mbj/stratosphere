module Stratosphere.Pipes.Pipe.PipeSourceParametersProperty (
        module Exports, PipeSourceParametersProperty(..),
        mkPipeSourceParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.FilterCriteriaProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeSourceActiveMQBrokerParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeSourceDynamoDBStreamParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeSourceKinesisStreamParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeSourceManagedStreamingKafkaParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeSourceRabbitMQBrokerParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeSourceSelfManagedKafkaParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PipeSourceSqsQueueParametersProperty as Exports
import Stratosphere.ResourceProperties
data PipeSourceParametersProperty
  = PipeSourceParametersProperty {activeMQBrokerParameters :: (Prelude.Maybe PipeSourceActiveMQBrokerParametersProperty),
                                  dynamoDBStreamParameters :: (Prelude.Maybe PipeSourceDynamoDBStreamParametersProperty),
                                  filterCriteria :: (Prelude.Maybe FilterCriteriaProperty),
                                  kinesisStreamParameters :: (Prelude.Maybe PipeSourceKinesisStreamParametersProperty),
                                  managedStreamingKafkaParameters :: (Prelude.Maybe PipeSourceManagedStreamingKafkaParametersProperty),
                                  rabbitMQBrokerParameters :: (Prelude.Maybe PipeSourceRabbitMQBrokerParametersProperty),
                                  selfManagedKafkaParameters :: (Prelude.Maybe PipeSourceSelfManagedKafkaParametersProperty),
                                  sqsQueueParameters :: (Prelude.Maybe PipeSourceSqsQueueParametersProperty)}
mkPipeSourceParametersProperty :: PipeSourceParametersProperty
mkPipeSourceParametersProperty
  = PipeSourceParametersProperty
      {activeMQBrokerParameters = Prelude.Nothing,
       dynamoDBStreamParameters = Prelude.Nothing,
       filterCriteria = Prelude.Nothing,
       kinesisStreamParameters = Prelude.Nothing,
       managedStreamingKafkaParameters = Prelude.Nothing,
       rabbitMQBrokerParameters = Prelude.Nothing,
       selfManagedKafkaParameters = Prelude.Nothing,
       sqsQueueParameters = Prelude.Nothing}
instance ToResourceProperties PipeSourceParametersProperty where
  toResourceProperties PipeSourceParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeSourceParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ActiveMQBrokerParameters"
                              Prelude.<$> activeMQBrokerParameters,
                            (JSON..=) "DynamoDBStreamParameters"
                              Prelude.<$> dynamoDBStreamParameters,
                            (JSON..=) "FilterCriteria" Prelude.<$> filterCriteria,
                            (JSON..=) "KinesisStreamParameters"
                              Prelude.<$> kinesisStreamParameters,
                            (JSON..=) "ManagedStreamingKafkaParameters"
                              Prelude.<$> managedStreamingKafkaParameters,
                            (JSON..=) "RabbitMQBrokerParameters"
                              Prelude.<$> rabbitMQBrokerParameters,
                            (JSON..=) "SelfManagedKafkaParameters"
                              Prelude.<$> selfManagedKafkaParameters,
                            (JSON..=) "SqsQueueParameters" Prelude.<$> sqsQueueParameters])}
instance JSON.ToJSON PipeSourceParametersProperty where
  toJSON PipeSourceParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ActiveMQBrokerParameters"
                 Prelude.<$> activeMQBrokerParameters,
               (JSON..=) "DynamoDBStreamParameters"
                 Prelude.<$> dynamoDBStreamParameters,
               (JSON..=) "FilterCriteria" Prelude.<$> filterCriteria,
               (JSON..=) "KinesisStreamParameters"
                 Prelude.<$> kinesisStreamParameters,
               (JSON..=) "ManagedStreamingKafkaParameters"
                 Prelude.<$> managedStreamingKafkaParameters,
               (JSON..=) "RabbitMQBrokerParameters"
                 Prelude.<$> rabbitMQBrokerParameters,
               (JSON..=) "SelfManagedKafkaParameters"
                 Prelude.<$> selfManagedKafkaParameters,
               (JSON..=) "SqsQueueParameters" Prelude.<$> sqsQueueParameters]))
instance Property "ActiveMQBrokerParameters" PipeSourceParametersProperty where
  type PropertyType "ActiveMQBrokerParameters" PipeSourceParametersProperty = PipeSourceActiveMQBrokerParametersProperty
  set newValue PipeSourceParametersProperty {..}
    = PipeSourceParametersProperty
        {activeMQBrokerParameters = Prelude.pure newValue, ..}
instance Property "DynamoDBStreamParameters" PipeSourceParametersProperty where
  type PropertyType "DynamoDBStreamParameters" PipeSourceParametersProperty = PipeSourceDynamoDBStreamParametersProperty
  set newValue PipeSourceParametersProperty {..}
    = PipeSourceParametersProperty
        {dynamoDBStreamParameters = Prelude.pure newValue, ..}
instance Property "FilterCriteria" PipeSourceParametersProperty where
  type PropertyType "FilterCriteria" PipeSourceParametersProperty = FilterCriteriaProperty
  set newValue PipeSourceParametersProperty {..}
    = PipeSourceParametersProperty
        {filterCriteria = Prelude.pure newValue, ..}
instance Property "KinesisStreamParameters" PipeSourceParametersProperty where
  type PropertyType "KinesisStreamParameters" PipeSourceParametersProperty = PipeSourceKinesisStreamParametersProperty
  set newValue PipeSourceParametersProperty {..}
    = PipeSourceParametersProperty
        {kinesisStreamParameters = Prelude.pure newValue, ..}
instance Property "ManagedStreamingKafkaParameters" PipeSourceParametersProperty where
  type PropertyType "ManagedStreamingKafkaParameters" PipeSourceParametersProperty = PipeSourceManagedStreamingKafkaParametersProperty
  set newValue PipeSourceParametersProperty {..}
    = PipeSourceParametersProperty
        {managedStreamingKafkaParameters = Prelude.pure newValue, ..}
instance Property "RabbitMQBrokerParameters" PipeSourceParametersProperty where
  type PropertyType "RabbitMQBrokerParameters" PipeSourceParametersProperty = PipeSourceRabbitMQBrokerParametersProperty
  set newValue PipeSourceParametersProperty {..}
    = PipeSourceParametersProperty
        {rabbitMQBrokerParameters = Prelude.pure newValue, ..}
instance Property "SelfManagedKafkaParameters" PipeSourceParametersProperty where
  type PropertyType "SelfManagedKafkaParameters" PipeSourceParametersProperty = PipeSourceSelfManagedKafkaParametersProperty
  set newValue PipeSourceParametersProperty {..}
    = PipeSourceParametersProperty
        {selfManagedKafkaParameters = Prelude.pure newValue, ..}
instance Property "SqsQueueParameters" PipeSourceParametersProperty where
  type PropertyType "SqsQueueParameters" PipeSourceParametersProperty = PipeSourceSqsQueueParametersProperty
  set newValue PipeSourceParametersProperty {..}
    = PipeSourceParametersProperty
        {sqsQueueParameters = Prelude.pure newValue, ..}