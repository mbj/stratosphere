module Stratosphere.EC2.NetworkInterfacePermission (
        NetworkInterfacePermission(..), mkNetworkInterfacePermission
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfacePermission
  = NetworkInterfacePermission {awsAccountId :: (Value Prelude.Text),
                                networkInterfaceId :: (Value Prelude.Text),
                                permission :: (Value Prelude.Text)}
mkNetworkInterfacePermission ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> NetworkInterfacePermission
mkNetworkInterfacePermission
  awsAccountId
  networkInterfaceId
  permission
  = NetworkInterfacePermission
      {awsAccountId = awsAccountId,
       networkInterfaceId = networkInterfaceId, permission = permission}
instance ToResourceProperties NetworkInterfacePermission where
  toResourceProperties NetworkInterfacePermission {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInterfacePermission",
         properties = ["AwsAccountId" JSON..= awsAccountId,
                       "NetworkInterfaceId" JSON..= networkInterfaceId,
                       "Permission" JSON..= permission]}
instance JSON.ToJSON NetworkInterfacePermission where
  toJSON NetworkInterfacePermission {..}
    = JSON.object
        ["AwsAccountId" JSON..= awsAccountId,
         "NetworkInterfaceId" JSON..= networkInterfaceId,
         "Permission" JSON..= permission]
instance Property "AwsAccountId" NetworkInterfacePermission where
  type PropertyType "AwsAccountId" NetworkInterfacePermission = Value Prelude.Text
  set newValue NetworkInterfacePermission {..}
    = NetworkInterfacePermission {awsAccountId = newValue, ..}
instance Property "NetworkInterfaceId" NetworkInterfacePermission where
  type PropertyType "NetworkInterfaceId" NetworkInterfacePermission = Value Prelude.Text
  set newValue NetworkInterfacePermission {..}
    = NetworkInterfacePermission {networkInterfaceId = newValue, ..}
instance Property "Permission" NetworkInterfacePermission where
  type PropertyType "Permission" NetworkInterfacePermission = Value Prelude.Text
  set newValue NetworkInterfacePermission {..}
    = NetworkInterfacePermission {permission = newValue, ..}