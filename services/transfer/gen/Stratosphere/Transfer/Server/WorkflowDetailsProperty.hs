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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-workflowdetails.html>
    WorkflowDetailsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-workflowdetails.html#cfn-transfer-server-workflowdetails-onpartialupload>
                             onPartialUpload :: (Prelude.Maybe [WorkflowDetailProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-workflowdetails.html#cfn-transfer-server-workflowdetails-onupload>
                             onUpload :: (Prelude.Maybe [WorkflowDetailProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflowDetailsProperty :: WorkflowDetailsProperty
mkWorkflowDetailsProperty
  = WorkflowDetailsProperty
      {haddock_workaround_ = (), onPartialUpload = Prelude.Nothing,
       onUpload = Prelude.Nothing}
instance ToResourceProperties WorkflowDetailsProperty where
  toResourceProperties WorkflowDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Server.WorkflowDetails",
         supportsTags = Prelude.False,
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