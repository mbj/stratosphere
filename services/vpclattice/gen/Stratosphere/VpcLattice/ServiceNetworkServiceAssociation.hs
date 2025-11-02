module Stratosphere.VpcLattice.ServiceNetworkServiceAssociation (
        module Exports, ServiceNetworkServiceAssociation(..),
        mkServiceNetworkServiceAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.ServiceNetworkServiceAssociation.DnsEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ServiceNetworkServiceAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkserviceassociation.html>
    ServiceNetworkServiceAssociation {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkserviceassociation.html#cfn-vpclattice-servicenetworkserviceassociation-dnsentry>
                                      dnsEntry :: (Prelude.Maybe DnsEntryProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkserviceassociation.html#cfn-vpclattice-servicenetworkserviceassociation-serviceidentifier>
                                      serviceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkserviceassociation.html#cfn-vpclattice-servicenetworkserviceassociation-servicenetworkidentifier>
                                      serviceNetworkIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkserviceassociation.html#cfn-vpclattice-servicenetworkserviceassociation-tags>
                                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceNetworkServiceAssociation ::
  ServiceNetworkServiceAssociation
mkServiceNetworkServiceAssociation
  = ServiceNetworkServiceAssociation
      {haddock_workaround_ = (), dnsEntry = Prelude.Nothing,
       serviceIdentifier = Prelude.Nothing,
       serviceNetworkIdentifier = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ServiceNetworkServiceAssociation where
  toResourceProperties ServiceNetworkServiceAssociation {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::ServiceNetworkServiceAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DnsEntry" Prelude.<$> dnsEntry,
                            (JSON..=) "ServiceIdentifier" Prelude.<$> serviceIdentifier,
                            (JSON..=) "ServiceNetworkIdentifier"
                              Prelude.<$> serviceNetworkIdentifier,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ServiceNetworkServiceAssociation where
  toJSON ServiceNetworkServiceAssociation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DnsEntry" Prelude.<$> dnsEntry,
               (JSON..=) "ServiceIdentifier" Prelude.<$> serviceIdentifier,
               (JSON..=) "ServiceNetworkIdentifier"
                 Prelude.<$> serviceNetworkIdentifier,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DnsEntry" ServiceNetworkServiceAssociation where
  type PropertyType "DnsEntry" ServiceNetworkServiceAssociation = DnsEntryProperty
  set newValue ServiceNetworkServiceAssociation {..}
    = ServiceNetworkServiceAssociation
        {dnsEntry = Prelude.pure newValue, ..}
instance Property "ServiceIdentifier" ServiceNetworkServiceAssociation where
  type PropertyType "ServiceIdentifier" ServiceNetworkServiceAssociation = Value Prelude.Text
  set newValue ServiceNetworkServiceAssociation {..}
    = ServiceNetworkServiceAssociation
        {serviceIdentifier = Prelude.pure newValue, ..}
instance Property "ServiceNetworkIdentifier" ServiceNetworkServiceAssociation where
  type PropertyType "ServiceNetworkIdentifier" ServiceNetworkServiceAssociation = Value Prelude.Text
  set newValue ServiceNetworkServiceAssociation {..}
    = ServiceNetworkServiceAssociation
        {serviceNetworkIdentifier = Prelude.pure newValue, ..}
instance Property "Tags" ServiceNetworkServiceAssociation where
  type PropertyType "Tags" ServiceNetworkServiceAssociation = [Tag]
  set newValue ServiceNetworkServiceAssociation {..}
    = ServiceNetworkServiceAssociation
        {tags = Prelude.pure newValue, ..}