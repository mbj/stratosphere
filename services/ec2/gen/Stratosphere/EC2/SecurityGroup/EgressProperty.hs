module Stratosphere.EC2.SecurityGroup.EgressProperty (
        EgressProperty(..), mkEgressProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EgressProperty
  = EgressProperty {cidrIp :: (Prelude.Maybe (Value Prelude.Text)),
                    cidrIpv6 :: (Prelude.Maybe (Value Prelude.Text)),
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    destinationPrefixListId :: (Prelude.Maybe (Value Prelude.Text)),
                    destinationSecurityGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                    fromPort :: (Prelude.Maybe (Value Prelude.Integer)),
                    ipProtocol :: (Value Prelude.Text),
                    toPort :: (Prelude.Maybe (Value Prelude.Integer))}
mkEgressProperty :: Value Prelude.Text -> EgressProperty
mkEgressProperty ipProtocol
  = EgressProperty
      {ipProtocol = ipProtocol, cidrIp = Prelude.Nothing,
       cidrIpv6 = Prelude.Nothing, description = Prelude.Nothing,
       destinationPrefixListId = Prelude.Nothing,
       destinationSecurityGroupId = Prelude.Nothing,
       fromPort = Prelude.Nothing, toPort = Prelude.Nothing}
instance ToResourceProperties EgressProperty where
  toResourceProperties EgressProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SecurityGroup.Egress",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpProtocol" JSON..= ipProtocol]
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
instance JSON.ToJSON EgressProperty where
  toJSON EgressProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpProtocol" JSON..= ipProtocol]
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
instance Property "CidrIp" EgressProperty where
  type PropertyType "CidrIp" EgressProperty = Value Prelude.Text
  set newValue EgressProperty {..}
    = EgressProperty {cidrIp = Prelude.pure newValue, ..}
instance Property "CidrIpv6" EgressProperty where
  type PropertyType "CidrIpv6" EgressProperty = Value Prelude.Text
  set newValue EgressProperty {..}
    = EgressProperty {cidrIpv6 = Prelude.pure newValue, ..}
instance Property "Description" EgressProperty where
  type PropertyType "Description" EgressProperty = Value Prelude.Text
  set newValue EgressProperty {..}
    = EgressProperty {description = Prelude.pure newValue, ..}
instance Property "DestinationPrefixListId" EgressProperty where
  type PropertyType "DestinationPrefixListId" EgressProperty = Value Prelude.Text
  set newValue EgressProperty {..}
    = EgressProperty
        {destinationPrefixListId = Prelude.pure newValue, ..}
instance Property "DestinationSecurityGroupId" EgressProperty where
  type PropertyType "DestinationSecurityGroupId" EgressProperty = Value Prelude.Text
  set newValue EgressProperty {..}
    = EgressProperty
        {destinationSecurityGroupId = Prelude.pure newValue, ..}
instance Property "FromPort" EgressProperty where
  type PropertyType "FromPort" EgressProperty = Value Prelude.Integer
  set newValue EgressProperty {..}
    = EgressProperty {fromPort = Prelude.pure newValue, ..}
instance Property "IpProtocol" EgressProperty where
  type PropertyType "IpProtocol" EgressProperty = Value Prelude.Text
  set newValue EgressProperty {..}
    = EgressProperty {ipProtocol = newValue, ..}
instance Property "ToPort" EgressProperty where
  type PropertyType "ToPort" EgressProperty = Value Prelude.Integer
  set newValue EgressProperty {..}
    = EgressProperty {toPort = Prelude.pure newValue, ..}