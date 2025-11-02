module Stratosphere.ImageBuilder.ImagePipeline.ScheduleProperty (
        ScheduleProperty(..), mkScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-schedule.html>
    ScheduleProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-schedule.html#cfn-imagebuilder-imagepipeline-schedule-pipelineexecutionstartcondition>
                      pipelineExecutionStartCondition :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-schedule.html#cfn-imagebuilder-imagepipeline-schedule-scheduleexpression>
                      scheduleExpression :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleProperty :: ScheduleProperty
mkScheduleProperty
  = ScheduleProperty
      {haddock_workaround_ = (),
       pipelineExecutionStartCondition = Prelude.Nothing,
       scheduleExpression = Prelude.Nothing}
instance ToResourceProperties ScheduleProperty where
  toResourceProperties ScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImagePipeline.Schedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PipelineExecutionStartCondition"
                              Prelude.<$> pipelineExecutionStartCondition,
                            (JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression])}
instance JSON.ToJSON ScheduleProperty where
  toJSON ScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PipelineExecutionStartCondition"
                 Prelude.<$> pipelineExecutionStartCondition,
               (JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression]))
instance Property "PipelineExecutionStartCondition" ScheduleProperty where
  type PropertyType "PipelineExecutionStartCondition" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty
        {pipelineExecutionStartCondition = Prelude.pure newValue, ..}
instance Property "ScheduleExpression" ScheduleProperty where
  type PropertyType "ScheduleExpression" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {scheduleExpression = Prelude.pure newValue, ..}