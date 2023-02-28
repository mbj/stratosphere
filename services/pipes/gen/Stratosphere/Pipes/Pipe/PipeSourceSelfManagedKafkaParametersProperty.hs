module Stratosphere.Pipes.Pipe.PipeSourceSelfManagedKafkaParametersProperty (
        module Exports, PipeSourceSelfManagedKafkaParametersProperty(..),
        mkPipeSourceSelfManagedKafkaParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.SelfManagedKafkaAccessConfigurationCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.SelfManagedKafkaAccessConfigurationVpcProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeSourceSelfManagedKafkaParametersProperty
  = PipeSourceSelfManagedKafkaParametersProperty {additionalBootstrapServers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                  batchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  consumerGroupID :: (Prelude.Maybe (Value Prelude.Text)),
                                                  credentials :: (Prelude.Maybe SelfManagedKafkaAccessConfigurationCredentialsProperty),
                                                  maximumBatchingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  serverRootCaCertificate :: (Prelude.Maybe (Value Prelude.Text)),
                                                  startingPosition :: (Prelude.Maybe (Value Prelude.Text)),
                                                  topicName :: (Value Prelude.Text),
                                                  vpc :: (Prelude.Maybe SelfManagedKafkaAccessConfigurationVpcProperty)}
mkPipeSourceSelfManagedKafkaParametersProperty ::
  Value Prelude.Text -> PipeSourceSelfManagedKafkaParametersProperty
mkPipeSourceSelfManagedKafkaParametersProperty topicName
  = PipeSourceSelfManagedKafkaParametersProperty
      {topicName = topicName,
       additionalBootstrapServers = Prelude.Nothing,
       batchSize = Prelude.Nothing, consumerGroupID = Prelude.Nothing,
       credentials = Prelude.Nothing,
       maximumBatchingWindowInSeconds = Prelude.Nothing,
       serverRootCaCertificate = Prelude.Nothing,
       startingPosition = Prelude.Nothing, vpc = Prelude.Nothing}
instance ToResourceProperties PipeSourceSelfManagedKafkaParametersProperty where
  toResourceProperties
    PipeSourceSelfManagedKafkaParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeSourceSelfManagedKafkaParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TopicName" JSON..= topicName]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalBootstrapServers"
                                 Prelude.<$> additionalBootstrapServers,
                               (JSON..=) "BatchSize" Prelude.<$> batchSize,
                               (JSON..=) "ConsumerGroupID" Prelude.<$> consumerGroupID,
                               (JSON..=) "Credentials" Prelude.<$> credentials,
                               (JSON..=) "MaximumBatchingWindowInSeconds"
                                 Prelude.<$> maximumBatchingWindowInSeconds,
                               (JSON..=) "ServerRootCaCertificate"
                                 Prelude.<$> serverRootCaCertificate,
                               (JSON..=) "StartingPosition" Prelude.<$> startingPosition,
                               (JSON..=) "Vpc" Prelude.<$> vpc]))}
instance JSON.ToJSON PipeSourceSelfManagedKafkaParametersProperty where
  toJSON PipeSourceSelfManagedKafkaParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TopicName" JSON..= topicName]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalBootstrapServers"
                    Prelude.<$> additionalBootstrapServers,
                  (JSON..=) "BatchSize" Prelude.<$> batchSize,
                  (JSON..=) "ConsumerGroupID" Prelude.<$> consumerGroupID,
                  (JSON..=) "Credentials" Prelude.<$> credentials,
                  (JSON..=) "MaximumBatchingWindowInSeconds"
                    Prelude.<$> maximumBatchingWindowInSeconds,
                  (JSON..=) "ServerRootCaCertificate"
                    Prelude.<$> serverRootCaCertificate,
                  (JSON..=) "StartingPosition" Prelude.<$> startingPosition,
                  (JSON..=) "Vpc" Prelude.<$> vpc])))
