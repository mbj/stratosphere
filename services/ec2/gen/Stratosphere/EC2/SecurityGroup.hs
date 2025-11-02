module Stratosphere.EC2.SecurityGroup (
        module Exports, SecurityGroup(..), mkSecurityGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SecurityGroup.EgressProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SecurityGroup.IngressProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SecurityGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroup.html>
    SecurityGroup {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroup.html#cfn-ec2-securitygroup-groupdescription>
                   groupDescription :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroup.html#cfn-ec2-securitygroup-groupname>
                   groupName :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroup.html#cfn-ec2-securitygroup-securitygroupegress>
                   securityGroupEgress :: (Prelude.Maybe [EgressProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroup.html#cfn-ec2-securitygroup-securitygroupingress>
                   securityGroupIngress :: (Prelude.Maybe [IngressProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroup.html#cfn-ec2-securitygroup-tags>
                   tags :: (Prelude.Maybe [Tag]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroup.html#cfn-ec2-securitygroup-vpcid>
                   vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityGroup :: Value Prelude.Text -> SecurityGroup
mkSecurityGroup groupDescription
  = SecurityGroup
      {haddock_workaround_ = (), groupDescription = groupDescription,
       groupName = Prelude.Nothing, securityGroupEgress = Prelude.Nothing,
       securityGroupIngress = Prelude.Nothing, tags = Prelude.Nothing,
       vpcId = Prelude.Nothing}
instance ToResourceProperties SecurityGroup where
  toResourceProperties SecurityGroup {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SecurityGroup", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GroupDescription" JSON..= groupDescription]
                           (Prelude.catMaybes
                              [(JSON..=) "GroupName" Prelude.<$> groupName,
                               (JSON..=) "SecurityGroupEgress" Prelude.<$> securityGroupEgress,
                               (JSON..=) "SecurityGroupIngress" Prelude.<$> securityGroupIngress,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcId" Prelude.<$> vpcId]))}
instance JSON.ToJSON SecurityGroup where
  toJSON SecurityGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GroupDescription" JSON..= groupDescription]
              (Prelude.catMaybes
                 [(JSON..=) "GroupName" Prelude.<$> groupName,
                  (JSON..=) "SecurityGroupEgress" Prelude.<$> securityGroupEgress,
                  (JSON..=) "SecurityGroupIngress" Prelude.<$> securityGroupIngress,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcId" Prelude.<$> vpcId])))
instance Property "GroupDescription" SecurityGroup where
  type PropertyType "GroupDescription" SecurityGroup = Value Prelude.Text
  set newValue SecurityGroup {..}
    = SecurityGroup {groupDescription = newValue, ..}
instance Property "GroupName" SecurityGroup where
  type PropertyType "GroupName" SecurityGroup = Value Prelude.Text
  set newValue SecurityGroup {..}
    = SecurityGroup {groupName = Prelude.pure newValue, ..}
instance Property "SecurityGroupEgress" SecurityGroup where
  type PropertyType "SecurityGroupEgress" SecurityGroup = [EgressProperty]
  set newValue SecurityGroup {..}
    = SecurityGroup {securityGroupEgress = Prelude.pure newValue, ..}
instance Property "SecurityGroupIngress" SecurityGroup where
  type PropertyType "SecurityGroupIngress" SecurityGroup = [IngressProperty]
  set newValue SecurityGroup {..}
    = SecurityGroup {securityGroupIngress = Prelude.pure newValue, ..}
instance Property "Tags" SecurityGroup where
  type PropertyType "Tags" SecurityGroup = [Tag]
  set newValue SecurityGroup {..}
    = SecurityGroup {tags = Prelude.pure newValue, ..}
instance Property "VpcId" SecurityGroup where
  type PropertyType "VpcId" SecurityGroup = Value Prelude.Text
  set newValue SecurityGroup {..}
    = SecurityGroup {vpcId = Prelude.pure newValue, ..}