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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceselfmanagedkafkaparameters.html>
    PipeSourceSelfManagedKafkaParametersProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceselfmanagedkafkaparameters.html#cfn-pipes-pipe-pipesourceselfmanagedkafkaparameters-additionalbootstrapservers>
                                                  additionalBootstrapServers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceselfmanagedkafkaparameters.html#cfn-pipes-pipe-pipesourceselfmanagedkafkaparameters-batchsize>
                                                  batchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceselfmanagedkafkaparameters.html#cfn-pipes-pipe-pipesourceselfmanagedkafkaparameters-consumergroupid>
                                                  consumerGroupID :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceselfmanagedkafkaparameters.html#cfn-pipes-pipe-pipesourceselfmanagedkafkaparameters-credentials>
                                                  credentials :: (Prelude.Maybe SelfManagedKafkaAccessConfigurationCredentialsProperty),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceselfmanagedkafkaparameters.html#cfn-pipes-pipe-pipesourceselfmanagedkafkaparameters-maximumbatchingwindowinseconds>
                                                  maximumBatchingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceselfmanagedkafkaparameters.html#cfn-pipes-pipe-pipesourceselfmanagedkafkaparameters-serverrootcacertificate>
                                                  serverRootCaCertificate :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceselfmanagedkafkaparameters.html#cfn-pipes-pipe-pipesourceselfmanagedkafkaparameters-startingposition>
                                                  startingPosition :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceselfmanagedkafkaparameters.html#cfn-pipes-pipe-pipesourceselfmanagedkafkaparameters-topicname>
                                                  topicName :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceselfmanagedkafkaparameters.html#cfn-pipes-pipe-pipesourceselfmanagedkafkaparameters-vpc>
                                                  vpc :: (Prelude.Maybe SelfManagedKafkaAccessConfigurationVpcProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeSourceSelfManagedKafkaParametersProperty ::
  Value Prelude.Text -> PipeSourceSelfManagedKafkaParametersProperty
mkPipeSourceSelfManagedKafkaParametersProperty topicName
  = PipeSourceSelfManagedKafkaParametersProperty
      {haddock_workaround_ = (), topicName = topicName,
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