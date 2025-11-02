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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html>
    PipeSourceParametersProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-activemqbrokerparameters>
                                  activeMQBrokerParameters :: (Prelude.Maybe PipeSourceActiveMQBrokerParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-dynamodbstreamparameters>
                                  dynamoDBStreamParameters :: (Prelude.Maybe PipeSourceDynamoDBStreamParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-filtercriteria>
                                  filterCriteria :: (Prelude.Maybe FilterCriteriaProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-kinesisstreamparameters>
                                  kinesisStreamParameters :: (Prelude.Maybe PipeSourceKinesisStreamParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-managedstreamingkafkaparameters>
                                  managedStreamingKafkaParameters :: (Prelude.Maybe PipeSourceManagedStreamingKafkaParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-rabbitmqbrokerparameters>
                                  rabbitMQBrokerParameters :: (Prelude.Maybe PipeSourceRabbitMQBrokerParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-selfmanagedkafkaparameters>
                                  selfManagedKafkaParameters :: (Prelude.Maybe PipeSourceSelfManagedKafkaParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-sqsqueueparameters>
                                  sqsQueueParameters :: (Prelude.Maybe PipeSourceSqsQueueParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeSourceParametersProperty :: PipeSourceParametersProperty
mkPipeSourceParametersProperty
  = PipeSourceParametersProperty
      {haddock_workaround_ = (),
       activeMQBrokerParameters = Prelude.Nothing,
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