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
  = NetworkAclEntry {cidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
                     egress :: (Prelude.Maybe (Value Prelude.Bool)),
                     icmp :: (Prelude.Maybe IcmpProperty),
                     ipv6CidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
                     networkAclId :: (Value Prelude.Text),
                     portRange :: (Prelude.Maybe PortRangeProperty),
                     protocol :: (Value Prelude.Integer),
                     ruleAction :: (Value Prelude.Text),
                     ruleNumber :: (Value Prelude.Integer)}
mkNetworkAclEntry ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text -> Value Prelude.Integer -> NetworkAclEntry
mkNetworkAclEntry networkAclId protocol ruleAction ruleNumber
  = NetworkAclEntry
      {networkAclId = networkAclId, protocol = protocol,
       ruleAction = ruleAction, ruleNumber = ruleNumber,
       cidrBlock = Prelude.Nothing, egress = Prelude.Nothing,
       icmp = Prelude.Nothing, ipv6CidrBlock = Prelude.Nothing,
       portRange = Prelude.Nothing}
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