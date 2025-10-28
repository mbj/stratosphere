module Stratosphere.Pipes.Pipe.PipeSourceManagedStreamingKafkaParametersProperty (
        module Exports,
        PipeSourceManagedStreamingKafkaParametersProperty(..),
        mkPipeSourceManagedStreamingKafkaParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.MSKAccessCredentialsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeSourceManagedStreamingKafkaParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcemanagedstreamingkafkaparameters.html>
    PipeSourceManagedStreamingKafkaParametersProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcemanagedstreamingkafkaparameters.html#cfn-pipes-pipe-pipesourcemanagedstreamingkafkaparameters-batchsize>
                                                       batchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcemanagedstreamingkafkaparameters.html#cfn-pipes-pipe-pipesourcemanagedstreamingkafkaparameters-consumergroupid>
                                                       consumerGroupID :: (Prelude.Maybe (Value Prelude.Text)),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcemanagedstreamingkafkaparameters.html#cfn-pipes-pipe-pipesourcemanagedstreamingkafkaparameters-credentials>
                                                       credentials :: (Prelude.Maybe MSKAccessCredentialsProperty),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcemanagedstreamingkafkaparameters.html#cfn-pipes-pipe-pipesourcemanagedstreamingkafkaparameters-maximumbatchingwindowinseconds>
                                                       maximumBatchingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcemanagedstreamingkafkaparameters.html#cfn-pipes-pipe-pipesourcemanagedstreamingkafkaparameters-startingposition>
                                                       startingPosition :: (Prelude.Maybe (Value Prelude.Text)),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcemanagedstreamingkafkaparameters.html#cfn-pipes-pipe-pipesourcemanagedstreamingkafkaparameters-topicname>
                                                       topicName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeSourceManagedStreamingKafkaParametersProperty ::
  Value Prelude.Text
  -> PipeSourceManagedStreamingKafkaParametersProperty
mkPipeSourceManagedStreamingKafkaParametersProperty topicName
  = PipeSourceManagedStreamingKafkaParametersProperty
      {haddock_workaround_ = (), topicName = topicName,
       batchSize = Prelude.Nothing, consumerGroupID = Prelude.Nothing,
       credentials = Prelude.Nothing,
       maximumBatchingWindowInSeconds = Prelude.Nothing,
       startingPosition = Prelude.Nothing}
instance ToResourceProperties PipeSourceManagedStreamingKafkaParametersProperty where
  toResourceProperties
    PipeSourceManagedStreamingKafkaParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeSourceManagedStreamingKafkaParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TopicName" JSON..= topicName]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchSize" Prelude.<$> batchSize,
                               (JSON..=) "ConsumerGroupID" Prelude.<$> consumerGroupID,
                               (JSON..=) "Credentials" Prelude.<$> credentials,
                               (JSON..=) "MaximumBatchingWindowInSeconds"
                                 Prelude.<$> maximumBatchingWindowInSeconds,
                               (JSON..=) "StartingPosition" Prelude.<$> startingPosition]))}
instance JSON.ToJSON PipeSourceManagedStreamingKafkaParametersProperty where
  toJSON PipeSourceManagedStreamingKafkaParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TopicName" JSON..= topicName]
              (Prelude.catMaybes
                 [(JSON..=) "BatchSize" Prelude.<$> batchSize,
                  (JSON..=) "ConsumerGroupID" Prelude.<$> consumerGroupID,
                  (JSON..=) "Credentials" Prelude.<$> credentials,
                  (JSON..=) "MaximumBatchingWindowInSeconds"
                    Prelude.<$> maximumBatchingWindowInSeconds,
                  (JSON..=) "StartingPosition" Prelude.<$> startingPosition])))
instance Property "BatchSize" PipeSourceManagedStreamingKafkaParametersProperty where
  type PropertyType "BatchSize" PipeSourceManagedStreamingKafkaParametersProperty = Value Prelude.Integer
  set newValue PipeSourceManagedStreamingKafkaParametersProperty {..}
    = PipeSourceManagedStreamingKafkaParametersProperty
        {batchSize = Prelude.pure newValue, ..}
instance Property "ConsumerGroupID" PipeSourceManagedStreamingKafkaParametersProperty where
  type PropertyType "ConsumerGroupID" PipeSourceManagedStreamingKafkaParametersProperty = Value Prelude.Text
  set newValue PipeSourceManagedStreamingKafkaParametersProperty {..}
    = PipeSourceManagedStreamingKafkaParametersProperty
        {consumerGroupID = Prelude.pure newValue, ..}
instance Property "Credentials" PipeSourceManagedStreamingKafkaParametersProperty where
  type PropertyType "Credentials" PipeSourceManagedStreamingKafkaParametersProperty = MSKAccessCredentialsProperty
  set newValue PipeSourceManagedStreamingKafkaParametersProperty {..}
    = PipeSourceManagedStreamingKafkaParametersProperty
        {credentials = Prelude.pure newValue, ..}
instance Property "MaximumBatchingWindowInSeconds" PipeSourceManagedStreamingKafkaParametersProperty where
  type PropertyType "MaximumBatchingWindowInSeconds" PipeSourceManagedStreamingKafkaParametersProperty = Value Prelude.Integer
  set newValue PipeSourceManagedStreamingKafkaParametersProperty {..}
    = PipeSourceManagedStreamingKafkaParametersProperty
        {maximumBatchingWindowInSeconds = Prelude.pure newValue, ..}
instance Property "StartingPosition" PipeSourceManagedStreamingKafkaParametersProperty where
  type PropertyType "StartingPosition" PipeSourceManagedStreamingKafkaParametersProperty = Value Prelude.Text
  set newValue PipeSourceManagedStreamingKafkaParametersProperty {..}
    = PipeSourceManagedStreamingKafkaParametersProperty
        {startingPosition = Prelude.pure newValue, ..}
instance Property "TopicName" PipeSourceManagedStreamingKafkaParametersProperty where
  type PropertyType "TopicName" PipeSourceManagedStreamingKafkaParametersProperty = Value Prelude.Text
  set newValue PipeSourceManagedStreamingKafkaParametersProperty {..}
    = PipeSourceManagedStreamingKafkaParametersProperty
        {topicName = newValue, ..}