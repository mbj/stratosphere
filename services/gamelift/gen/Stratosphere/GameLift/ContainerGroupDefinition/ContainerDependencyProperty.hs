module Stratosphere.GameLift.ContainerGroupDefinition.ContainerDependencyProperty (
        ContainerDependencyProperty(..), mkContainerDependencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerDependencyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-containerdependency.html>
    ContainerDependencyProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-containerdependency.html#cfn-gamelift-containergroupdefinition-containerdependency-condition>
                                 condition :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-containerdependency.html#cfn-gamelift-containergroupdefinition-containerdependency-containername>
                                 containerName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerDependencyProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ContainerDependencyProperty
mkContainerDependencyProperty condition containerName
  = ContainerDependencyProperty
      {haddock_workaround_ = (), condition = condition,
       containerName = containerName}
instance ToResourceProperties ContainerDependencyProperty where
  toResourceProperties ContainerDependencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerGroupDefinition.ContainerDependency",
         supportsTags = Prelude.False,
         properties = ["Condition" JSON..= condition,
                       "ContainerName" JSON..= containerName]}
instance JSON.ToJSON ContainerDependencyProperty where
  toJSON ContainerDependencyProperty {..}
    = JSON.object
        ["Condition" JSON..= condition,
         "ContainerName" JSON..= containerName]
instance Property "Condition" ContainerDependencyProperty where
  type PropertyType "Condition" ContainerDependencyProperty = Value Prelude.Text
  set newValue ContainerDependencyProperty {..}
    = ContainerDependencyProperty {condition = newValue, ..}
instance Property "ContainerName" ContainerDependencyProperty where
  type PropertyType "ContainerName" ContainerDependencyProperty = Value Prelude.Text
  set newValue ContainerDependencyProperty {..}
    = ContainerDependencyProperty {containerName = newValue, ..}