module Stratosphere.FMS.Policy.NetworkAclEntryProperty (
        module Exports, NetworkAclEntryProperty(..),
        mkNetworkAclEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FMS.Policy.IcmpTypeCodeProperty as Exports
import {-# SOURCE #-} Stratosphere.FMS.Policy.PortRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkAclEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclentry.html>
    NetworkAclEntryProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclentry.html#cfn-fms-policy-networkaclentry-cidrblock>
                             cidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclentry.html#cfn-fms-policy-networkaclentry-egress>
                             egress :: (Value Prelude.Bool),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclentry.html#cfn-fms-policy-networkaclentry-icmptypecode>
                             icmpTypeCode :: (Prelude.Maybe IcmpTypeCodeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclentry.html#cfn-fms-policy-networkaclentry-ipv6cidrblock>
                             ipv6CidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclentry.html#cfn-fms-policy-networkaclentry-portrange>
                             portRange :: (Prelude.Maybe PortRangeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclentry.html#cfn-fms-policy-networkaclentry-protocol>
                             protocol :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclentry.html#cfn-fms-policy-networkaclentry-ruleaction>
                             ruleAction :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkAclEntryProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text
     -> Value Prelude.Text -> NetworkAclEntryProperty
mkNetworkAclEntryProperty egress protocol ruleAction
  = NetworkAclEntryProperty
      {haddock_workaround_ = (), egress = egress, protocol = protocol,
       ruleAction = ruleAction, cidrBlock = Prelude.Nothing,
       icmpTypeCode = Prelude.Nothing, ipv6CidrBlock = Prelude.Nothing,
       portRange = Prelude.Nothing}
instance ToResourceProperties NetworkAclEntryProperty where
  toResourceProperties NetworkAclEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.NetworkAclEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Egress" JSON..= egress, "Protocol" JSON..= protocol,
                            "RuleAction" JSON..= ruleAction]
                           (Prelude.catMaybes
                              [(JSON..=) "CidrBlock" Prelude.<$> cidrBlock,
                               (JSON..=) "IcmpTypeCode" Prelude.<$> icmpTypeCode,
                               (JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                               (JSON..=) "PortRange" Prelude.<$> portRange]))}
instance JSON.ToJSON NetworkAclEntryProperty where
  toJSON NetworkAclEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Egress" JSON..= egress, "Protocol" JSON..= protocol,
               "RuleAction" JSON..= ruleAction]
              (Prelude.catMaybes
                 [(JSON..=) "CidrBlock" Prelude.<$> cidrBlock,
                  (JSON..=) "IcmpTypeCode" Prelude.<$> icmpTypeCode,
                  (JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                  (JSON..=) "PortRange" Prelude.<$> portRange])))
instance Property "CidrBlock" NetworkAclEntryProperty where
  type PropertyType "CidrBlock" NetworkAclEntryProperty = Value Prelude.Text
  set newValue NetworkAclEntryProperty {..}
    = NetworkAclEntryProperty {cidrBlock = Prelude.pure newValue, ..}
instance Property "Egress" NetworkAclEntryProperty where
  type PropertyType "Egress" NetworkAclEntryProperty = Value Prelude.Bool
  set newValue NetworkAclEntryProperty {..}
    = NetworkAclEntryProperty {egress = newValue, ..}
instance Property "IcmpTypeCode" NetworkAclEntryProperty where
  type PropertyType "IcmpTypeCode" NetworkAclEntryProperty = IcmpTypeCodeProperty
  set newValue NetworkAclEntryProperty {..}
    = NetworkAclEntryProperty
        {icmpTypeCode = Prelude.pure newValue, ..}
instance Property "Ipv6CidrBlock" NetworkAclEntryProperty where
  type PropertyType "Ipv6CidrBlock" NetworkAclEntryProperty = Value Prelude.Text
  set newValue NetworkAclEntryProperty {..}
    = NetworkAclEntryProperty
        {ipv6CidrBlock = Prelude.pure newValue, ..}
instance Property "PortRange" NetworkAclEntryProperty where
  type PropertyType "PortRange" NetworkAclEntryProperty = PortRangeProperty
  set newValue NetworkAclEntryProperty {..}
    = NetworkAclEntryProperty {portRange = Prelude.pure newValue, ..}
instance Property "Protocol" NetworkAclEntryProperty where
  type PropertyType "Protocol" NetworkAclEntryProperty = Value Prelude.Text
  set newValue NetworkAclEntryProperty {..}
    = NetworkAclEntryProperty {protocol = newValue, ..}
instance Property "RuleAction" NetworkAclEntryProperty where
  type PropertyType "RuleAction" NetworkAclEntryProperty = Value Prelude.Text
  set newValue NetworkAclEntryProperty {..}
    = NetworkAclEntryProperty {ruleAction = newValue, ..}