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
  = PipeSourceActiveMQBrokerParametersProperty {batchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                                credentials :: MQBrokerAccessCredentialsProperty,
                                                maximumBatchingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                queueName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeSourceActiveMQBrokerParametersProperty ::
  MQBrokerAccessCredentialsProperty
  -> Value Prelude.Text -> PipeSourceActiveMQBrokerParametersProperty
mkPipeSourceActiveMQBrokerParametersProperty credentials queueName
  = PipeSourceActiveMQBrokerParametersProperty
      {credentials = credentials, queueName = queueName,
       batchSize = Prelude.Nothing,
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