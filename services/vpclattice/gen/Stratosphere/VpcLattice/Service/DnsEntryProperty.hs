module Stratosphere.VpcLattice.Service.DnsEntryProperty (
        DnsEntryProperty(..), mkDnsEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DnsEntryProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-service-dnsentry.html>
    DnsEntryProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-service-dnsentry.html#cfn-vpclattice-service-dnsentry-domainname>
                      domainName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-service-dnsentry.html#cfn-vpclattice-service-dnsentry-hostedzoneid>
                      hostedZoneId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDnsEntryProperty :: DnsEntryProperty
mkDnsEntryProperty
  = DnsEntryProperty
      {domainName = Prelude.Nothing, hostedZoneId = Prelude.Nothing}
instance ToResourceProperties DnsEntryProperty where
  toResourceProperties DnsEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Service.DnsEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "HostedZoneId" Prelude.<$> hostedZoneId])}
instance JSON.ToJSON DnsEntryProperty where
  toJSON DnsEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "HostedZoneId" Prelude.<$> hostedZoneId]))
instance Property "DomainName" DnsEntryProperty where
  type PropertyType "DomainName" DnsEntryProperty = Value Prelude.Text
  set newValue DnsEntryProperty {..}
    = DnsEntryProperty {domainName = Prelude.pure newValue, ..}
instance Property "HostedZoneId" DnsEntryProperty where
  type PropertyType "HostedZoneId" DnsEntryProperty = Value Prelude.Text
  set newValue DnsEntryProperty {..}
    = DnsEntryProperty {hostedZoneId = Prelude.pure newValue, ..}