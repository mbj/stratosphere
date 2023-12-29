module Stratosphere.Pipes.Pipe.BatchRetryStrategyProperty (
        BatchRetryStrategyProperty(..), mkBatchRetryStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchRetryStrategyProperty
  = BatchRetryStrategyProperty {attempts :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchRetryStrategyProperty :: BatchRetryStrategyProperty
mkBatchRetryStrategyProperty
  = BatchRetryStrategyProperty {attempts = Prelude.Nothing}
instance ToResourceProperties BatchRetryStrategyProperty where
  toResourceProperties BatchRetryStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.BatchRetryStrategy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Attempts" Prelude.<$> attempts])}
instance JSON.ToJSON BatchRetryStrategyProperty where
  toJSON BatchRetryStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Attempts" Prelude.<$> attempts]))
instance Property "Attempts" BatchRetryStrategyProperty where
  type PropertyType "Attempts" BatchRetryStrategyProperty = Value Prelude.Integer
  set newValue BatchRetryStrategyProperty {}
    = BatchRetryStrategyProperty {attempts = Prelude.pure newValue, ..}