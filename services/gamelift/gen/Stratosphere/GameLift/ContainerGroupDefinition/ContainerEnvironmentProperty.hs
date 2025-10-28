module Stratosphere.GameLift.ContainerGroupDefinition.ContainerEnvironmentProperty (
        ContainerEnvironmentProperty(..), mkContainerEnvironmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerEnvironmentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-containerenvironment.html>
    ContainerEnvironmentProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-containerenvironment.html#cfn-gamelift-containergroupdefinition-containerenvironment-name>
                                  name :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-containerenvironment.html#cfn-gamelift-containergroupdefinition-containerenvironment-value>
                                  value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerEnvironmentProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ContainerEnvironmentProperty
mkContainerEnvironmentProperty name value
  = ContainerEnvironmentProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties ContainerEnvironmentProperty where
  toResourceProperties ContainerEnvironmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerGroupDefinition.ContainerEnvironment",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON ContainerEnvironmentProperty where
  toJSON ContainerEnvironmentProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" ContainerEnvironmentProperty where
  type PropertyType "Name" ContainerEnvironmentProperty = Value Prelude.Text
  set newValue ContainerEnvironmentProperty {..}
    = ContainerEnvironmentProperty {name = newValue, ..}
instance Property "Value" ContainerEnvironmentProperty where
  type PropertyType "Value" ContainerEnvironmentProperty = Value Prelude.Text
  set newValue ContainerEnvironmentProperty {..}
    = ContainerEnvironmentProperty {value = newValue, ..}