instance Property "AdditionalBootstrapServers" PipeSourceSelfManagedKafkaParametersProperty where
  type PropertyType "AdditionalBootstrapServers" PipeSourceSelfManagedKafkaParametersProperty = ValueList Prelude.Text
  set newValue PipeSourceSelfManagedKafkaParametersProperty {..}
    = PipeSourceSelfManagedKafkaParametersProperty
        {additionalBootstrapServers = Prelude.pure newValue, ..}
instance Property "BatchSize" PipeSourceSelfManagedKafkaParametersProperty where
  type PropertyType "BatchSize" PipeSourceSelfManagedKafkaParametersProperty = Value Prelude.Integer
  set newValue PipeSourceSelfManagedKafkaParametersProperty {..}
    = PipeSourceSelfManagedKafkaParametersProperty
        {batchSize = Prelude.pure newValue, ..}
instance Property "ConsumerGroupID" PipeSourceSelfManagedKafkaParametersProperty where
  type PropertyType "ConsumerGroupID" PipeSourceSelfManagedKafkaParametersProperty = Value Prelude.Text
  set newValue PipeSourceSelfManagedKafkaParametersProperty {..}
    = PipeSourceSelfManagedKafkaParametersProperty
        {consumerGroupID = Prelude.pure newValue, ..}
instance Property "Credentials" PipeSourceSelfManagedKafkaParametersProperty where
  type PropertyType "Credentials" PipeSourceSelfManagedKafkaParametersProperty = SelfManagedKafkaAccessConfigurationCredentialsProperty
  set newValue PipeSourceSelfManagedKafkaParametersProperty {..}
    = PipeSourceSelfManagedKafkaParametersProperty
        {credentials = Prelude.pure newValue, ..}
instance Property "MaximumBatchingWindowInSeconds" PipeSourceSelfManagedKafkaParametersProperty where
  type PropertyType "MaximumBatchingWindowInSeconds" PipeSourceSelfManagedKafkaParametersProperty = Value Prelude.Integer
  set newValue PipeSourceSelfManagedKafkaParametersProperty {..}
    = PipeSourceSelfManagedKafkaParametersProperty
        {maximumBatchingWindowInSeconds = Prelude.pure newValue, ..}
instance Property "ServerRootCaCertificate" PipeSourceSelfManagedKafkaParametersProperty where
  type PropertyType "ServerRootCaCertificate" PipeSourceSelfManagedKafkaParametersProperty = Value Prelude.Text
  set newValue PipeSourceSelfManagedKafkaParametersProperty {..}
    = PipeSourceSelfManagedKafkaParametersProperty
        {serverRootCaCertificate = Prelude.pure newValue, ..}
instance Property "StartingPosition" PipeSourceSelfManagedKafkaParametersProperty where
  type PropertyType "StartingPosition" PipeSourceSelfManagedKafkaParametersProperty = Value Prelude.Text
  set newValue PipeSourceSelfManagedKafkaParametersProperty {..}
    = PipeSourceSelfManagedKafkaParametersProperty
        {startingPosition = Prelude.pure newValue, ..}
instance Property "TopicName" PipeSourceSelfManagedKafkaParametersProperty where
  type PropertyType "TopicName" PipeSourceSelfManagedKafkaParametersProperty = Value Prelude.Text
  set newValue PipeSourceSelfManagedKafkaParametersProperty {..}
    = PipeSourceSelfManagedKafkaParametersProperty
        {topicName = newValue, ..}
instance Property "Vpc" PipeSourceSelfManagedKafkaParametersProperty where
  type PropertyType "Vpc" PipeSourceSelfManagedKafkaParametersProperty = SelfManagedKafkaAccessConfigurationVpcProperty
  set newValue PipeSourceSelfManagedKafkaParametersProperty {..}
    = PipeSourceSelfManagedKafkaParametersProperty
        {vpc = Prelude.pure newValue, ..}