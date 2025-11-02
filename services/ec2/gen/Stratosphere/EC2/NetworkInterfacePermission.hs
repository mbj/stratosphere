module Stratosphere.EC2.NetworkInterfacePermission (
        NetworkInterfacePermission(..), mkNetworkInterfacePermission
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfacePermission
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html>
    NetworkInterfacePermission {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-awsaccountid>
                                awsAccountId :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-networkinterfaceid>
                                networkInterfaceId :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-permission>
                                permission :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterfacePermission ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> NetworkInterfacePermission
mkNetworkInterfacePermission
  awsAccountId
  networkInterfaceId
  permission
  = NetworkInterfacePermission
      {haddock_workaround_ = (), awsAccountId = awsAccountId,
       networkInterfaceId = networkInterfaceId, permission = permission}
instance ToResourceProperties NetworkInterfacePermission where
  toResourceProperties NetworkInterfacePermission {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInterfacePermission",
         supportsTags = Prelude.False,
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