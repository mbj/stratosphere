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
  = ServiceNetworkServiceAssociation {dnsEntry :: (Prelude.Maybe DnsEntryProperty),
                                      serviceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                      serviceNetworkIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                      tags :: (Prelude.Maybe [Tag])}
mkServiceNetworkServiceAssociation ::
  ServiceNetworkServiceAssociation
mkServiceNetworkServiceAssociation
  = ServiceNetworkServiceAssociation
      {dnsEntry = Prelude.Nothing, serviceIdentifier = Prelude.Nothing,
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