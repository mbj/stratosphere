module Stratosphere.VpcLattice.ResourceConfiguration.DnsResourceProperty (
        DnsResourceProperty(..), mkDnsResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DnsResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-resourceconfiguration-dnsresource.html>
    DnsResourceProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-resourceconfiguration-dnsresource.html#cfn-vpclattice-resourceconfiguration-dnsresource-domainname>
                         domainName :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-resourceconfiguration-dnsresource.html#cfn-vpclattice-resourceconfiguration-dnsresource-ipaddresstype>
                         ipAddressType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDnsResourceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DnsResourceProperty
mkDnsResourceProperty domainName ipAddressType
  = DnsResourceProperty
      {haddock_workaround_ = (), domainName = domainName,
       ipAddressType = ipAddressType}
instance ToResourceProperties DnsResourceProperty where
  toResourceProperties DnsResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::ResourceConfiguration.DnsResource",
         supportsTags = Prelude.False,
         properties = ["DomainName" JSON..= domainName,
                       "IpAddressType" JSON..= ipAddressType]}
instance JSON.ToJSON DnsResourceProperty where
  toJSON DnsResourceProperty {..}
    = JSON.object
        ["DomainName" JSON..= domainName,
         "IpAddressType" JSON..= ipAddressType]
instance Property "DomainName" DnsResourceProperty where
  type PropertyType "DomainName" DnsResourceProperty = Value Prelude.Text
  set newValue DnsResourceProperty {..}
    = DnsResourceProperty {domainName = newValue, ..}
instance Property "IpAddressType" DnsResourceProperty where
  type PropertyType "IpAddressType" DnsResourceProperty = Value Prelude.Text
  set newValue DnsResourceProperty {..}
    = DnsResourceProperty {ipAddressType = newValue, ..}