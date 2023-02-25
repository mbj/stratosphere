module Stratosphere.Transfer.Server.WorkflowDetailsProperty (
        module Exports, WorkflowDetailsProperty(..),
        mkWorkflowDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Server.WorkflowDetailProperty as Exports
import Stratosphere.ResourceProperties
data WorkflowDetailsProperty
  = WorkflowDetailsProperty {onPartialUpload :: (Prelude.Maybe [WorkflowDetailProperty]),
                             onUpload :: (Prelude.Maybe [WorkflowDetailProperty])}
mkWorkflowDetailsProperty :: WorkflowDetailsProperty
mkWorkflowDetailsProperty
  = WorkflowDetailsProperty
      {onPartialUpload = Prelude.Nothing, onUpload = Prelude.Nothing}
instance ToResourceProperties WorkflowDetailsProperty where
  toResourceProperties WorkflowDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Server.WorkflowDetails",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OnPartialUpload" Prelude.<$> onPartialUpload,
                            (JSON..=) "OnUpload" Prelude.<$> onUpload])}
instance JSON.ToJSON WorkflowDetailsProperty where
  toJSON WorkflowDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OnPartialUpload" Prelude.<$> onPartialUpload,
               (JSON..=) "OnUpload" Prelude.<$> onUpload]))
instance Property "OnPartialUpload" WorkflowDetailsProperty where
  type PropertyType "OnPartialUpload" WorkflowDetailsProperty = [WorkflowDetailProperty]
  set newValue WorkflowDetailsProperty {..}
    = WorkflowDetailsProperty
        {onPartialUpload = Prelude.pure newValue, ..}
instance Property "OnUpload" WorkflowDetailsProperty where
  type PropertyType "OnUpload" WorkflowDetailsProperty = [WorkflowDetailProperty]
  set newValue WorkflowDetailsProperty {..}
    = WorkflowDetailsProperty {onUpload = Prelude.pure newValue, ..}