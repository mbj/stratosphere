module Stratosphere.GameLift.ContainerGroupDefinition.ContainerPortRangeProperty (
        ContainerPortRangeProperty(..), mkContainerPortRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerPortRangeProperty
  = ContainerPortRangeProperty {fromPort :: (Value Prelude.Integer),
                                protocol :: (Value Prelude.Text),
                                toPort :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerPortRangeProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> Value Prelude.Integer -> ContainerPortRangeProperty
mkContainerPortRangeProperty fromPort protocol toPort
  = ContainerPortRangeProperty
      {fromPort = fromPort, protocol = protocol, toPort = toPort}
instance ToResourceProperties ContainerPortRangeProperty where
  toResourceProperties ContainerPortRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerGroupDefinition.ContainerPortRange",
         supportsTags = Prelude.False,
         properties = ["FromPort" JSON..= fromPort,
                       "Protocol" JSON..= protocol, "ToPort" JSON..= toPort]}
instance JSON.ToJSON ContainerPortRangeProperty where
  toJSON ContainerPortRangeProperty {..}
    = JSON.object
        ["FromPort" JSON..= fromPort, "Protocol" JSON..= protocol,
         "ToPort" JSON..= toPort]
instance Property "FromPort" ContainerPortRangeProperty where
  type PropertyType "FromPort" ContainerPortRangeProperty = Value Prelude.Integer
  set newValue ContainerPortRangeProperty {..}
    = ContainerPortRangeProperty {fromPort = newValue, ..}
instance Property "Protocol" ContainerPortRangeProperty where
  type PropertyType "Protocol" ContainerPortRangeProperty = Value Prelude.Text
  set newValue ContainerPortRangeProperty {..}
    = ContainerPortRangeProperty {protocol = newValue, ..}
instance Property "ToPort" ContainerPortRangeProperty where
  type PropertyType "ToPort" ContainerPortRangeProperty = Value Prelude.Integer
  set newValue ContainerPortRangeProperty {..}
    = ContainerPortRangeProperty {toPort = newValue, ..}