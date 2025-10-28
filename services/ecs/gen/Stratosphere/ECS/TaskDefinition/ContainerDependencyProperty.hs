module Stratosphere.ECS.TaskDefinition.ContainerDependencyProperty (
        ContainerDependencyProperty(..), mkContainerDependencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerDependencyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html>
    ContainerDependencyProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-condition>
                                 condition :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-containername>
                                 containerName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerDependencyProperty :: ContainerDependencyProperty
mkContainerDependencyProperty
  = ContainerDependencyProperty
      {haddock_workaround_ = (), condition = Prelude.Nothing,
       containerName = Prelude.Nothing}
instance ToResourceProperties ContainerDependencyProperty where
  toResourceProperties ContainerDependencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.ContainerDependency",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Condition" Prelude.<$> condition,
                            (JSON..=) "ContainerName" Prelude.<$> containerName])}
instance JSON.ToJSON ContainerDependencyProperty where
  toJSON ContainerDependencyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Condition" Prelude.<$> condition,
               (JSON..=) "ContainerName" Prelude.<$> containerName]))
instance Property "Condition" ContainerDependencyProperty where
  type PropertyType "Condition" ContainerDependencyProperty = Value Prelude.Text
  set newValue ContainerDependencyProperty {..}
    = ContainerDependencyProperty
        {condition = Prelude.pure newValue, ..}
instance Property "ContainerName" ContainerDependencyProperty where
  type PropertyType "ContainerName" ContainerDependencyProperty = Value Prelude.Text
  set newValue ContainerDependencyProperty {..}
    = ContainerDependencyProperty
        {containerName = Prelude.pure newValue, ..}