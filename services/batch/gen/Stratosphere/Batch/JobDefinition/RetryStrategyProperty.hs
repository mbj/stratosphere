module Stratosphere.Batch.JobDefinition.RetryStrategyProperty (
        module Exports, RetryStrategyProperty(..), mkRetryStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EvaluateOnExitProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetryStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-retrystrategy.html>
    RetryStrategyProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-retrystrategy.html#cfn-batch-jobdefinition-retrystrategy-attempts>
                           attempts :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-retrystrategy.html#cfn-batch-jobdefinition-retrystrategy-evaluateonexit>
                           evaluateOnExit :: (Prelude.Maybe [EvaluateOnExitProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetryStrategyProperty :: RetryStrategyProperty
mkRetryStrategyProperty
  = RetryStrategyProperty
      {haddock_workaround_ = (), attempts = Prelude.Nothing,
       evaluateOnExit = Prelude.Nothing}
instance ToResourceProperties RetryStrategyProperty where
  toResourceProperties RetryStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.RetryStrategy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Attempts" Prelude.<$> attempts,
                            (JSON..=) "EvaluateOnExit" Prelude.<$> evaluateOnExit])}
instance JSON.ToJSON RetryStrategyProperty where
  toJSON RetryStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Attempts" Prelude.<$> attempts,
               (JSON..=) "EvaluateOnExit" Prelude.<$> evaluateOnExit]))
instance Property "Attempts" RetryStrategyProperty where
  type PropertyType "Attempts" RetryStrategyProperty = Value Prelude.Integer
  set newValue RetryStrategyProperty {..}
    = RetryStrategyProperty {attempts = Prelude.pure newValue, ..}
instance Property "EvaluateOnExit" RetryStrategyProperty where
  type PropertyType "EvaluateOnExit" RetryStrategyProperty = [EvaluateOnExitProperty]
  set newValue RetryStrategyProperty {..}
    = RetryStrategyProperty
        {evaluateOnExit = Prelude.pure newValue, ..}