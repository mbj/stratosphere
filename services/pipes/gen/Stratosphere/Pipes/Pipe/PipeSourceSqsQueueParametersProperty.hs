module Stratosphere.Pipes.Pipe.PipeSourceSqsQueueParametersProperty (
        PipeSourceSqsQueueParametersProperty(..),
        mkPipeSourceSqsQueueParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeSourceSqsQueueParametersProperty
  = PipeSourceSqsQueueParametersProperty {batchSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                          maximumBatchingWindowInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeSourceSqsQueueParametersProperty ::
  PipeSourceSqsQueueParametersProperty
mkPipeSourceSqsQueueParametersProperty
  = PipeSourceSqsQueueParametersProperty
      {batchSize = Prelude.Nothing,
       maximumBatchingWindowInSeconds = Prelude.Nothing}
instance ToResourceProperties PipeSourceSqsQueueParametersProperty where
  toResourceProperties PipeSourceSqsQueueParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeSourceSqsQueueParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BatchSize" Prelude.<$> batchSize,
                            (JSON..=) "MaximumBatchingWindowInSeconds"
                              Prelude.<$> maximumBatchingWindowInSeconds])}
instance JSON.ToJSON PipeSourceSqsQueueParametersProperty where
  toJSON PipeSourceSqsQueueParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BatchSize" Prelude.<$> batchSize,
               (JSON..=) "MaximumBatchingWindowInSeconds"
                 Prelude.<$> maximumBatchingWindowInSeconds]))
instance Property "BatchSize" PipeSourceSqsQueueParametersProperty where
  type PropertyType "BatchSize" PipeSourceSqsQueueParametersProperty = Value Prelude.Integer
  set newValue PipeSourceSqsQueueParametersProperty {..}
    = PipeSourceSqsQueueParametersProperty
        {batchSize = Prelude.pure newValue, ..}
instance Property "MaximumBatchingWindowInSeconds" PipeSourceSqsQueueParametersProperty where
  type PropertyType "MaximumBatchingWindowInSeconds" PipeSourceSqsQueueParametersProperty = Value Prelude.Integer
  set newValue PipeSourceSqsQueueParametersProperty {..}
    = PipeSourceSqsQueueParametersProperty
        {maximumBatchingWindowInSeconds = Prelude.pure newValue, ..}