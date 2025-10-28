module Stratosphere.VpcLattice.Service (
        module Exports, Service(..), mkService
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Service.DnsEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Service
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-service.html>
    Service {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-service.html#cfn-vpclattice-service-authtype>
             authType :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-service.html#cfn-vpclattice-service-certificatearn>
             certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-service.html#cfn-vpclattice-service-customdomainname>
             customDomainName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-service.html#cfn-vpclattice-service-dnsentry>
             dnsEntry :: (Prelude.Maybe DnsEntryProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-service.html#cfn-vpclattice-service-name>
             name :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-service.html#cfn-vpclattice-service-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkService :: Service
mkService
  = Service
      {haddock_workaround_ = (), authType = Prelude.Nothing,
       certificateArn = Prelude.Nothing,
       customDomainName = Prelude.Nothing, dnsEntry = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Service where
  toResourceProperties Service {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Service", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthType" Prelude.<$> authType,
                            (JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                            (JSON..=) "CustomDomainName" Prelude.<$> customDomainName,
                            (JSON..=) "DnsEntry" Prelude.<$> dnsEntry,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Service where
  toJSON Service {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthType" Prelude.<$> authType,
               (JSON..=) "CertificateArn" Prelude.<$> certificateArn,
               (JSON..=) "CustomDomainName" Prelude.<$> customDomainName,
               (JSON..=) "DnsEntry" Prelude.<$> dnsEntry,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AuthType" Service where
  type PropertyType "AuthType" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {authType = Prelude.pure newValue, ..}
instance Property "CertificateArn" Service where
  type PropertyType "CertificateArn" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {certificateArn = Prelude.pure newValue, ..}
instance Property "CustomDomainName" Service where
  type PropertyType "CustomDomainName" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {customDomainName = Prelude.pure newValue, ..}
instance Property "DnsEntry" Service where
  type PropertyType "DnsEntry" Service = DnsEntryProperty
  set newValue Service {..}
    = Service {dnsEntry = Prelude.pure newValue, ..}
instance Property "Name" Service where
  type PropertyType "Name" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {name = Prelude.pure newValue, ..}
instance Property "Tags" Service where
  type PropertyType "Tags" Service = [Tag]
  set newValue Service {..}
    = Service {tags = Prelude.pure newValue, ..}