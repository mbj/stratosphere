module Stratosphere.Omics.WorkflowVersion.WorkflowParameterProperty (
        WorkflowParameterProperty(..), mkWorkflowParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkflowParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-workflowparameter.html>
    WorkflowParameterProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-workflowparameter.html#cfn-omics-workflowversion-workflowparameter-description>
                               description :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-workflowparameter.html#cfn-omics-workflowversion-workflowparameter-optional>
                               optional :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflowParameterProperty :: WorkflowParameterProperty
mkWorkflowParameterProperty
  = WorkflowParameterProperty
      {haddock_workaround_ = (), description = Prelude.Nothing,
       optional = Prelude.Nothing}
instance ToResourceProperties WorkflowParameterProperty where
  toResourceProperties WorkflowParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::WorkflowVersion.WorkflowParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Optional" Prelude.<$> optional])}
instance JSON.ToJSON WorkflowParameterProperty where
  toJSON WorkflowParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Optional" Prelude.<$> optional]))
instance Property "Description" WorkflowParameterProperty where
  type PropertyType "Description" WorkflowParameterProperty = Value Prelude.Text
  set newValue WorkflowParameterProperty {..}
    = WorkflowParameterProperty
        {description = Prelude.pure newValue, ..}
instance Property "Optional" WorkflowParameterProperty where
  type PropertyType "Optional" WorkflowParameterProperty = Value Prelude.Bool
  set newValue WorkflowParameterProperty {..}
    = WorkflowParameterProperty {optional = Prelude.pure newValue, ..}