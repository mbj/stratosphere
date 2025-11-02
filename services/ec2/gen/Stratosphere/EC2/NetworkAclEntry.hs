module Stratosphere.EC2.NetworkAclEntry (
        module Exports, NetworkAclEntry(..), mkNetworkAclEntry
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkAclEntry.IcmpProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkAclEntry.PortRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkAclEntry
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkaclentry.html>
    NetworkAclEntry {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkaclentry.html#cfn-ec2-networkaclentry-cidrblock>
                     cidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkaclentry.html#cfn-ec2-networkaclentry-egress>
                     egress :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkaclentry.html#cfn-ec2-networkaclentry-icmp>
                     icmp :: (Prelude.Maybe IcmpProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkaclentry.html#cfn-ec2-networkaclentry-ipv6cidrblock>
                     ipv6CidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkaclentry.html#cfn-ec2-networkaclentry-networkaclid>
                     networkAclId :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkaclentry.html#cfn-ec2-networkaclentry-portrange>
                     portRange :: (Prelude.Maybe PortRangeProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkaclentry.html#cfn-ec2-networkaclentry-protocol>
                     protocol :: (Value Prelude.Integer),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkaclentry.html#cfn-ec2-networkaclentry-ruleaction>
                     ruleAction :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkaclentry.html#cfn-ec2-networkaclentry-rulenumber>
                     ruleNumber :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkAclEntry ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text -> Value Prelude.Integer -> NetworkAclEntry
mkNetworkAclEntry networkAclId protocol ruleAction ruleNumber
  = NetworkAclEntry
      {haddock_workaround_ = (), networkAclId = networkAclId,
       protocol = protocol, ruleAction = ruleAction,
       ruleNumber = ruleNumber, cidrBlock = Prelude.Nothing,
       egress = Prelude.Nothing, icmp = Prelude.Nothing,
       ipv6CidrBlock = Prelude.Nothing, portRange = Prelude.Nothing}
instance ToResourceProperties NetworkAclEntry where
  toResourceProperties NetworkAclEntry {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkAclEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NetworkAclId" JSON..= networkAclId, "Protocol" JSON..= protocol,
                            "RuleAction" JSON..= ruleAction, "RuleNumber" JSON..= ruleNumber]
                           (Prelude.catMaybes
                              [(JSON..=) "CidrBlock" Prelude.<$> cidrBlock,
                               (JSON..=) "Egress" Prelude.<$> egress,
                               (JSON..=) "Icmp" Prelude.<$> icmp,
                               (JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                               (JSON..=) "PortRange" Prelude.<$> portRange]))}
instance JSON.ToJSON NetworkAclEntry where
  toJSON NetworkAclEntry {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NetworkAclId" JSON..= networkAclId, "Protocol" JSON..= protocol,
               "RuleAction" JSON..= ruleAction, "RuleNumber" JSON..= ruleNumber]
              (Prelude.catMaybes
                 [(JSON..=) "CidrBlock" Prelude.<$> cidrBlock,
                  (JSON..=) "Egress" Prelude.<$> egress,
                  (JSON..=) "Icmp" Prelude.<$> icmp,
                  (JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                  (JSON..=) "PortRange" Prelude.<$> portRange])))
instance Property "CidrBlock" NetworkAclEntry where
  type PropertyType "CidrBlock" NetworkAclEntry = Value Prelude.Text
  set newValue NetworkAclEntry {..}
    = NetworkAclEntry {cidrBlock = Prelude.pure newValue, ..}
instance Property "Egress" NetworkAclEntry where
  type PropertyType "Egress" NetworkAclEntry = Value Prelude.Bool
  set newValue NetworkAclEntry {..}
    = NetworkAclEntry {egress = Prelude.pure newValue, ..}
instance Property "Icmp" NetworkAclEntry where
  type PropertyType "Icmp" NetworkAclEntry = IcmpProperty
  set newValue NetworkAclEntry {..}
    = NetworkAclEntry {icmp = Prelude.pure newValue, ..}
instance Property "Ipv6CidrBlock" NetworkAclEntry where
  type PropertyType "Ipv6CidrBlock" NetworkAclEntry = Value Prelude.Text
  set newValue NetworkAclEntry {..}
    = NetworkAclEntry {ipv6CidrBlock = Prelude.pure newValue, ..}
instance Property "NetworkAclId" NetworkAclEntry where
  type PropertyType "NetworkAclId" NetworkAclEntry = Value Prelude.Text
  set newValue NetworkAclEntry {..}
    = NetworkAclEntry {networkAclId = newValue, ..}
instance Property "PortRange" NetworkAclEntry where
  type PropertyType "PortRange" NetworkAclEntry = PortRangeProperty
  set newValue NetworkAclEntry {..}
    = NetworkAclEntry {portRange = Prelude.pure newValue, ..}
instance Property "Protocol" NetworkAclEntry where
  type PropertyType "Protocol" NetworkAclEntry = Value Prelude.Integer
  set newValue NetworkAclEntry {..}
    = NetworkAclEntry {protocol = newValue, ..}
instance Property "RuleAction" NetworkAclEntry where
  type PropertyType "RuleAction" NetworkAclEntry = Value Prelude.Text
  set newValue NetworkAclEntry {..}
    = NetworkAclEntry {ruleAction = newValue, ..}
instance Property "RuleNumber" NetworkAclEntry where
  type PropertyType "RuleNumber" NetworkAclEntry = Value Prelude.Integer
  set newValue NetworkAclEntry {..}
    = NetworkAclEntry {ruleNumber = newValue, ..}