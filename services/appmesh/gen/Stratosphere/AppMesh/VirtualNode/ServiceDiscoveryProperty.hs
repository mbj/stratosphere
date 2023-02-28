module Stratosphere.AppMesh.VirtualNode.ServiceDiscoveryProperty (
        module Exports, ServiceDiscoveryProperty(..),
        mkServiceDiscoveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.AwsCloudMapServiceDiscoveryProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.DnsServiceDiscoveryProperty as Exports
import Stratosphere.ResourceProperties
data ServiceDiscoveryProperty
  = ServiceDiscoveryProperty {aWSCloudMap :: (Prelude.Maybe AwsCloudMapServiceDiscoveryProperty),
                              dNS :: (Prelude.Maybe DnsServiceDiscoveryProperty)}
mkServiceDiscoveryProperty :: ServiceDiscoveryProperty
mkServiceDiscoveryProperty
  = ServiceDiscoveryProperty
      {aWSCloudMap = Prelude.Nothing, dNS = Prelude.Nothing}
instance ToResourceProperties ServiceDiscoveryProperty where
  toResourceProperties ServiceDiscoveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ServiceDiscovery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AWSCloudMap" Prelude.<$> aWSCloudMap,
                            (JSON..=) "DNS" Prelude.<$> dNS])}
instance JSON.ToJSON ServiceDiscoveryProperty where
  toJSON ServiceDiscoveryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AWSCloudMap" Prelude.<$> aWSCloudMap,
               (JSON..=) "DNS" Prelude.<$> dNS]))
instance Property "AWSCloudMap" ServiceDiscoveryProperty where
  type PropertyType "AWSCloudMap" ServiceDiscoveryProperty = AwsCloudMapServiceDiscoveryProperty
  set newValue ServiceDiscoveryProperty {..}
    = ServiceDiscoveryProperty
        {aWSCloudMap = Prelude.pure newValue, ..}
instance Property "DNS" ServiceDiscoveryProperty where
  type PropertyType "DNS" ServiceDiscoveryProperty = DnsServiceDiscoveryProperty
  set newValue ServiceDiscoveryProperty {..}
    = ServiceDiscoveryProperty {dNS = Prelude.pure newValue, ..}