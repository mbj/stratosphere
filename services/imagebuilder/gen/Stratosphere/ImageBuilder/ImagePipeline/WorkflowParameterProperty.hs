module Stratosphere.ImageBuilder.ImagePipeline.WorkflowParameterProperty (
        WorkflowParameterProperty(..), mkWorkflowParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkflowParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-workflowparameter.html>
    WorkflowParameterProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-workflowparameter.html#cfn-imagebuilder-imagepipeline-workflowparameter-name>
                               name :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-workflowparameter.html#cfn-imagebuilder-imagepipeline-workflowparameter-value>
                               value :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflowParameterProperty :: WorkflowParameterProperty
mkWorkflowParameterProperty
  = WorkflowParameterProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties WorkflowParameterProperty where
  toResourceProperties WorkflowParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImagePipeline.WorkflowParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON WorkflowParameterProperty where
  toJSON WorkflowParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" WorkflowParameterProperty where
  type PropertyType "Name" WorkflowParameterProperty = Value Prelude.Text
  set newValue WorkflowParameterProperty {..}
    = WorkflowParameterProperty {name = Prelude.pure newValue, ..}
instance Property "Value" WorkflowParameterProperty where
  type PropertyType "Value" WorkflowParameterProperty = ValueList Prelude.Text
  set newValue WorkflowParameterProperty {..}
    = WorkflowParameterProperty {value = Prelude.pure newValue, ..}