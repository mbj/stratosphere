module Stratosphere.Pipes.Pipe.PipeSourceDynamoDBStreamParametersProperty (
        module Exports, PipeSourceDynamoDBStreamParametersProperty(..),
        mkPipeSourceDynamoDBStreamParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.DeadLetterConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeSourceDynamoDBStreamParametersProperty
  = PipeSourceDynamoDBStreamParametersProperty {batchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                                deadLetterConfig :: (Prelude.Maybe DeadLetterConfigProperty),
                                                maximumBatchingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                maximumRecordAgeInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                maximumRetryAttempts :: (Prelude.Maybe (Value Prelude.Integer)),
                                                onPartialBatchItemFailure :: (Prelude.Maybe (Value Prelude.Text)),
                                                parallelizationFactor :: (Prelude.Maybe (Value Prelude.Integer)),
                                                startingPosition :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeSourceDynamoDBStreamParametersProperty ::
  Value Prelude.Text -> PipeSourceDynamoDBStreamParametersProperty
mkPipeSourceDynamoDBStreamParametersProperty startingPosition
  = PipeSourceDynamoDBStreamParametersProperty
      {startingPosition = startingPosition, batchSize = Prelude.Nothing,
       deadLetterConfig = Prelude.Nothing,
       maximumBatchingWindowInSeconds = Prelude.Nothing,
       maximumRecordAgeInSeconds = Prelude.Nothing,
       maximumRetryAttempts = Prelude.Nothing,
       onPartialBatchItemFailure = Prelude.Nothing,
       parallelizationFactor = Prelude.Nothing}
instance ToResourceProperties PipeSourceDynamoDBStreamParametersProperty where
  toResourceProperties
    PipeSourceDynamoDBStreamParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeSourceDynamoDBStreamParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StartingPosition" JSON..= startingPosition]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchSize" Prelude.<$> batchSize,
                               (JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                               (JSON..=) "MaximumBatchingWindowInSeconds"
                                 Prelude.<$> maximumBatchingWindowInSeconds,
                               (JSON..=) "MaximumRecordAgeInSeconds"
                                 Prelude.<$> maximumRecordAgeInSeconds,
                               (JSON..=) "MaximumRetryAttempts" Prelude.<$> maximumRetryAttempts,
                               (JSON..=) "OnPartialBatchItemFailure"
                                 Prelude.<$> onPartialBatchItemFailure,
                               (JSON..=) "ParallelizationFactor"
                                 Prelude.<$> parallelizationFactor]))}
instance JSON.ToJSON PipeSourceDynamoDBStreamParametersProperty where
  toJSON PipeSourceDynamoDBStreamParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StartingPosition" JSON..= startingPosition]
              (Prelude.catMaybes
                 [(JSON..=) "BatchSize" Prelude.<$> batchSize,
                  (JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                  (JSON..=) "MaximumBatchingWindowInSeconds"
                    Prelude.<$> maximumBatchingWindowInSeconds,
                  (JSON..=) "MaximumRecordAgeInSeconds"
                    Prelude.<$> maximumRecordAgeInSeconds,
                  (JSON..=) "MaximumRetryAttempts" Prelude.<$> maximumRetryAttempts,
                  (JSON..=) "OnPartialBatchItemFailure"
                    Prelude.<$> onPartialBatchItemFailure,
                  (JSON..=) "ParallelizationFactor"
                    Prelude.<$> parallelizationFactor])))
instance Property "BatchSize" PipeSourceDynamoDBStreamParametersProperty where
  type PropertyType "BatchSize" PipeSourceDynamoDBStreamParametersProperty = Value Prelude.Integer
  set newValue PipeSourceDynamoDBStreamParametersProperty {..}
    = PipeSourceDynamoDBStreamParametersProperty
        {batchSize = Prelude.pure newValue, ..}
instance Property "DeadLetterConfig" PipeSourceDynamoDBStreamParametersProperty where
  type PropertyType "DeadLetterConfig" PipeSourceDynamoDBStreamParametersProperty = DeadLetterConfigProperty
  set newValue PipeSourceDynamoDBStreamParametersProperty {..}
    = PipeSourceDynamoDBStreamParametersProperty
        {deadLetterConfig = Prelude.pure newValue, ..}
instance Property "MaximumBatchingWindowInSeconds" PipeSourceDynamoDBStreamParametersProperty where
  type PropertyType "MaximumBatchingWindowInSeconds" PipeSourceDynamoDBStreamParametersProperty = Value Prelude.Integer
  set newValue PipeSourceDynamoDBStreamParametersProperty {..}
    = PipeSourceDynamoDBStreamParametersProperty
        {maximumBatchingWindowInSeconds = Prelude.pure newValue, ..}
instance Property "MaximumRecordAgeInSeconds" PipeSourceDynamoDBStreamParametersProperty where
  type PropertyType "MaximumRecordAgeInSeconds" PipeSourceDynamoDBStreamParametersProperty = Value Prelude.Integer
  set newValue PipeSourceDynamoDBStreamParametersProperty {..}
    = PipeSourceDynamoDBStreamParametersProperty
        {maximumRecordAgeInSeconds = Prelude.pure newValue, ..}
instance Property "MaximumRetryAttempts" PipeSourceDynamoDBStreamParametersProperty where
  type PropertyType "MaximumRetryAttempts" PipeSourceDynamoDBStreamParametersProperty = Value Prelude.Integer
  set newValue PipeSourceDynamoDBStreamParametersProperty {..}
    = PipeSourceDynamoDBStreamParametersProperty
        {maximumRetryAttempts = Prelude.pure newValue, ..}
instance Property "OnPartialBatchItemFailure" PipeSourceDynamoDBStreamParametersProperty where
  type PropertyType "OnPartialBatchItemFailure" PipeSourceDynamoDBStreamParametersProperty = Value Prelude.Text
  set newValue PipeSourceDynamoDBStreamParametersProperty {..}
    = PipeSourceDynamoDBStreamParametersProperty
        {onPartialBatchItemFailure = Prelude.pure newValue, ..}
instance Property "ParallelizationFactor" PipeSourceDynamoDBStreamParametersProperty where
  type PropertyType "ParallelizationFactor" PipeSourceDynamoDBStreamParametersProperty = Value Prelude.Integer
  set newValue PipeSourceDynamoDBStreamParametersProperty {..}
    = PipeSourceDynamoDBStreamParametersProperty
        {parallelizationFactor = Prelude.pure newValue, ..}
instance Property "StartingPosition" PipeSourceDynamoDBStreamParametersProperty where
  type PropertyType "StartingPosition" PipeSourceDynamoDBStreamParametersProperty = Value Prelude.Text
  set newValue PipeSourceDynamoDBStreamParametersProperty {..}
    = PipeSourceDynamoDBStreamParametersProperty
        {startingPosition = newValue, ..}