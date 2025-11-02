module Stratosphere.GameLift.ContainerFleet.IpPermissionProperty (
        IpPermissionProperty(..), mkIpPermissionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpPermissionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-ippermission.html>
    IpPermissionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-ippermission.html#cfn-gamelift-containerfleet-ippermission-fromport>
                          fromPort :: (Value Prelude.Integer),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-ippermission.html#cfn-gamelift-containerfleet-ippermission-iprange>
                          ipRange :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-ippermission.html#cfn-gamelift-containerfleet-ippermission-protocol>
                          protocol :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-ippermission.html#cfn-gamelift-containerfleet-ippermission-toport>
                          toPort :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpPermissionProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Integer -> IpPermissionProperty
mkIpPermissionProperty fromPort ipRange protocol toPort
  = IpPermissionProperty
      {haddock_workaround_ = (), fromPort = fromPort, ipRange = ipRange,
       protocol = protocol, toPort = toPort}
instance ToResourceProperties IpPermissionProperty where
  toResourceProperties IpPermissionProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerFleet.IpPermission",
         supportsTags = Prelude.False,
         properties = ["FromPort" JSON..= fromPort,
                       "IpRange" JSON..= ipRange, "Protocol" JSON..= protocol,
                       "ToPort" JSON..= toPort]}
instance JSON.ToJSON IpPermissionProperty where
  toJSON IpPermissionProperty {..}
    = JSON.object
        ["FromPort" JSON..= fromPort, "IpRange" JSON..= ipRange,
         "Protocol" JSON..= protocol, "ToPort" JSON..= toPort]
instance Property "FromPort" IpPermissionProperty where
  type PropertyType "FromPort" IpPermissionProperty = Value Prelude.Integer
  set newValue IpPermissionProperty {..}
    = IpPermissionProperty {fromPort = newValue, ..}
instance Property "IpRange" IpPermissionProperty where
  type PropertyType "IpRange" IpPermissionProperty = Value Prelude.Text
  set newValue IpPermissionProperty {..}
    = IpPermissionProperty {ipRange = newValue, ..}
instance Property "Protocol" IpPermissionProperty where
  type PropertyType "Protocol" IpPermissionProperty = Value Prelude.Text
  set newValue IpPermissionProperty {..}
    = IpPermissionProperty {protocol = newValue, ..}
instance Property "ToPort" IpPermissionProperty where
  type PropertyType "ToPort" IpPermissionProperty = Value Prelude.Integer
  set newValue IpPermissionProperty {..}
    = IpPermissionProperty {toPort = newValue, ..}