module Stratosphere.Glue.Workflow (
        Workflow(..), mkWorkflow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Workflow
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html>
    Workflow {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-defaultrunproperties>
              defaultRunProperties :: (Prelude.Maybe JSON.Object),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-maxconcurrentruns>
              maxConcurrentRuns :: (Prelude.Maybe (Value Prelude.Integer)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-name>
              name :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-tags>
              tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflow :: Workflow
mkWorkflow
  = Workflow
      {haddock_workaround_ = (), defaultRunProperties = Prelude.Nothing,
       description = Prelude.Nothing, maxConcurrentRuns = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Workflow where
  toResourceProperties Workflow {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Workflow", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultRunProperties" Prelude.<$> defaultRunProperties,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "MaxConcurrentRuns" Prelude.<$> maxConcurrentRuns,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Workflow where
  toJSON Workflow {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultRunProperties" Prelude.<$> defaultRunProperties,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "MaxConcurrentRuns" Prelude.<$> maxConcurrentRuns,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DefaultRunProperties" Workflow where
  type PropertyType "DefaultRunProperties" Workflow = JSON.Object
  set newValue Workflow {..}
    = Workflow {defaultRunProperties = Prelude.pure newValue, ..}
instance Property "Description" Workflow where
  type PropertyType "Description" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {description = Prelude.pure newValue, ..}
instance Property "MaxConcurrentRuns" Workflow where
  type PropertyType "MaxConcurrentRuns" Workflow = Value Prelude.Integer
  set newValue Workflow {..}
    = Workflow {maxConcurrentRuns = Prelude.pure newValue, ..}
instance Property "Name" Workflow where
  type PropertyType "Name" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {name = Prelude.pure newValue, ..}
instance Property "Tags" Workflow where
  type PropertyType "Tags" Workflow = JSON.Object
  set newValue Workflow {..}
    = Workflow {tags = Prelude.pure newValue, ..}