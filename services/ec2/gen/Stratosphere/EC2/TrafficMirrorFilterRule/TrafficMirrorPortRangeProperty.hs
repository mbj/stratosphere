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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html>
    TrafficMirrorPortRangeProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrange-fromport>
                                    fromPort :: (Value Prelude.Integer),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrange-toport>
                                    toPort :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrafficMirrorPortRangeProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> TrafficMirrorPortRangeProperty
mkTrafficMirrorPortRangeProperty fromPort toPort
  = TrafficMirrorPortRangeProperty
      {haddock_workaround_ = (), fromPort = fromPort, toPort = toPort}
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