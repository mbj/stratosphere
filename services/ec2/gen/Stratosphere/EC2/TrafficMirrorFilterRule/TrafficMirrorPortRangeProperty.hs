module Stratosphere.EC2.TrafficMirrorFilterRule.TrafficMirrorPortRangeProperty (
        TrafficMirrorPortRangeProperty(..),
        mkTrafficMirrorPortRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrafficMirrorPortRangeProperty
  = TrafficMirrorPortRangeProperty {fromPort :: (Value Prelude.Integer),
                                    toPort :: (Value Prelude.Integer)}
mkTrafficMirrorPortRangeProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> TrafficMirrorPortRangeProperty
mkTrafficMirrorPortRangeProperty fromPort toPort
  = TrafficMirrorPortRangeProperty
      {fromPort = fromPort, toPort = toPort}
instance ToResourceProperties TrafficMirrorPortRangeProperty where
  toResourceProperties TrafficMirrorPortRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TrafficMirrorFilterRule.TrafficMirrorPortRange",
         supportsTags = Prelude.False,
         properties = ["FromPort" JSON..= fromPort,
                       "ToPort" JSON..= toPort]}
instance JSON.ToJSON TrafficMirrorPortRangeProperty where
  toJSON TrafficMirrorPortRangeProperty {..}
    = JSON.object
        ["FromPort" JSON..= fromPort, "ToPort" JSON..= toPort]
instance Property "FromPort" TrafficMirrorPortRangeProperty where
  type PropertyType "FromPort" TrafficMirrorPortRangeProperty = Value Prelude.Integer
  set newValue TrafficMirrorPortRangeProperty {..}
    = TrafficMirrorPortRangeProperty {fromPort = newValue, ..}
instance Property "ToPort" TrafficMirrorPortRangeProperty where
  type PropertyType "ToPort" TrafficMirrorPortRangeProperty = Value Prelude.Integer
  set newValue TrafficMirrorPortRangeProperty {..}
    = TrafficMirrorPortRangeProperty {toPort = newValue, ..}