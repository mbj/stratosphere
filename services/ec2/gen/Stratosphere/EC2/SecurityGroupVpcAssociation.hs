module Stratosphere.EC2.SecurityGroupVpcAssociation (
        SecurityGroupVpcAssociation(..), mkSecurityGroupVpcAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityGroupVpcAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupvpcassociation.html>
    SecurityGroupVpcAssociation {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupvpcassociation.html#cfn-ec2-securitygroupvpcassociation-groupid>
                                 groupId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupvpcassociation.html#cfn-ec2-securitygroupvpcassociation-vpcid>
                                 vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityGroupVpcAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> SecurityGroupVpcAssociation
mkSecurityGroupVpcAssociation groupId vpcId
  = SecurityGroupVpcAssociation
      {haddock_workaround_ = (), groupId = groupId, vpcId = vpcId}
instance ToResourceProperties SecurityGroupVpcAssociation where
  toResourceProperties SecurityGroupVpcAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SecurityGroupVpcAssociation",
         supportsTags = Prelude.False,
         properties = ["GroupId" JSON..= groupId, "VpcId" JSON..= vpcId]}
instance JSON.ToJSON SecurityGroupVpcAssociation where
  toJSON SecurityGroupVpcAssociation {..}
    = JSON.object ["GroupId" JSON..= groupId, "VpcId" JSON..= vpcId]
instance Property "GroupId" SecurityGroupVpcAssociation where
  type PropertyType "GroupId" SecurityGroupVpcAssociation = Value Prelude.Text
  set newValue SecurityGroupVpcAssociation {..}
    = SecurityGroupVpcAssociation {groupId = newValue, ..}
instance Property "VpcId" SecurityGroupVpcAssociation where
  type PropertyType "VpcId" SecurityGroupVpcAssociation = Value Prelude.Text
  set newValue SecurityGroupVpcAssociation {..}
    = SecurityGroupVpcAssociation {vpcId = newValue, ..}