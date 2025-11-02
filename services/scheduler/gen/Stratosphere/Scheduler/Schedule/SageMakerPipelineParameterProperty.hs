module Stratosphere.Scheduler.Schedule.SageMakerPipelineParameterProperty (
        SageMakerPipelineParameterProperty(..),
        mkSageMakerPipelineParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SageMakerPipelineParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-sagemakerpipelineparameter.html>
    SageMakerPipelineParameterProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-sagemakerpipelineparameter.html#cfn-scheduler-schedule-sagemakerpipelineparameter-name>
                                        name :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-sagemakerpipelineparameter.html#cfn-scheduler-schedule-sagemakerpipelineparameter-value>
                                        value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSageMakerPipelineParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SageMakerPipelineParameterProperty
mkSageMakerPipelineParameterProperty name value
  = SageMakerPipelineParameterProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties SageMakerPipelineParameterProperty where
  toResourceProperties SageMakerPipelineParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.SageMakerPipelineParameter",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON SageMakerPipelineParameterProperty where
  toJSON SageMakerPipelineParameterProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" SageMakerPipelineParameterProperty where
  type PropertyType "Name" SageMakerPipelineParameterProperty = Value Prelude.Text
  set newValue SageMakerPipelineParameterProperty {..}
    = SageMakerPipelineParameterProperty {name = newValue, ..}
instance Property "Value" SageMakerPipelineParameterProperty where
  type PropertyType "Value" SageMakerPipelineParameterProperty = Value Prelude.Text
  set newValue SageMakerPipelineParameterProperty {..}
    = SageMakerPipelineParameterProperty {value = newValue, ..}