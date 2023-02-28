module Stratosphere.EC2.SubnetCidrBlock (
        SubnetCidrBlock(..), mkSubnetCidrBlock
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubnetCidrBlock
  = SubnetCidrBlock {ipv6CidrBlock :: (Value Prelude.Text),
                     subnetId :: (Value Prelude.Text)}
mkSubnetCidrBlock ::
  Value Prelude.Text -> Value Prelude.Text -> SubnetCidrBlock
mkSubnetCidrBlock ipv6CidrBlock subnetId
  = SubnetCidrBlock
      {ipv6CidrBlock = ipv6CidrBlock, subnetId = subnetId}
instance ToResourceProperties SubnetCidrBlock where
  toResourceProperties SubnetCidrBlock {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SubnetCidrBlock",
         supportsTags = Prelude.False,
         properties = ["Ipv6CidrBlock" JSON..= ipv6CidrBlock,
                       "SubnetId" JSON..= subnetId]}
instance JSON.ToJSON SubnetCidrBlock where
  toJSON SubnetCidrBlock {..}
    = JSON.object
        ["Ipv6CidrBlock" JSON..= ipv6CidrBlock,
         "SubnetId" JSON..= subnetId]
instance Property "Ipv6CidrBlock" SubnetCidrBlock where
  type PropertyType "Ipv6CidrBlock" SubnetCidrBlock = Value Prelude.Text
  set newValue SubnetCidrBlock {..}
    = SubnetCidrBlock {ipv6CidrBlock = newValue, ..}
instance Property "SubnetId" SubnetCidrBlock where
  type PropertyType "SubnetId" SubnetCidrBlock = Value Prelude.Text
  set newValue SubnetCidrBlock {..}
    = SubnetCidrBlock {subnetId = newValue, ..}