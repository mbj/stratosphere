module Stratosphere.SageMaker.MonitoringSchedule.StoppingConditionProperty (
        StoppingConditionProperty(..), mkStoppingConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StoppingConditionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-stoppingcondition.html>
    StoppingConditionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-stoppingcondition.html#cfn-sagemaker-monitoringschedule-stoppingcondition-maxruntimeinseconds>
                               maxRuntimeInSeconds :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStoppingConditionProperty ::
  Value Prelude.Integer -> StoppingConditionProperty
mkStoppingConditionProperty maxRuntimeInSeconds
  = StoppingConditionProperty
      {maxRuntimeInSeconds = maxRuntimeInSeconds}
instance ToResourceProperties StoppingConditionProperty where
  toResourceProperties StoppingConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.StoppingCondition",
         supportsTags = Prelude.False,
         properties = ["MaxRuntimeInSeconds" JSON..= maxRuntimeInSeconds]}
instance JSON.ToJSON StoppingConditionProperty where
  toJSON StoppingConditionProperty {..}
    = JSON.object ["MaxRuntimeInSeconds" JSON..= maxRuntimeInSeconds]
instance Property "MaxRuntimeInSeconds" StoppingConditionProperty where
  type PropertyType "MaxRuntimeInSeconds" StoppingConditionProperty = Value Prelude.Integer
  set newValue StoppingConditionProperty {}
    = StoppingConditionProperty {maxRuntimeInSeconds = newValue, ..}