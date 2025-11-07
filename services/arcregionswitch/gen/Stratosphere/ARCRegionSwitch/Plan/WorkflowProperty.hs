module Stratosphere.ARCRegionSwitch.Plan.WorkflowProperty (
        module Exports, WorkflowProperty(..), mkWorkflowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.StepProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkflowProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-workflow.html>
    WorkflowProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-workflow.html#cfn-arcregionswitch-plan-workflow-steps>
                      steps :: (Prelude.Maybe [StepProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-workflow.html#cfn-arcregionswitch-plan-workflow-workflowdescription>
                      workflowDescription :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-workflow.html#cfn-arcregionswitch-plan-workflow-workflowtargetaction>
                      workflowTargetAction :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-workflow.html#cfn-arcregionswitch-plan-workflow-workflowtargetregion>
                      workflowTargetRegion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflowProperty :: Value Prelude.Text -> WorkflowProperty
mkWorkflowProperty workflowTargetAction
  = WorkflowProperty
      {haddock_workaround_ = (),
       workflowTargetAction = workflowTargetAction,
       steps = Prelude.Nothing, workflowDescription = Prelude.Nothing,
       workflowTargetRegion = Prelude.Nothing}
instance ToResourceProperties WorkflowProperty where
  toResourceProperties WorkflowProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.Workflow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["WorkflowTargetAction" JSON..= workflowTargetAction]
                           (Prelude.catMaybes
                              [(JSON..=) "Steps" Prelude.<$> steps,
                               (JSON..=) "WorkflowDescription" Prelude.<$> workflowDescription,
                               (JSON..=) "WorkflowTargetRegion"
                                 Prelude.<$> workflowTargetRegion]))}
instance JSON.ToJSON WorkflowProperty where
  toJSON WorkflowProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["WorkflowTargetAction" JSON..= workflowTargetAction]
              (Prelude.catMaybes
                 [(JSON..=) "Steps" Prelude.<$> steps,
                  (JSON..=) "WorkflowDescription" Prelude.<$> workflowDescription,
                  (JSON..=) "WorkflowTargetRegion"
                    Prelude.<$> workflowTargetRegion])))
instance Property "Steps" WorkflowProperty where
  type PropertyType "Steps" WorkflowProperty = [StepProperty]
  set newValue WorkflowProperty {..}
    = WorkflowProperty {steps = Prelude.pure newValue, ..}
instance Property "WorkflowDescription" WorkflowProperty where
  type PropertyType "WorkflowDescription" WorkflowProperty = Value Prelude.Text
  set newValue WorkflowProperty {..}
    = WorkflowProperty
        {workflowDescription = Prelude.pure newValue, ..}
instance Property "WorkflowTargetAction" WorkflowProperty where
  type PropertyType "WorkflowTargetAction" WorkflowProperty = Value Prelude.Text
  set newValue WorkflowProperty {..}
    = WorkflowProperty {workflowTargetAction = newValue, ..}
instance Property "WorkflowTargetRegion" WorkflowProperty where
  type PropertyType "WorkflowTargetRegion" WorkflowProperty = Value Prelude.Text
  set newValue WorkflowProperty {..}
    = WorkflowProperty
        {workflowTargetRegion = Prelude.pure newValue, ..}