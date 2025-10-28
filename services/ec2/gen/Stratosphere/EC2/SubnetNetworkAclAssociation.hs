module Stratosphere.EC2.SubnetNetworkAclAssociation (
        SubnetNetworkAclAssociation(..), mkSubnetNetworkAclAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubnetNetworkAclAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetnetworkaclassociation.html>
    SubnetNetworkAclAssociation {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetnetworkaclassociation.html#cfn-ec2-subnetnetworkaclassociation-networkaclid>
                                 networkAclId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetnetworkaclassociation.html#cfn-ec2-subnetnetworkaclassociation-subnetid>
                                 subnetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubnetNetworkAclAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> SubnetNetworkAclAssociation
mkSubnetNetworkAclAssociation networkAclId subnetId
  = SubnetNetworkAclAssociation
      {haddock_workaround_ = (), networkAclId = networkAclId,
       subnetId = subnetId}
instance ToResourceProperties SubnetNetworkAclAssociation where
  toResourceProperties SubnetNetworkAclAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SubnetNetworkAclAssociation",
         supportsTags = Prelude.False,
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