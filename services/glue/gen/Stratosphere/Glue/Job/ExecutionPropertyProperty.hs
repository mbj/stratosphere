module Stratosphere.Glue.Job.ExecutionPropertyProperty (
        ExecutionPropertyProperty(..), mkExecutionPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExecutionPropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-executionproperty.html>
    ExecutionPropertyProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-executionproperty.html#cfn-glue-job-executionproperty-maxconcurrentruns>
                               maxConcurrentRuns :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExecutionPropertyProperty :: ExecutionPropertyProperty
mkExecutionPropertyProperty
  = ExecutionPropertyProperty
      {haddock_workaround_ = (), maxConcurrentRuns = Prelude.Nothing}
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
  set newValue ExecutionPropertyProperty {..}
    = ExecutionPropertyProperty
        {maxConcurrentRuns = Prelude.pure newValue, ..}