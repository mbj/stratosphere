module Stratosphere.Pipes.Pipe.PipeSourceRabbitMQBrokerParametersProperty (
        module Exports, PipeSourceRabbitMQBrokerParametersProperty(..),
        mkPipeSourceRabbitMQBrokerParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.MQBrokerAccessCredentialsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeSourceRabbitMQBrokerParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcerabbitmqbrokerparameters.html>
    PipeSourceRabbitMQBrokerParametersProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcerabbitmqbrokerparameters.html#cfn-pipes-pipe-pipesourcerabbitmqbrokerparameters-batchsize>
                                                batchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcerabbitmqbrokerparameters.html#cfn-pipes-pipe-pipesourcerabbitmqbrokerparameters-credentials>
                                                credentials :: MQBrokerAccessCredentialsProperty,
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcerabbitmqbrokerparameters.html#cfn-pipes-pipe-pipesourcerabbitmqbrokerparameters-maximumbatchingwindowinseconds>
                                                maximumBatchingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcerabbitmqbrokerparameters.html#cfn-pipes-pipe-pipesourcerabbitmqbrokerparameters-queuename>
                                                queueName :: (Value Prelude.Text),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourcerabbitmqbrokerparameters.html#cfn-pipes-pipe-pipesourcerabbitmqbrokerparameters-virtualhost>
                                                virtualHost :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeSourceRabbitMQBrokerParametersProperty ::
  MQBrokerAccessCredentialsProperty
  -> Value Prelude.Text -> PipeSourceRabbitMQBrokerParametersProperty
mkPipeSourceRabbitMQBrokerParametersProperty credentials queueName
  = PipeSourceRabbitMQBrokerParametersProperty
      {haddock_workaround_ = (), credentials = credentials,
       queueName = queueName, batchSize = Prelude.Nothing,
       maximumBatchingWindowInSeconds = Prelude.Nothing,
       virtualHost = Prelude.Nothing}
instance ToResourceProperties PipeSourceRabbitMQBrokerParametersProperty where
  toResourceProperties
    PipeSourceRabbitMQBrokerParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeSourceRabbitMQBrokerParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Credentials" JSON..= credentials, "QueueName" JSON..= queueName]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchSize" Prelude.<$> batchSize,
                               (JSON..=) "MaximumBatchingWindowInSeconds"
                                 Prelude.<$> maximumBatchingWindowInSeconds,
                               (JSON..=) "VirtualHost" Prelude.<$> virtualHost]))}
instance JSON.ToJSON PipeSourceRabbitMQBrokerParametersProperty where
  toJSON PipeSourceRabbitMQBrokerParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Credentials" JSON..= credentials, "QueueName" JSON..= queueName]
              (Prelude.catMaybes
                 [(JSON..=) "BatchSize" Prelude.<$> batchSize,
                  (JSON..=) "MaximumBatchingWindowInSeconds"
                    Prelude.<$> maximumBatchingWindowInSeconds,
                  (JSON..=) "VirtualHost" Prelude.<$> virtualHost])))
instance Property "BatchSize" PipeSourceRabbitMQBrokerParametersProperty where
  type PropertyType "BatchSize" PipeSourceRabbitMQBrokerParametersProperty = Value Prelude.Integer
  set newValue PipeSourceRabbitMQBrokerParametersProperty {..}
    = PipeSourceRabbitMQBrokerParametersProperty
        {batchSize = Prelude.pure newValue, ..}
instance Property "Credentials" PipeSourceRabbitMQBrokerParametersProperty where
  type PropertyType "Credentials" PipeSourceRabbitMQBrokerParametersProperty = MQBrokerAccessCredentialsProperty
  set newValue PipeSourceRabbitMQBrokerParametersProperty {..}
    = PipeSourceRabbitMQBrokerParametersProperty
        {credentials = newValue, ..}
instance Property "MaximumBatchingWindowInSeconds" PipeSourceRabbitMQBrokerParametersProperty where
  type PropertyType "MaximumBatchingWindowInSeconds" PipeSourceRabbitMQBrokerParametersProperty = Value Prelude.Integer
  set newValue PipeSourceRabbitMQBrokerParametersProperty {..}
    = PipeSourceRabbitMQBrokerParametersProperty
        {maximumBatchingWindowInSeconds = Prelude.pure newValue, ..}
instance Property "QueueName" PipeSourceRabbitMQBrokerParametersProperty where
  type PropertyType "QueueName" PipeSourceRabbitMQBrokerParametersProperty = Value Prelude.Text
  set newValue PipeSourceRabbitMQBrokerParametersProperty {..}
    = PipeSourceRabbitMQBrokerParametersProperty
        {queueName = newValue, ..}
instance Property "VirtualHost" PipeSourceRabbitMQBrokerParametersProperty where
  type PropertyType "VirtualHost" PipeSourceRabbitMQBrokerParametersProperty = Value Prelude.Text
  set newValue PipeSourceRabbitMQBrokerParametersProperty {..}
    = PipeSourceRabbitMQBrokerParametersProperty
        {virtualHost = Prelude.pure newValue, ..}