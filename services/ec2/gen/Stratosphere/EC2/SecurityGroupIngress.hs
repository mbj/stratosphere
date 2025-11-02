module Stratosphere.EC2.SecurityGroupIngress (
        SecurityGroupIngress(..), mkSecurityGroupIngress
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityGroupIngress
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html>
    SecurityGroupIngress {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-cidrip>
                          cidrIp :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-cidripv6>
                          cidrIpv6 :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-description>
                          description :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-fromport>
                          fromPort :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-groupid>
                          groupId :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-groupname>
                          groupName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-ipprotocol>
                          ipProtocol :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-sourceprefixlistid>
                          sourcePrefixListId :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-sourcesecuritygroupid>
                          sourceSecurityGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-sourcesecuritygroupname>
                          sourceSecurityGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-sourcesecuritygroupownerid>
                          sourceSecurityGroupOwnerId :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-securitygroupingress.html#cfn-ec2-securitygroupingress-toport>
                          toPort :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityGroupIngress ::
  Value Prelude.Text -> SecurityGroupIngress
mkSecurityGroupIngress ipProtocol
  = SecurityGroupIngress
      {haddock_workaround_ = (), ipProtocol = ipProtocol,
       cidrIp = Prelude.Nothing, cidrIpv6 = Prelude.Nothing,
       description = Prelude.Nothing, fromPort = Prelude.Nothing,
       groupId = Prelude.Nothing, groupName = Prelude.Nothing,
       sourcePrefixListId = Prelude.Nothing,
       sourceSecurityGroupId = Prelude.Nothing,
       sourceSecurityGroupName = Prelude.Nothing,
       sourceSecurityGroupOwnerId = Prelude.Nothing,
       toPort = Prelude.Nothing}
instance ToResourceProperties SecurityGroupIngress where
  toResourceProperties SecurityGroupIngress {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SecurityGroupIngress",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpProtocol" JSON..= ipProtocol]
                           (Prelude.catMaybes
                              [(JSON..=) "CidrIp" Prelude.<$> cidrIp,
                               (JSON..=) "CidrIpv6" Prelude.<$> cidrIpv6,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FromPort" Prelude.<$> fromPort,
                               (JSON..=) "GroupId" Prelude.<$> groupId,
                               (JSON..=) "GroupName" Prelude.<$> groupName,
                               (JSON..=) "SourcePrefixListId" Prelude.<$> sourcePrefixListId,
                               (JSON..=) "SourceSecurityGroupId"
                                 Prelude.<$> sourceSecurityGroupId,
                               (JSON..=) "SourceSecurityGroupName"
                                 Prelude.<$> sourceSecurityGroupName,
                               (JSON..=) "SourceSecurityGroupOwnerId"
                                 Prelude.<$> sourceSecurityGroupOwnerId,
                               (JSON..=) "ToPort" Prelude.<$> toPort]))}
instance JSON.ToJSON SecurityGroupIngress where
  toJSON SecurityGroupIngress {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpProtocol" JSON..= ipProtocol]
              (Prelude.catMaybes
                 [(JSON..=) "CidrIp" Prelude.<$> cidrIp,
                  (JSON..=) "CidrIpv6" Prelude.<$> cidrIpv6,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FromPort" Prelude.<$> fromPort,
                  (JSON..=) "GroupId" Prelude.<$> groupId,
                  (JSON..=) "GroupName" Prelude.<$> groupName,
                  (JSON..=) "SourcePrefixListId" Prelude.<$> sourcePrefixListId,
                  (JSON..=) "SourceSecurityGroupId"
                    Prelude.<$> sourceSecurityGroupId,
                  (JSON..=) "SourceSecurityGroupName"
                    Prelude.<$> sourceSecurityGroupName,
                  (JSON..=) "SourceSecurityGroupOwnerId"
                    Prelude.<$> sourceSecurityGroupOwnerId,
                  (JSON..=) "ToPort" Prelude.<$> toPort])))
instance Property "CidrIp" SecurityGroupIngress where
  type PropertyType "CidrIp" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress {cidrIp = Prelude.pure newValue, ..}
instance Property "CidrIpv6" SecurityGroupIngress where
  type PropertyType "CidrIpv6" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress {cidrIpv6 = Prelude.pure newValue, ..}
instance Property "Description" SecurityGroupIngress where
  type PropertyType "Description" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress {description = Prelude.pure newValue, ..}
instance Property "FromPort" SecurityGroupIngress where
  type PropertyType "FromPort" SecurityGroupIngress = Value Prelude.Integer
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress {fromPort = Prelude.pure newValue, ..}
instance Property "GroupId" SecurityGroupIngress where
  type PropertyType "GroupId" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress {groupId = Prelude.pure newValue, ..}
instance Property "GroupName" SecurityGroupIngress where
  type PropertyType "GroupName" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress {groupName = Prelude.pure newValue, ..}
instance Property "IpProtocol" SecurityGroupIngress where
  type PropertyType "IpProtocol" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress {ipProtocol = newValue, ..}
instance Property "SourcePrefixListId" SecurityGroupIngress where
  type PropertyType "SourcePrefixListId" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress
        {sourcePrefixListId = Prelude.pure newValue, ..}
instance Property "SourceSecurityGroupId" SecurityGroupIngress where
  type PropertyType "SourceSecurityGroupId" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress
        {sourceSecurityGroupId = Prelude.pure newValue, ..}
instance Property "SourceSecurityGroupName" SecurityGroupIngress where
  type PropertyType "SourceSecurityGroupName" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress
        {sourceSecurityGroupName = Prelude.pure newValue, ..}
instance Property "SourceSecurityGroupOwnerId" SecurityGroupIngress where
  type PropertyType "SourceSecurityGroupOwnerId" SecurityGroupIngress = Value Prelude.Text
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress
        {sourceSecurityGroupOwnerId = Prelude.pure newValue, ..}
instance Property "ToPort" SecurityGroupIngress where
  type PropertyType "ToPort" SecurityGroupIngress = Value Prelude.Integer
  set newValue SecurityGroupIngress {..}
    = SecurityGroupIngress {toPort = Prelude.pure newValue, ..}