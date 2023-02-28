module Stratosphere.Glue.Job.ExecutionPropertyProperty (
        ExecutionPropertyProperty(..), mkExecutionPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExecutionPropertyProperty
  = ExecutionPropertyProperty {maxConcurrentRuns :: (Prelude.Maybe (Value Prelude.Double))}
mkExecutionPropertyProperty :: ExecutionPropertyProperty
mkExecutionPropertyProperty
  = ExecutionPropertyProperty {maxConcurrentRuns = Prelude.Nothing}
instance ToResourceProperties ExecutionPropertyProperty where
  toResourceProperties ExecutionPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Job.ExecutionProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxConcurrentRuns" Prelude.<$> maxConcurrentRuns])}
instance JSON.ToJSON ExecutionPropertyProperty where
  toJSON ExecutionPropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxConcurrentRuns" Prelude.<$> maxConcurrentRuns]))
instance Property "MaxConcurrentRuns" ExecutionPropertyProperty where
  type PropertyType "MaxConcurrentRuns" ExecutionPropertyProperty = Value Prelude.Double
  set newValue ExecutionPropertyProperty {}
    = ExecutionPropertyProperty
        {maxConcurrentRuns = Prelude.pure newValue, ..}