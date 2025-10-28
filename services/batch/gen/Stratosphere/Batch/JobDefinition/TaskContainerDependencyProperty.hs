module Stratosphere.Batch.JobDefinition.TaskContainerDependencyProperty (
        TaskContainerDependencyProperty(..),
        mkTaskContainerDependencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskContainerDependencyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerdependency.html>
    TaskContainerDependencyProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerdependency.html#cfn-batch-jobdefinition-taskcontainerdependency-condition>
                                     condition :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerdependency.html#cfn-batch-jobdefinition-taskcontainerdependency-containername>
                                     containerName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskContainerDependencyProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TaskContainerDependencyProperty
mkTaskContainerDependencyProperty condition containerName
  = TaskContainerDependencyProperty
      {haddock_workaround_ = (), condition = condition,
       containerName = containerName}
instance ToResourceProperties TaskContainerDependencyProperty where
  toResourceProperties TaskContainerDependencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.TaskContainerDependency",
         supportsTags = Prelude.False,
         properties = ["Condition" JSON..= condition,
                       "ContainerName" JSON..= containerName]}
instance JSON.ToJSON TaskContainerDependencyProperty where
  toJSON TaskContainerDependencyProperty {..}
    = JSON.object
        ["Condition" JSON..= condition,
         "ContainerName" JSON..= containerName]
instance Property "Condition" TaskContainerDependencyProperty where
  type PropertyType "Condition" TaskContainerDependencyProperty = Value Prelude.Text
  set newValue TaskContainerDependencyProperty {..}
    = TaskContainerDependencyProperty {condition = newValue, ..}
instance Property "ContainerName" TaskContainerDependencyProperty where
  type PropertyType "ContainerName" TaskContainerDependencyProperty = Value Prelude.Text
  set newValue TaskContainerDependencyProperty {..}
    = TaskContainerDependencyProperty {containerName = newValue, ..}