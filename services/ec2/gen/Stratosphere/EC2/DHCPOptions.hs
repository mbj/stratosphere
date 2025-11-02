module Stratosphere.EC2.DHCPOptions (
        DHCPOptions(..), mkDHCPOptions
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DHCPOptions
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcpoptions.html>
    DHCPOptions {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcpoptions.html#cfn-ec2-dhcpoptions-domainname>
                 domainName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcpoptions.html#cfn-ec2-dhcpoptions-domainnameservers>
                 domainNameServers :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcpoptions.html#cfn-ec2-dhcpoptions-ipv6addresspreferredleasetime>
                 ipv6AddressPreferredLeaseTime :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcpoptions.html#cfn-ec2-dhcpoptions-netbiosnameservers>
                 netbiosNameServers :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcpoptions.html#cfn-ec2-dhcpoptions-netbiosnodetype>
                 netbiosNodeType :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcpoptions.html#cfn-ec2-dhcpoptions-ntpservers>
                 ntpServers :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcpoptions.html#cfn-ec2-dhcpoptions-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDHCPOptions :: DHCPOptions
mkDHCPOptions
  = DHCPOptions
      {haddock_workaround_ = (), domainName = Prelude.Nothing,
       domainNameServers = Prelude.Nothing,
       ipv6AddressPreferredLeaseTime = Prelude.Nothing,
       netbiosNameServers = Prelude.Nothing,
       netbiosNodeType = Prelude.Nothing, ntpServers = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DHCPOptions where
  toResourceProperties DHCPOptions {..}
    = ResourceProperties
        {awsType = "AWS::EC2::DHCPOptions", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "DomainNameServers" Prelude.<$> domainNameServers,
                            (JSON..=) "Ipv6AddressPreferredLeaseTime"
                              Prelude.<$> ipv6AddressPreferredLeaseTime,
                            (JSON..=) "NetbiosNameServers" Prelude.<$> netbiosNameServers,
                            (JSON..=) "NetbiosNodeType" Prelude.<$> netbiosNodeType,
                            (JSON..=) "NtpServers" Prelude.<$> ntpServers,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON DHCPOptions where
  toJSON DHCPOptions {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "DomainNameServers" Prelude.<$> domainNameServers,
               (JSON..=) "Ipv6AddressPreferredLeaseTime"
                 Prelude.<$> ipv6AddressPreferredLeaseTime,
               (JSON..=) "NetbiosNameServers" Prelude.<$> netbiosNameServers,
               (JSON..=) "NetbiosNodeType" Prelude.<$> netbiosNodeType,
               (JSON..=) "NtpServers" Prelude.<$> ntpServers,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DomainName" DHCPOptions where
  type PropertyType "DomainName" DHCPOptions = Value Prelude.Text
  set newValue DHCPOptions {..}
    = DHCPOptions {domainName = Prelude.pure newValue, ..}
instance Property "DomainNameServers" DHCPOptions where
  type PropertyType "DomainNameServers" DHCPOptions = ValueList Prelude.Text
  set newValue DHCPOptions {..}
    = DHCPOptions {domainNameServers = Prelude.pure newValue, ..}
instance Property "Ipv6AddressPreferredLeaseTime" DHCPOptions where
  type PropertyType "Ipv6AddressPreferredLeaseTime" DHCPOptions = Value Prelude.Integer
  set newValue DHCPOptions {..}
    = DHCPOptions
        {ipv6AddressPreferredLeaseTime = Prelude.pure newValue, ..}
instance Property "NetbiosNameServers" DHCPOptions where
  type PropertyType "NetbiosNameServers" DHCPOptions = ValueList Prelude.Text
  set newValue DHCPOptions {..}
    = DHCPOptions {netbiosNameServers = Prelude.pure newValue, ..}
instance Property "NetbiosNodeType" DHCPOptions where
  type PropertyType "NetbiosNodeType" DHCPOptions = Value Prelude.Integer
  set newValue DHCPOptions {..}
    = DHCPOptions {netbiosNodeType = Prelude.pure newValue, ..}
instance Property "NtpServers" DHCPOptions where
  type PropertyType "NtpServers" DHCPOptions = ValueList Prelude.Text
  set newValue DHCPOptions {..}
    = DHCPOptions {ntpServers = Prelude.pure newValue, ..}
instance Property "Tags" DHCPOptions where
  type PropertyType "Tags" DHCPOptions = [Tag]
  set newValue DHCPOptions {..}
    = DHCPOptions {tags = Prelude.pure newValue, ..}