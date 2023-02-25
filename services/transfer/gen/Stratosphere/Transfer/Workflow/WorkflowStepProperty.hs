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
  = WorkflowStepProperty {copyStepDetails :: (Prelude.Maybe CopyStepDetailsProperty),
                          customStepDetails :: (Prelude.Maybe CustomStepDetailsProperty),
                          decryptStepDetails :: (Prelude.Maybe DecryptStepDetailsProperty),
                          deleteStepDetails :: (Prelude.Maybe DeleteStepDetailsProperty),
                          tagStepDetails :: (Prelude.Maybe TagStepDetailsProperty),
                          type' :: (Prelude.Maybe (Value Prelude.Text))}
mkWorkflowStepProperty :: WorkflowStepProperty
mkWorkflowStepProperty
  = WorkflowStepProperty
      {copyStepDetails = Prelude.Nothing,
       customStepDetails = Prelude.Nothing,
       decryptStepDetails = Prelude.Nothing,
       deleteStepDetails = Prelude.Nothing,
       tagStepDetails = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties WorkflowStepProperty where
  toResourceProperties WorkflowStepProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.WorkflowStep",
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