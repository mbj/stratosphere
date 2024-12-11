module Stratosphere.GameLift.ContainerFleet.ConnectionPortRangeProperty (
        ConnectionPortRangeProperty(..), mkConnectionPortRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionPortRangeProperty
  = ConnectionPortRangeProperty {fromPort :: (Value Prelude.Integer),
                                 toPort :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionPortRangeProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> ConnectionPortRangeProperty
mkConnectionPortRangeProperty fromPort toPort
  = ConnectionPortRangeProperty
      {fromPort = fromPort, toPort = toPort}
instance ToResourceProperties ConnectionPortRangeProperty where
  toResourceProperties ConnectionPortRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerFleet.ConnectionPortRange",
         supportsTags = Prelude.False,
         properties = ["FromPort" JSON..= fromPort,
                       "ToPort" JSON..= toPort]}
instance JSON.ToJSON ConnectionPortRangeProperty where
  toJSON ConnectionPortRangeProperty {..}
    = JSON.object
        ["FromPort" JSON..= fromPort, "ToPort" JSON..= toPort]
instance Property "FromPort" ConnectionPortRangeProperty where
  type PropertyType "FromPort" ConnectionPortRangeProperty = Value Prelude.Integer
  set newValue ConnectionPortRangeProperty {..}
    = ConnectionPortRangeProperty {fromPort = newValue, ..}
instance Property "ToPort" ConnectionPortRangeProperty where
  type PropertyType "ToPort" ConnectionPortRangeProperty = Value Prelude.Integer
  set newValue ConnectionPortRangeProperty {..}
    = ConnectionPortRangeProperty {toPort = newValue, ..}