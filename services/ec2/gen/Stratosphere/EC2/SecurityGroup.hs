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
  = SecurityGroup {groupDescription :: (Value Prelude.Text),
                   groupName :: (Prelude.Maybe (Value Prelude.Text)),
                   securityGroupEgress :: (Prelude.Maybe [EgressProperty]),
                   securityGroupIngress :: (Prelude.Maybe [IngressProperty]),
                   tags :: (Prelude.Maybe [Tag]),
                   vpcId :: (Prelude.Maybe (Value Prelude.Text))}
mkSecurityGroup :: Value Prelude.Text -> SecurityGroup
mkSecurityGroup groupDescription
  = SecurityGroup
      {groupDescription = groupDescription, groupName = Prelude.Nothing,
       securityGroupEgress = Prelude.Nothing,
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