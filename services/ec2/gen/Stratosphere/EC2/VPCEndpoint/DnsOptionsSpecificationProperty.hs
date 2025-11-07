module Stratosphere.EC2.VPCEndpoint.DnsOptionsSpecificationProperty (
        DnsOptionsSpecificationProperty(..),
        mkDnsOptionsSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DnsOptionsSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcendpoint-dnsoptionsspecification.html>
    DnsOptionsSpecificationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcendpoint-dnsoptionsspecification.html#cfn-ec2-vpcendpoint-dnsoptionsspecification-dnsrecordiptype>
                                     dnsRecordIpType :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcendpoint-dnsoptionsspecification.html#cfn-ec2-vpcendpoint-dnsoptionsspecification-privatednsonlyforinboundresolverendpoint>
                                     privateDnsOnlyForInboundResolverEndpoint :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDnsOptionsSpecificationProperty ::
  DnsOptionsSpecificationProperty
mkDnsOptionsSpecificationProperty
  = DnsOptionsSpecificationProperty
      {haddock_workaround_ = (), dnsRecordIpType = Prelude.Nothing,
       privateDnsOnlyForInboundResolverEndpoint = Prelude.Nothing}
instance ToResourceProperties DnsOptionsSpecificationProperty where
  toResourceProperties DnsOptionsSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCEndpoint.DnsOptionsSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DnsRecordIpType" Prelude.<$> dnsRecordIpType,
                            (JSON..=) "PrivateDnsOnlyForInboundResolverEndpoint"
                              Prelude.<$> privateDnsOnlyForInboundResolverEndpoint])}
instance JSON.ToJSON DnsOptionsSpecificationProperty where
  toJSON DnsOptionsSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DnsRecordIpType" Prelude.<$> dnsRecordIpType,
               (JSON..=) "PrivateDnsOnlyForInboundResolverEndpoint"
                 Prelude.<$> privateDnsOnlyForInboundResolverEndpoint]))
instance Property "DnsRecordIpType" DnsOptionsSpecificationProperty where
  type PropertyType "DnsRecordIpType" DnsOptionsSpecificationProperty = Value Prelude.Text
  set newValue DnsOptionsSpecificationProperty {..}
    = DnsOptionsSpecificationProperty
        {dnsRecordIpType = Prelude.pure newValue, ..}
instance Property "PrivateDnsOnlyForInboundResolverEndpoint" DnsOptionsSpecificationProperty where
  type PropertyType "PrivateDnsOnlyForInboundResolverEndpoint" DnsOptionsSpecificationProperty = Value Prelude.Text
  set newValue DnsOptionsSpecificationProperty {..}
    = DnsOptionsSpecificationProperty
        {privateDnsOnlyForInboundResolverEndpoint = Prelude.pure newValue,
         ..}