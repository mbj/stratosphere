module Stratosphere.GameLift.ContainerGroupDefinition.ContainerEnvironmentProperty (
        ContainerEnvironmentProperty(..), mkContainerEnvironmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerEnvironmentProperty
  = ContainerEnvironmentProperty {name :: (Value Prelude.Text),
                                  value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerEnvironmentProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ContainerEnvironmentProperty
mkContainerEnvironmentProperty name value
  = ContainerEnvironmentProperty {name = name, value = value}
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