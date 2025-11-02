module Stratosphere.Pipes.Pipe.PipeSourceActiveMQBrokerParametersProperty (
        module Exports, PipeSourceActiveMQBrokerParametersProperty(..),
        mkPipeSourceActiveMQBrokerParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.MQBrokerAccessCredentialsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeSourceActiveMQBrokerParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceactivemqbrokerparameters.html>
    PipeSourceActiveMQBrokerParametersProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceactivemqbrokerparameters.html#cfn-pipes-pipe-pipesourceactivemqbrokerparameters-batchsize>
                                                batchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceactivemqbrokerparameters.html#cfn-pipes-pipe-pipesourceactivemqbrokerparameters-credentials>
                                                credentials :: MQBrokerAccessCredentialsProperty,
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceactivemqbrokerparameters.html#cfn-pipes-pipe-pipesourceactivemqbrokerparameters-maximumbatchingwindowinseconds>
                                                maximumBatchingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceactivemqbrokerparameters.html#cfn-pipes-pipe-pipesourceactivemqbrokerparameters-queuename>
                                                queueName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeSourceActiveMQBrokerParametersProperty ::
  MQBrokerAccessCredentialsProperty
  -> Value Prelude.Text -> PipeSourceActiveMQBrokerParametersProperty
mkPipeSourceActiveMQBrokerParametersProperty credentials queueName
  = PipeSourceActiveMQBrokerParametersProperty
      {haddock_workaround_ = (), credentials = credentials,
       queueName = queueName, batchSize = Prelude.Nothing,
       maximumBatchingWindowInSeconds = Prelude.Nothing}
instance ToResourceProperties PipeSourceActiveMQBrokerParametersProperty where
  toResourceProperties
    PipeSourceActiveMQBrokerParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeSourceActiveMQBrokerParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Credentials" JSON..= credentials, "QueueName" JSON..= queueName]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchSize" Prelude.<$> batchSize,
                               (JSON..=) "MaximumBatchingWindowInSeconds"
                                 Prelude.<$> maximumBatchingWindowInSeconds]))}
instance JSON.ToJSON PipeSourceActiveMQBrokerParametersProperty where
  toJSON PipeSourceActiveMQBrokerParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Credentials" JSON..= credentials, "QueueName" JSON..= queueName]
              (Prelude.catMaybes
                 [(JSON..=) "BatchSize" Prelude.<$> batchSize,
                  (JSON..=) "MaximumBatchingWindowInSeconds"
                    Prelude.<$> maximumBatchingWindowInSeconds])))
instance Property "BatchSize" PipeSourceActiveMQBrokerParametersProperty where
  type PropertyType "BatchSize" PipeSourceActiveMQBrokerParametersProperty = Value Prelude.Integer
  set newValue PipeSourceActiveMQBrokerParametersProperty {..}
    = PipeSourceActiveMQBrokerParametersProperty
        {batchSize = Prelude.pure newValue, ..}
instance Property "Credentials" PipeSourceActiveMQBrokerParametersProperty where
  type PropertyType "Credentials" PipeSourceActiveMQBrokerParametersProperty = MQBrokerAccessCredentialsProperty
  set newValue PipeSourceActiveMQBrokerParametersProperty {..}
    = PipeSourceActiveMQBrokerParametersProperty
        {credentials = newValue, ..}
instance Property "MaximumBatchingWindowInSeconds" PipeSourceActiveMQBrokerParametersProperty where
  type PropertyType "MaximumBatchingWindowInSeconds" PipeSourceActiveMQBrokerParametersProperty = Value Prelude.Integer
  set newValue PipeSourceActiveMQBrokerParametersProperty {..}
    = PipeSourceActiveMQBrokerParametersProperty
        {maximumBatchingWindowInSeconds = Prelude.pure newValue, ..}
instance Property "QueueName" PipeSourceActiveMQBrokerParametersProperty where
  type PropertyType "QueueName" PipeSourceActiveMQBrokerParametersProperty = Value Prelude.Text
  set newValue PipeSourceActiveMQBrokerParametersProperty {..}
    = PipeSourceActiveMQBrokerParametersProperty
        {queueName = newValue, ..}