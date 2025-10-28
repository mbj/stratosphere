module Stratosphere.Transfer.Workflow.WorkflowStepProperty (
        module Exports, WorkflowStepProperty(..), mkWorkflowStepProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.CopyStepDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.CustomStepDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.DecryptStepDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.DeleteStepDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.TagStepDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkflowStepProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-workflowstep.html>
    WorkflowStepProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-workflowstep.html#cfn-transfer-workflow-workflowstep-copystepdetails>
                          copyStepDetails :: (Prelude.Maybe CopyStepDetailsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-workflowstep.html#cfn-transfer-workflow-workflowstep-customstepdetails>
                          customStepDetails :: (Prelude.Maybe CustomStepDetailsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-workflowstep.html#cfn-transfer-workflow-workflowstep-decryptstepdetails>
                          decryptStepDetails :: (Prelude.Maybe DecryptStepDetailsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-workflowstep.html#cfn-transfer-workflow-workflowstep-deletestepdetails>
                          deleteStepDetails :: (Prelude.Maybe DeleteStepDetailsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-workflowstep.html#cfn-transfer-workflow-workflowstep-tagstepdetails>
                          tagStepDetails :: (Prelude.Maybe TagStepDetailsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-workflowstep.html#cfn-transfer-workflow-workflowstep-type>
                          type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflowStepProperty :: WorkflowStepProperty
mkWorkflowStepProperty
  = WorkflowStepProperty
      {haddock_workaround_ = (), copyStepDetails = Prelude.Nothing,
       customStepDetails = Prelude.Nothing,
       decryptStepDetails = Prelude.Nothing,
       deleteStepDetails = Prelude.Nothing,
       tagStepDetails = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties WorkflowStepProperty where
  toResourceProperties WorkflowStepProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.WorkflowStep",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CopyStepDetails" Prelude.<$> copyStepDetails,
                            (JSON..=) "CustomStepDetails" Prelude.<$> customStepDetails,
                            (JSON..=) "DecryptStepDetails" Prelude.<$> decryptStepDetails,
                            (JSON..=) "DeleteStepDetails" Prelude.<$> deleteStepDetails,
                            (JSON..=) "TagStepDetails" Prelude.<$> tagStepDetails,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON WorkflowStepProperty where
  toJSON WorkflowStepProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CopyStepDetails" Prelude.<$> copyStepDetails,
               (JSON..=) "CustomStepDetails" Prelude.<$> customStepDetails,
               (JSON..=) "DecryptStepDetails" Prelude.<$> decryptStepDetails,
               (JSON..=) "DeleteStepDetails" Prelude.<$> deleteStepDetails,
               (JSON..=) "TagStepDetails" Prelude.<$> tagStepDetails,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "CopyStepDetails" WorkflowStepProperty where
  type PropertyType "CopyStepDetails" WorkflowStepProperty = CopyStepDetailsProperty
  set newValue WorkflowStepProperty {..}
    = WorkflowStepProperty
        {copyStepDetails = Prelude.pure newValue, ..}
instance Property "CustomStepDetails" WorkflowStepProperty where
  type PropertyType "CustomStepDetails" WorkflowStepProperty = CustomStepDetailsProperty
  set newValue WorkflowStepProperty {..}
    = WorkflowStepProperty
        {customStepDetails = Prelude.pure newValue, ..}
instance Property "DecryptStepDetails" WorkflowStepProperty where
  type PropertyType "DecryptStepDetails" WorkflowStepProperty = DecryptStepDetailsProperty
  set newValue WorkflowStepProperty {..}
    = WorkflowStepProperty
        {decryptStepDetails = Prelude.pure newValue, ..}
instance Property "DeleteStepDetails" WorkflowStepProperty where
  type PropertyType "DeleteStepDetails" WorkflowStepProperty = DeleteStepDetailsProperty
  set newValue WorkflowStepProperty {..}
    = WorkflowStepProperty
        {deleteStepDetails = Prelude.pure newValue, ..}
instance Property "TagStepDetails" WorkflowStepProperty where
  type PropertyType "TagStepDetails" WorkflowStepProperty = TagStepDetailsProperty
  set newValue WorkflowStepProperty {..}
    = WorkflowStepProperty {tagStepDetails = Prelude.pure newValue, ..}
instance Property "Type" WorkflowStepProperty where
  type PropertyType "Type" WorkflowStepProperty = Value Prelude.Text
  set newValue WorkflowStepProperty {..}
    = WorkflowStepProperty {type' = Prelude.pure newValue, ..}