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
  = DHCPOptions {domainName :: (Prelude.Maybe (Value Prelude.Text)),
                 domainNameServers :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                 netbiosNameServers :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                 netbiosNodeType :: (Prelude.Maybe (Value Prelude.Integer)),
                 ntpServers :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                 tags :: (Prelude.Maybe [Tag])}
mkDHCPOptions :: DHCPOptions
mkDHCPOptions
  = DHCPOptions
      {domainName = Prelude.Nothing, domainNameServers = Prelude.Nothing,
       netbiosNameServers = Prelude.Nothing,
       netbiosNodeType = Prelude.Nothing, ntpServers = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DHCPOptions where
  toResourceProperties DHCPOptions {..}
    = ResourceProperties
        {awsType = "AWS::EC2::DHCPOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "DomainNameServers" Prelude.<$> domainNameServers,
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
               (JSON..=) "NetbiosNameServers" Prelude.<$> netbiosNameServers,
               (JSON..=) "NetbiosNodeType" Prelude.<$> netbiosNodeType,
               (JSON..=) "NtpServers" Prelude.<$> ntpServers,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DomainName" DHCPOptions where
  type PropertyType "DomainName" DHCPOptions = Value Prelude.Text
  set newValue DHCPOptions {..}
    = DHCPOptions {domainName = Prelude.pure newValue, ..}
instance Property "DomainNameServers" DHCPOptions where
  type PropertyType "DomainNameServers" DHCPOptions = ValueList (Value Prelude.Text)
  set newValue DHCPOptions {..}
    = DHCPOptions {domainNameServers = Prelude.pure newValue, ..}
instance Property "NetbiosNameServers" DHCPOptions where
  type PropertyType "NetbiosNameServers" DHCPOptions = ValueList (Value Prelude.Text)
  set newValue DHCPOptions {..}
    = DHCPOptions {netbiosNameServers = Prelude.pure newValue, ..}
instance Property "NetbiosNodeType" DHCPOptions where
  type PropertyType "NetbiosNodeType" DHCPOptions = Value Prelude.Integer
  set newValue DHCPOptions {..}
    = DHCPOptions {netbiosNodeType = Prelude.pure newValue, ..}
instance Property "NtpServers" DHCPOptions where
  type PropertyType "NtpServers" DHCPOptions = ValueList (Value Prelude.Text)
  set newValue DHCPOptions {..}
    = DHCPOptions {ntpServers = Prelude.pure newValue, ..}
instance Property "Tags" DHCPOptions where
  type PropertyType "Tags" DHCPOptions = [Tag]
  set newValue DHCPOptions {..}
    = DHCPOptions {tags = Prelude.pure newValue, ..}