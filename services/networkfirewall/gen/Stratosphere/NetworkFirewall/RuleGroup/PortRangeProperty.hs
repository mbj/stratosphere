module Stratosphere.NetworkFirewall.RuleGroup.PortRangeProperty (
        PortRangeProperty(..), mkPortRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortRangeProperty
  = PortRangeProperty {fromPort :: (Value Prelude.Integer),
                       toPort :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortRangeProperty ::
  Value Prelude.Integer -> Value Prelude.Integer -> PortRangeProperty
mkPortRangeProperty fromPort toPort
  = PortRangeProperty {fromPort = fromPort, toPort = toPort}
instance ToResourceProperties PortRangeProperty where
  toResourceProperties PortRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.PortRange",
         supportsTags = Prelude.False,
         properties = ["FromPort" JSON..= fromPort,
                       "ToPort" JSON..= toPort]}
instance JSON.ToJSON PortRangeProperty where
  toJSON PortRangeProperty {..}
    = JSON.object
        ["FromPort" JSON..= fromPort, "ToPort" JSON..= toPort]
instance Property "FromPort" PortRangeProperty where
  type PropertyType "FromPort" PortRangeProperty = Value Prelude.Integer
  set newValue PortRangeProperty {..}
    = PortRangeProperty {fromPort = newValue, ..}
instance Property "ToPort" PortRangeProperty where
  type PropertyType "ToPort" PortRangeProperty = Value Prelude.Integer
  set newValue PortRangeProperty {..}
    = PortRangeProperty {toPort = newValue, ..}