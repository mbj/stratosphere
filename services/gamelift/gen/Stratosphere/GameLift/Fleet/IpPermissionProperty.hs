module Stratosphere.GameLift.Fleet.IpPermissionProperty (
        IpPermissionProperty(..), mkIpPermissionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpPermissionProperty
  = IpPermissionProperty {fromPort :: (Value Prelude.Integer),
                          ipRange :: (Value Prelude.Text),
                          protocol :: (Value Prelude.Text),
                          toPort :: (Value Prelude.Integer)}
mkIpPermissionProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Integer -> IpPermissionProperty
mkIpPermissionProperty fromPort ipRange protocol toPort
  = IpPermissionProperty
      {fromPort = fromPort, ipRange = ipRange, protocol = protocol,
       toPort = toPort}
instance ToResourceProperties IpPermissionProperty where
  toResourceProperties IpPermissionProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Fleet.IpPermission",
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