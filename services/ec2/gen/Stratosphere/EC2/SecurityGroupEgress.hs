module Stratosphere.EC2.SecurityGroupEgress (
        SecurityGroupEgress(..), mkSecurityGroupEgress
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityGroupEgress
  = SecurityGroupEgress {cidrIp :: (Prelude.Maybe (Value Prelude.Text)),
                         cidrIpv6 :: (Prelude.Maybe (Value Prelude.Text)),
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         destinationPrefixListId :: (Prelude.Maybe (Value Prelude.Text)),
                         destinationSecurityGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                         fromPort :: (Prelude.Maybe (Value Prelude.Integer)),
                         groupId :: (Value Prelude.Text),
                         ipProtocol :: (Value Prelude.Text),
                         toPort :: (Prelude.Maybe (Value Prelude.Integer))}
mkSecurityGroupEgress ::
  Value Prelude.Text -> Value Prelude.Text -> SecurityGroupEgress
mkSecurityGroupEgress groupId ipProtocol
  = SecurityGroupEgress
      {groupId = groupId, ipProtocol = ipProtocol,
       cidrIp = Prelude.Nothing, cidrIpv6 = Prelude.Nothing,
       description = Prelude.Nothing,
       destinationPrefixListId = Prelude.Nothing,
       destinationSecurityGroupId = Prelude.Nothing,
       fromPort = Prelude.Nothing, toPort = Prelude.Nothing}
instance ToResourceProperties SecurityGroupEgress where
  toResourceProperties SecurityGroupEgress {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SecurityGroupEgress",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GroupId" JSON..= groupId, "IpProtocol" JSON..= ipProtocol]
                           (Prelude.catMaybes
                              [(JSON..=) "CidrIp" Prelude.<$> cidrIp,
                               (JSON..=) "CidrIpv6" Prelude.<$> cidrIpv6,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DestinationPrefixListId"
                                 Prelude.<$> destinationPrefixListId,
                               (JSON..=) "DestinationSecurityGroupId"
                                 Prelude.<$> destinationSecurityGroupId,
                               (JSON..=) "FromPort" Prelude.<$> fromPort,
                               (JSON..=) "ToPort" Prelude.<$> toPort]))}
instance JSON.ToJSON SecurityGroupEgress where
  toJSON SecurityGroupEgress {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GroupId" JSON..= groupId, "IpProtocol" JSON..= ipProtocol]
              (Prelude.catMaybes
                 [(JSON..=) "CidrIp" Prelude.<$> cidrIp,
                  (JSON..=) "CidrIpv6" Prelude.<$> cidrIpv6,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DestinationPrefixListId"
                    Prelude.<$> destinationPrefixListId,
                  (JSON..=) "DestinationSecurityGroupId"
                    Prelude.<$> destinationSecurityGroupId,
                  (JSON..=) "FromPort" Prelude.<$> fromPort,
                  (JSON..=) "ToPort" Prelude.<$> toPort])))
instance Property "CidrIp" SecurityGroupEgress where
  type PropertyType "CidrIp" SecurityGroupEgress = Value Prelude.Text
  set newValue SecurityGroupEgress {..}
    = SecurityGroupEgress {cidrIp = Prelude.pure newValue, ..}
instance Property "CidrIpv6" SecurityGroupEgress where
  type PropertyType "CidrIpv6" SecurityGroupEgress = Value Prelude.Text
  set newValue SecurityGroupEgress {..}
    = SecurityGroupEgress {cidrIpv6 = Prelude.pure newValue, ..}
instance Property "Description" SecurityGroupEgress where
  type PropertyType "Description" SecurityGroupEgress = Value Prelude.Text
  set newValue SecurityGroupEgress {..}
    = SecurityGroupEgress {description = Prelude.pure newValue, ..}
instance Property "DestinationPrefixListId" SecurityGroupEgress where
  type PropertyType "DestinationPrefixListId" SecurityGroupEgress = Value Prelude.Text
  set newValue SecurityGroupEgress {..}
    = SecurityGroupEgress
        {destinationPrefixListId = Prelude.pure newValue, ..}
instance Property "DestinationSecurityGroupId" SecurityGroupEgress where
  type PropertyType "DestinationSecurityGroupId" SecurityGroupEgress = Value Prelude.Text
  set newValue SecurityGroupEgress {..}
    = SecurityGroupEgress
        {destinationSecurityGroupId = Prelude.pure newValue, ..}
instance Property "FromPort" SecurityGroupEgress where
  type PropertyType "FromPort" SecurityGroupEgress = Value Prelude.Integer
  set newValue SecurityGroupEgress {..}
    = SecurityGroupEgress {fromPort = Prelude.pure newValue, ..}
instance Property "GroupId" SecurityGroupEgress where
  type PropertyType "GroupId" SecurityGroupEgress = Value Prelude.Text
  set newValue SecurityGroupEgress {..}
    = SecurityGroupEgress {groupId = newValue, ..}
instance Property "IpProtocol" SecurityGroupEgress where
  type PropertyType "IpProtocol" SecurityGroupEgress = Value Prelude.Text
  set newValue SecurityGroupEgress {..}
    = SecurityGroupEgress {ipProtocol = newValue, ..}
instance Property "ToPort" SecurityGroupEgress where
  type PropertyType "ToPort" SecurityGroupEgress = Value Prelude.Integer
  set newValue SecurityGroupEgress {..}
    = SecurityGroupEgress {toPort = Prelude.pure newValue, ..}