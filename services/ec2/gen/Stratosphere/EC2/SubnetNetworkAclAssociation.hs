module Stratosphere.EC2.SubnetNetworkAclAssociation (
        SubnetNetworkAclAssociation(..), mkSubnetNetworkAclAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubnetNetworkAclAssociation
  = SubnetNetworkAclAssociation {networkAclId :: (Value Prelude.Text),
                                 subnetId :: (Value Prelude.Text)}
mkSubnetNetworkAclAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> SubnetNetworkAclAssociation
mkSubnetNetworkAclAssociation networkAclId subnetId
  = SubnetNetworkAclAssociation
      {networkAclId = networkAclId, subnetId = subnetId}
instance ToResourceProperties SubnetNetworkAclAssociation where
  toResourceProperties SubnetNetworkAclAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SubnetNetworkAclAssociation",
         properties = ["NetworkAclId" JSON..= networkAclId,
                       "SubnetId" JSON..= subnetId]}
instance JSON.ToJSON SubnetNetworkAclAssociation where
  toJSON SubnetNetworkAclAssociation {..}
    = JSON.object
        ["NetworkAclId" JSON..= networkAclId, "SubnetId" JSON..= subnetId]
instance Property "NetworkAclId" SubnetNetworkAclAssociation where
  type PropertyType "NetworkAclId" SubnetNetworkAclAssociation = Value Prelude.Text
  set newValue SubnetNetworkAclAssociation {..}
    = SubnetNetworkAclAssociation {networkAclId = newValue, ..}
instance Property "SubnetId" SubnetNetworkAclAssociation where
  type PropertyType "SubnetId" SubnetNetworkAclAssociation = Value Prelude.Text
  set newValue SubnetNetworkAclAssociation {..}
    = SubnetNetworkAclAssociation {subnetId = newValue, ..}